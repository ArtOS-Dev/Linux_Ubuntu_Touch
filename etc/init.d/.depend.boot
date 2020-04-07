TARGETS = console-setup mountkernfs.sh alsa-utils resolvconf ufw hostname.sh apparmor pppd-dns x11-common plymouth-log udev keyboard-setup mountdevsubfs.sh procps hwclock.sh urandom networking checkroot.sh checkroot-bootclean.sh bootmisc.sh checkfs.sh mountall-bootclean.sh mountall.sh mountnfs.sh kmod mountnfs-bootclean.sh
INTERACTIVE = console-setup udev keyboard-setup checkroot.sh checkfs.sh
udev: mountkernfs.sh
keyboard-setup: mountkernfs.sh udev
mountdevsubfs.sh: mountkernfs.sh udev
procps: mountkernfs.sh udev
hwclock.sh: mountdevsubfs.sh
urandom: hwclock.sh
networking: mountkernfs.sh urandom resolvconf procps
checkroot.sh: hwclock.sh mountdevsubfs.sh hostname.sh keyboard-setup
checkroot-bootclean.sh: checkroot.sh
bootmisc.sh: checkroot-bootclean.sh mountall-bootclean.sh udev mountnfs-bootclean.sh
checkfs.sh: checkroot.sh
mountall-bootclean.sh: mountall.sh
mountall.sh: checkfs.sh checkroot-bootclean.sh
mountnfs.sh: networking
kmod: checkroot.sh
mountnfs-bootclean.sh: mountnfs.sh
