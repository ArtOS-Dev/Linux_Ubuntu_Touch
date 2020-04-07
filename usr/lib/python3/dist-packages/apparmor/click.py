# ------------------------------------------------------------------
#
#    Copyright (C) 2013-2015 Canonical Ltd.
#
#    This program is free software; you can redistribute it and/or
#    modify it under the terms of version 2 of the GNU General Public
#    License published by the Free Software Foundation.
#
# ------------------------------------------------------------------

# from __future__ import with_statement

import apparmor.easyprof
from apparmor.common import AppArmorException, open_file_read
import ctypes
import errno
import json
import os
import re
import shutil
import sys
import tempfile

#  set to True if mocking test environment
mock_testenv = False

#
# IMPORTANT: see end of this file for changing various default settings
#


class AppArmorExceptionClickInvalidPolicyVersion(AppArmorException):
    pass


class AppArmorExceptionClickFrameworkNotFound(AppArmorException):
    pass


class AppArmorExceptionClickDatabaseNotFound(AppArmorException):
    pass


#
# TODO: move these out to a utilities library
#
apparmor_fs = "/sys/kernel/security/apparmor"

click_databases = None


# IMPORTANT: only raise an AppArmorException if AppArmor is not available,
#            not on other errors
def apparmor_available(parser="/sbin/apparmor_parser", apparmor_dirs=None):
    '''Is AppArmor available for use on this system'''
    dirs = apparmor_dirs
    if dirs is None:
        dirs = ['/sys/module/apparmor', apparmor_fs]

    for d in dirs:
        if mock_testenv and apparmor_dirs is None:  # pragma: no cover
            break
        if not os.path.isdir(d):
            raise AppArmorException("Could not find '%s'" % d)

    if not os.path.exists(parser):  # pragma: no cover
        rc, parser = apparmor.easyprof.cmd(['which', 'apparmor_parser'])
        if rc != 0:
            raise AppArmorException("Could not find apparmor_parser")


def error(out, exit_code=1, do_exit=True):
    '''Print error message and exit'''
    try:  # pragma: no cover
        sys.stderr.write("ERROR: %s\n" % (out))
    except IOError:  # pragma: no cover
        pass

    if do_exit:  # pragma: no cover
        sys.exit(exit_code)


def load_profile(profile, parser="/sbin/apparmor_parser",
                 args=['-r', '--write-cache']):
    '''Load individual profile into the kernel'''

    try:
        apparmor_available(parser)
    except AppArmorException as e:  # pragma: nocover
            raise AppArmorException("%s. Skipping load" % e)

    command = [parser]
    command.extend(args)
    command.append(profile)
    rc, output = apparmor.easyprof.cmd(command)
    if rc != 0:  # pragma: nocover
        raise AppArmorException("policy load failed with exit status %d: %s" %
                                (rc, output))
    return (rc, output)


def load_profiles(profiles, parser="/sbin/apparmor_parser",
                  args=['-r', '--write-cache']):
    '''Load list of profiles into the kernel'''

    # it's possible we can be passed an empty list, be forgiving
    if len(profiles) == 0:
        return (0, [])

    try:
        apparmor_available(parser)
    except AppArmorException as e:  # pragma: no cover
            raise AppArmorException("%s. Skipping load" % e)

    command = [parser]
    command.extend(args)
    command.extend(profiles)
    rc, output = apparmor.easyprof.cmd(command)
    if rc != 0:  # pragma: no cover
        raise AppArmorException("policy load failed with errno %d: %s" %
                                (rc, output))
    return (rc, output)


def _unload_profile(profile):
    '''Unload a profile name (not a filename) from the kernel'''
    apparmor_remove = os.path.join(apparmor_fs, ".remove")
    try:
        with open(apparmor_remove, 'w') as f:
            f.write(profile)
    except (OSError, IOError) as e:
        if e.errno != errno.ENOENT:  # pragma: no cover
            raise


def unload_profile(profile):
    '''Unload a profile name from the kernel'''
    try:
        apparmor_available()
    except AppArmorException as e:  # pragma: no cover
        raise AppArmorException("%s. Skipping unload" % e)

    _unload_profile(profile)


def unload_profiles(profiles):
    '''Unload a list of profile names from the kernel'''
    try:
        apparmor_available()
    except AppArmorException as e:  # pragma: no cover
            raise AppArmorException("%s. Skipping unload" % e)

    for profile in profiles:
        _unload_profile(profile)

#
# End utils
#


def output_policy(easyp, params, count, destdir, force=False, include=[]):
    '''Output policy'''
    policy = easyp.gen_policy(**params)

    # Inject include if it is specified
    if len(include) > 0:
        inject_s = '# injected via click hook'
        for f in include:
            inject_s += '''
  #include "%s"''' % f
        policy = re.sub(r'(\s}\s+)$', '\n  %s\\1' % inject_s, policy)

    out_fn = None
    if not destdir:  # pragma: no cover
        if count:
            sys.stdout.write('### aa-easyprof profile #%d ###\n' % count)
        sys.stdout.write('%s\n' % policy)
        return None
    else:
        if 'profile_name' in params:
            appname = AppName(raw_name=params['profile_name'])
        # elif 'binary' in params:
        #     out_fn = params['binary']
        else:  # pragma: no cover
            raise AppArmorException("Could not determine output filename")

        # Generate an absolute path, converting any path delimiters to '.'
        out_fn = os.path.join(destdir, appname.profile_filename)

        if not os.path.exists(destdir):
            os.mkdir(destdir)

        if not os.path.isdir(destdir):  # pragma: no cover
            raise AppArmorException("'%s' is not a directory" % destdir)

        f, fn = tempfile.mkstemp(prefix='aa-easyprof')
        if not isinstance(policy, bytes):
            policy = policy.encode('utf-8')
        os.write(f, policy)
        os.close(f)

        # Only update if the contents are different
        policy_orig = "".encode('utf-8')
        if not force and os.path.exists(out_fn):
            with open(out_fn) as orig:
                policy_orig = orig.read()
                if not isinstance(policy_orig, bytes):
                    policy_orig = policy_orig.encode('utf-8')

        if force or policy_orig != policy:
            shutil.move(fn, out_fn)
            os.chmod(out_fn, 0o644)
        else:
            os.unlink(fn)

    return out_fn


def walk_up(path):
    while True:
        yield path
        newpath = os.path.dirname(path)
        if newpath == path:  # pragma: no cover
            return
        path = newpath


def get_package_manifest(hooklink, pkg):
    '''Follow a click hook manifest symlink and return the main package
       manifest location.
    '''

    json_dir = os.path.realpath(os.path.normpath(os.path.join(
                                                 os.path.dirname(hooklink),
                                                 os.readlink(hooklink))))
    manifest_name = "%s.manifest" % pkg

    # Walk up the tree to find the .click directory, then grab
    # info/manifest from below that
    for path in walk_up(json_dir):
        info = os.path.join(path, ".click", "info")
        manifest = os.path.join(info, manifest_name)
        if os.path.isdir(info) and os.path.exists(manifest):
            return (manifest, path)

    raise AppArmorException("Could not find click manifest " +
                            "'%s' from symlink '%s'" % (manifest_name,
                                                        hooklink))


def find_usable_framework(framework):
    '''Find usable framework'''
    # snappy supports lists of frameworks in the manifest. Use the first one
    # found for now (this code will be removed after we deprecate the
    # manifest compatibility on snappy).
    for f in framework.split(','):
        try:
            framework = get_framework_base_version(f)
            if framework in framework_transforms:
                return framework
        except AppArmorExceptionClickFrameworkNotFound:
            pass
    raise AppArmorExceptionClickFrameworkNotFound(
        "Could not find usable framework in '%s'" % (framework))


def get_framework_base_version(framework):
    '''Find the base version of a click framework'''
    # TODO: when libclick has the API, use it instead.
    for k in framework_transforms.keys():
        if framework.startswith(k):
            return k
    raise AppArmorExceptionClickFrameworkNotFound("Unknown framework '%s'" %
                                                  framework)


def get_policy_version_for_framework(framework):
    '''Find the policy version for a given framework'''
    framework_base = get_framework_base_version(framework)
    return framework_transforms[framework_base][1]


def read_click_manifest(manifest):
    '''Read click manifest'''
    f = open(manifest, "r", encoding="UTF-8")
    j = json.load(f)
    for field in required_click_fields:
        if field not in j:
            raise AppArmorException("could not find required field " +
                                    "'%s' in json" % (field))
    return j


def read_apparmor_manifest(manifest, app):
    '''Read AppArmor manifest from click package'''
    f = open(manifest, "r", encoding="UTF-8")
    j = json.load(f)
    if (len(j.keys()) == 1) and app in j:
        j = j[app]
    # No fields are actually required, the framework transformation
    # should set sensible defaults if any/all are missing
    return j


class ClickManifest(object):
    def __init__(self, clickhook):
        def get_profile_json(fn, profile_json, app, override_json=None,
                             additional_json=None):
            '''Generate profile json based on merge_json'''
            if override_json is None and additional_json is None:
                return profile_json

            json = profile_json

            keys = ['abstractions', 'policy_groups', 'read_path', 'write_path']
            # Process override after so they override additional too
            for ext in ["additional", "override"]:
                if ext == "additional":
                    tmp_json = additional_json
                else:
                    tmp_json = override_json

                if tmp_json is None:
                    continue

                for key in tmp_json:
                    if key not in keys:
                        # Just report there are unknown keys that we won't
                        # process, but don't fail
                        error("Skipping '%s' in '%s.%s': invalid entry" %
                              (key, os.path.basename(fn), ext), do_exit=False)

                for key in keys:
                    if key not in tmp_json:
                        continue
                    elif not isinstance(tmp_json[key], list):
                        error("Skipping '%s' in '%s.%s': not a list" %
                              (key, os.path.basename(fn), ext), do_exit=False)
                        continue

                    for val in tmp_json[key]:
                        if ext == "additional":
                            if key not in json:
                                json[key] = []
                            while json[key].count(val) < 1:
                                json[key].append(val)
                        elif key in json:  # override
                            while json[key].count(val) > 0:
                                json[key].remove(val)
                        else:
                            error("Skipping '%s' in '%s.%s': does not "
                                  "exist in original" %
                                  (key, os.path.basename(fn), ext),
                                  do_exit=False)

            return json

        (package, app, version) = parse_manifest_name(os.path.basename(
                                                      clickhook))
        (click_manifest, pkg_dir) = get_package_manifest(clickhook, package)
        click_json = read_click_manifest(click_manifest)
        profile_json = read_apparmor_manifest(clickhook, app)

        cdir = os.path.dirname(clickhook)
        over_json = None
        add_json = None
        for ext in ["override", "additional"]:
            # When calculating override or additional access, most specific
            # file match wins. Ie, package_app_version.json.override, then
            # package_app.json.override, then package.json.override.
            for fn in [clickhook,
                       os.path.join(cdir, "%s_%s.json" % (package, app)),
                       os.path.join(cdir, "%s.json" % package)]:
                f = "%s.%s" % (fn, ext)
                if os.path.exists(f):
                    try:
                        if ext == "override":
                            over_json = read_apparmor_manifest(f, app)
                        else:
                            add_json = read_apparmor_manifest(f, app)
                        break
                    except Exception:
                        error("Skipping '%s': %s is malformed" %
                              (os.path.basename(f), ext), do_exit=False)

        # if not package == click_json['name']:
        #     raise AppArmorException("package name '%s' in json doesn't " +
        #                             "match " % (field))

        self.app_pkgname = click_json['name']
        self.app_appname = app
        self.app_version = click_json['version']
        self.framework = find_usable_framework(click_json['framework'])
        self.profiles = dict()
        self.profiles[app] = get_profile_json(clickhook, profile_json,
                                              app, override_json=over_json,
                                              additional_json=add_json)


class EasyprofManifest(object):
    def __init__(self):
        self.manifest = dict()
        self.manifest['profiles'] = dict()

    def add_profile(self, name, profile):
        '''Add profile'''
        self.manifest['profiles'][name] = profile


class AppName(object):
    _CLICK_PREFIX = "click_"
    _CLICK_SUFFIX = ".json"

    '''The AppName is used to keep three different views of the name in sync:
       - click_name: ie, filenames in the hooks directory
       - profile_filename: ie, filenames in the profiles directory
       - profile_name (aka raw_name): ie, the AppArmor profile name as loaded
         into the kernel
    '''

    def __init__(self, click_name=None, profile_filename=None, raw_name=None):
        # Verify valid click tuple name?
        if click_name:
            self.click_name = click_name
        elif profile_filename:
            self.profile_filename = profile_filename
        elif raw_name:
            self._clickname = raw_name
        else:
            raise AppArmorException("AppName object needs an initial value")

    @property
    def click_name(self):
        return "%s%s" % (self._clickname, self._CLICK_SUFFIX)

    @click_name.setter
    def click_name(self, click_name):
        if not click_name.endswith(self._CLICK_SUFFIX):
            raise AppArmorException("invalid click manifest name '%s'" %
                                    (click_name))

        # strip the suffix off
        self._clickname = click_name[:-len(self._CLICK_SUFFIX)]

    @property
    def profile_filename(self):
        return "%s%s" % (self._CLICK_PREFIX, self._clickname)

    @profile_filename.setter
    def profile_filename(self, profile_filename):
        if not profile_filename.startswith(self._CLICK_PREFIX):
            raise AppArmorException("invalid click profile name '%s'" %
                                    (profile_filename))

        # Strip the click prefix off of the string
        self._clickname = profile_filename[len(self._CLICK_PREFIX):]

    @property
    def profile_name(self):
        return "%s" % self._clickname


class EasyprofProfile(object):
    def __init__(self, name):
        self.profile = dict()
        self.profile['template_variables'] = dict()
        self.profile['policy_groups'] = list()
        self.name = name

    def add_variable(self, var_name, var_value):
        self.profile['template_variables'][var_name] = var_value

    def add_policygroup(self, policygroup):
        if policygroup not in self.profile['policy_groups']:
            self.profile['policy_groups'].append(policygroup)

    def add_abstraction(self, abstraction):
        if 'abstractions' not in self.profile:
            self.profile['abstractions'] = list()
        if abstraction not in self.profile['abstractions']:
            self.profile['abstractions'].append(abstraction)

    def add_read_path(self, read_path):
        if 'read_path' not in self.profile:
            self.profile['read_path'] = list()
        if read_path not in self.profile['read_path']:
            self.profile['read_path'].append(read_path)

    def add_write_path(self, write_path):
        if 'write_path' not in self.profile:
            self.profile['write_path'] = list()
        if write_path not in self.profile['write_path']:
            self.profile['write_path'].append(write_path)

    @property
    def template(self):
        if 'template' in self.profile:
            return self.profile['template']
        return None

    @template.setter
    def template(self, template):
        self.profile['template'] = template

    @property
    def policyvendor(self):
        if 'policy_vendor' in self.profile:
            return self.profile['policy_vendor']
        return None

    @policyvendor.setter
    def policyvendor(self, vendor):
        self.profile['policy_vendor'] = vendor

    @property
    def policyversion(self):
        if 'policy_version' in self.profile:
            return self.profile['policy_version']
        return None

    @policyversion.setter
    def policyversion(self, version):
        self.profile['policy_version'] = version


# Do this setup only once
libnih_dbus = ctypes.cdll.LoadLibrary("libnih-dbus.so.1")
nih_dbus_path = libnih_dbus.nih_dbus_path
nih_dbus_path.restype = ctypes.c_char_p


def dbus_path(p):
    '''Convert a string to a DBus-compatible object path'''
    s = str(nih_dbus_path(None, "", p.encode(), None), 'ascii')
    if len(s) > 1:
        s = s[1:]
    return s


def _get_click_dir_variable():
    '''Format click databases as variable'''
    import gi
    gi.require_version('Click', '0.4')
    from gi.repository import Click

    global click_databases
    if click_databases is None:
        db = Click.DB()
        db.read()
        click_databases = sorted([db.get(i).props.root for i in
                                  range(db.props.size)])

    d = ""
    if len(click_databases) < 1:  # pragma: no cover
        raise AppArmorExceptionClickDatabaseNotFound(
            "Could not find any click databases")
    elif len(click_databases) == 1:  # pragma: no cover
        d = click_databases[0]
    else:
        d = "{%s}" % ",".join(click_databases)

    return d


def _raw_transform(fin, fout):
    '''Copy input file to output file'''
    if fin.endswith('.profile'):
        name = os.path.basename(os.path.splitext(fin)[0])
    else:
        name = os.path.basename(fin)

    orig = open_file_read(fin).read()
    out = re.sub(r'###PROFILEATTACH###', 'profile "%s"' % name, orig)

    tmp = name.split("_")
    if len(tmp) != 3:
        raise AppArmorException("unable to parse profile name %s" % (name))
    (package, appname, version) = tuple(tmp)

    profile_vars = '''@{CLICK_DIR}="%s"
@{APP_PKGNAME}="%s"
@{APP_APPNAME}="%s"
@{APP_VERSION}="%s"''' % (_get_click_dir_variable(),
                          package,
                          appname,
                          version)

    out = re.sub(r'###VAR###', profile_vars, out)

    tmp, tmp_fn = tempfile.mkstemp(prefix='aa-profile-hook')
    if not isinstance(out, bytes):
        out = out.encode('utf-8')
    os.write(tmp, out)
    os.close(tmp)

    shutil.move(tmp_fn, fout)
    os.chmod(fout, 0o644)


def _ubuntu_transform(click_manifest, policy_version):
    '''Ubuntu SDK framework transformation function'''
    m = EasyprofManifest()

    for p in click_manifest.profiles:
        newp = EasyprofProfile(p)
        newname = "%s_%s_%s" % (click_manifest.app_pkgname,
                                p,
                                click_manifest.app_version)

        profile = click_manifest.profiles[p]
        for default in defaults_profile:
            if default not in profile:
                profile[default] = defaults_profile[default]

        if 'template' in profile:
            newp.template = profile['template']
        else:
            newp.template = "ubuntu-sdk"  # pragma: no cover

        if 'policy_vendor' in profile:
            newp.policyvendor = profile['policy_vendor']
        else:
            newp.policyvendor = "ubuntu"  # pragma: no cover

        newp.policyversion = policy_version
        if 'policy_version' in profile and \
           float(profile['policy_version']) != policy_version:
            raise AppArmorExceptionClickInvalidPolicyVersion(
                "Invalid policy version '%s' " %
                profile['policy_version'] +
                "for framework '%s'" % click_manifest.framework)

        # Note: because click security manifests use a json number, we lose
        # data when importing (ie, 15.10 becomes 15.1). Starting with Ubuntu
        # 15.10, apparmor-easyprof-ubuntu policy for the 'ubuntu' policy_vendor
        # uses the Ubuntu release version (eg, 15.10, 16.04, etc), so we need
        # to convert the json number to a string and add the '0' back when
        # generating the arguments for easyprof for Ubuntu .10 release (so
        # easyprof can find the policy directories).
        if newp.policyvendor == "ubuntu" and newp.policyversion > 15 and \
                str(newp.policyversion).endswith(".1"):
            newp.policyversion = "%s0" % str(newp.policyversion)

        newp.add_variable("APP_PKGNAME", click_manifest.app_pkgname)
        newp.add_variable("APP_APPNAME", click_manifest.app_appname)
        newp.add_variable("APP_VERSION", click_manifest.app_version)
        newp.add_variable("APP_ID_DBUS", dbus_path(newname))
        newp.add_variable("APP_PKGNAME_DBUS",
                          dbus_path(click_manifest.app_pkgname))

        newp.add_variable("CLICK_DIR", _get_click_dir_variable())

        if 'policy_groups' in profile:
            for policygroup in profile['policy_groups']:
                newp.add_policygroup(policygroup)

        if 'abstractions' in profile:
            for abstraction in profile['abstractions']:
                newp.add_abstraction(abstraction)

        if 'read_path' in profile:
            for read_path in profile['read_path']:
                newp.add_read_path(read_path)

        if 'write_path' in profile:
            for write_path in profile['write_path']:
                newp.add_write_path(write_path)

        m.add_profile(newname, newp.profile)

    return m.manifest


def parse_manifest_name(name):
    '''Parse a manifest name'''
    (n, ext) = os.path.splitext(name)
    if not ext == ".json":
        raise AppArmorException("unable to parse manifest name %s" % (name))

    out = n.split("_")
    if len(out) != 3:
        raise AppArmorException("unable to parse manifest name %s" % (name))

    return tuple(out)


def transform(click_manifest):
    '''Transform click manifest into easyprof json'''
    if click_manifest.framework not in framework_transforms:
        raise AppArmorExceptionClickFrameworkNotFound(
            "Unknown framework '%s'" % (click_manifest.framework))

    # TODO: when we support framework ranges, will need to adjust this to pick
    # the highest version that is supported in framework_transforms (ie,
    # supported on the system)
    (transform_function, policy_version) = \
        framework_transforms[click_manifest.framework]

    return transform_function(click_manifest, policy_version)


# to_profiles(easyprof_manifest, directory)
# - directory is the output directory to place it into
# - returns a list of paths written to
def to_profiles(easyprof_manifest, directory, include=[], no_verify=False):
    '''Convert manifest to AppArmor profile'''
    args = []
    (easy_opts, easy_args) = apparmor.easyprof.parse_args(args=args)

    profiles = apparmor.easyprof.parse_manifest(json.dumps(easyprof_manifest),
                                                easy_opts)
    files = []

    count = 0
    for (binary, options) in profiles:
        count += 1
        try:
            easyp = apparmor.easyprof.AppArmorEasyProfile(binary, options)
        except AppArmorException as e:  # pragma: no cover
            error(e.value)
        except Exception:  # pragma: no cover
            raise

        params = apparmor.easyprof.gen_policy_params(binary, options)
        params['no_verify'] = no_verify
        # FIXME: easyp.gen_policy is probably preferred.
        f = output_policy(easyp, params, count, directory, include=include)
        if directory:
            files.append(f)

    return files


# get_missing_profiles(hooksdir, profilesdir)
# used by aa-clickhook
# - returns a list of click links that are missing correlated profiles
def get_missing_profiles(hooksdir, profilesdir):
    '''Find click hooks that are missing profiles'''
    result = []
    for hook in os.listdir(hooksdir):
        if hook.endswith(".override"):
            continue
        elif hook.endswith(".additional"):
            continue
        name = AppName(click_name=hook)
        profile = os.path.join(profilesdir, name.profile_filename)
        hook_full = os.path.join(hooksdir, hook)
        if not os.path.exists(profile):
            # If profile doesn't exist, we need to generate it
            result.append(name.click_name)
        elif os.lstat(hook_full).st_mtime > os.stat(profile).st_mtime:
            # If the profile exists, but the hook symlink is newer, we need to
            # regenerate it. Click may update the symlink from time to time, so
            # we need to handle this (LP: #1291549)
            result.append(name.click_name)
        else:
            # Like above, but for override and additional
            (p, a, v) = parse_manifest_name(os.path.basename(hook_full))
            for ext in ["override", "additional"]:
                for fn in ["%s.%s" % (hook_full, ext),
                           os.path.join(hooksdir, "%s_%s.json.%s" % (p, a,
                                                                     ext)),
                           os.path.join(hooksdir, "%s.json.%s" % (p, ext))]:
                    if os.path.exists(fn) and \
                       os.lstat(fn).st_mtime > os.stat(profile).st_mtime:
                        result.append(name.click_name)
                        break
    return result


# get_missing_clickhooks(hooksdir, profilesdir)
# used by aa-clickhook
# - returns a list of profiles that are missing correlated click links
def get_missing_clickhooks(hooksdir, profilesdir):
    '''Find profiles that have had click packages removed'''
    result = []
    for profile in os.listdir(profilesdir):
        try:
            name = AppName(profile_filename=profile)
        except AppArmorException:
            continue
        if not os.path.exists(os.path.join(hooksdir, name.click_name)):
            result.append(name.profile_filename)
    return result


# get_missing_raw_profiles(hooksdir, profilesdir)
# used by aa-profile-hook
# - returns a list of profile links that are missing from the profilesdir
def get_missing_raw_profiles(hooksdir, profilesdir):
    '''Find click hooks that are missing profiles'''
    result = []
    for hook in os.listdir(hooksdir):
        # FIXME: don't reference profile_ here
        profile = os.path.join(profilesdir, "profile_" + hook)
        hook_full = os.path.join(hooksdir, hook)
        if not os.path.exists(profile):
            # If profile doesn't exist, we need to copy it
            result.append(hook)
        elif os.lstat(hook_full).st_mtime > os.stat(profile).st_mtime:
            # If the profile exists, but the hook symlink is newer, we need to
            # recopy it. Click may update the symlink from time to time, so
            # we need to handle this (LP: #1291549)
            result.append(hook)
    return result


# get_missing_rawhooks(hooksdir, profilesdir)
# used by aa-profile-hook
# - returns a list of profiles that are missing correlated raw profile links
def get_missing_rawhooks(hooksdir, profilesdir):
    '''Find profiles that have had click packages removed'''
    result = []
    for profile in os.listdir(profilesdir):
        # FIXME: don't reference profile_ here
        if profile.startswith('profile_') and \
                not os.path.exists(os.path.join(hooksdir,
                                   re.sub(r'^profile_', '', profile))):
            result.append(profile)
    return result


#
# Defaults
# FIXME: make these configurable via a configuration file
#

# These define the transformation funtions given a specific framework
# definition in the ClickManifest file. This may need to grow more
# complex depending on how the framework definition grows in click
# packages.
#
# Ubuntu requires a particular policy version for each framework base version,
# so allow for this. We do it here rather than in the transform functions
# so it is in one place and so we can more easily report the policy version
# for a given framework.
#
# Format is:
#   framework_transforms = {
#     "<framework_base_version>": (<transform_function>, <policy_version>),
#   }
# Note: sometimes the framework_base_version is the same as the framework name,
# but this is not always the case. Use framework_base_version instead so that
# 'subframeworks' can more easily be assigned a particular policy version. Eg
# "ubuntu-sdk-14.04-html" and "ubuntu-sdk-14.04-papi" should all get the same
# policy version and they share the "ubuntu-sdk-14.04" framework base version.
framework_transforms = {
    "ubuntu-sdk-13.10": (_ubuntu_transform, 1.0),
    "ubuntu-sdk-14.04": (_ubuntu_transform, 1.1),
    "ubuntu-sdk-14.10": (_ubuntu_transform, 1.2),
    "ubuntu-sdk-15.04": (_ubuntu_transform, 1.3),
    "ubuntu-sdk-15.10": (_ubuntu_transform, 15.10),
    "ubuntu-sdk-16.04": (_ubuntu_transform, 16.04),
}

# The Ubuntu tranformation function takes a click manifest json
# structure as input and returns an aa-easyprof json manifest
defaults_profile = {
    'template': 'ubuntu-sdk',
    'policy_vendor': 'ubuntu',
    'policy_groups': list(),
}

# Required fields in click manifest
required_click_fields = ["name", "version", "framework"]

#
# End defaults
#
