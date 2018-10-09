#!/bin/bash

protected_files="
/etc/default/grub
/usr/sbin/useradd
/usr/sbin/userdel
/etc/pam.d
/etc/ssh/sshd_config
/etc/sudoers.d
/etc/sudoers
/boot
/sys/fs/selinux/enforce
/etc/shadow
/etc/passwd
/etc/group
/etc/selinux
/sbin
/usr/bin
/usr/lib/selinux
/usr/sbin
/usr/libexec/selinux
/usr/lib/systemd/system
/etc/liboath/users.oath
"

for file in $protected_files
do
	restorecon -RFv "$file"
done
