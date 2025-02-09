# Copyright (C) 2013 Canonical Ltd.
# Author: Colin Watson <cjwatson@ubuntu.com>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 3 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

"""Unit tests for click.paths.

This is mostly just to reduce noise in the coverage report.
"""

from __future__ import print_function

__metaclass__ = type
__all__ = [
    'TestClickPaths',
    ]


from gi.repository import Click

from click_package.tests.helpers import TestCase


class TestClickPaths(TestCase):
    def test_get_hooks_dir(self):
        self.assertEqual("/usr/share/click/hooks", Click.get_hooks_dir())

    def test_get_db_dir(self):
        self.assertEqual("/etc/click/databases", Click.get_db_dir())

    def test_get_frameworks_dir(self):
        self.assertEqual("/usr/share/click/frameworks", Click.get_frameworks_dir())
