osinfo-query os
osinfo-query os vendor="Fedora Project"
osinfo-query os vendor="Microsoft Corporation"

To get list of vendors, osinfo-query -f vendor | sort | uniq
Vendors

Alpine Linux Project
ALTLinux
Android-x86
Apple Inc.
Arch Linux
Asianux Project
BaseALT
Canonical Ltd
CentOS
CirrOS
Debian Project
DragonFlyBSD Project
Endless Mobile, Inc
Fedora Project
FreeBSD Project
FreeDOS
Gentoo Foundation
GNOME Project
Haiku, Inc.
Mageia
Mandriva
Microsoft
Microsoft Corporation
NetBSD Project
Novell
OpenBSD Project
openSUSE
Oracle
Purism, SPC
Red Hat, Inc
Scientific Linux
Sun
SUSE
System76, Inc.
Void Linux

qemu-img create -f qcow2 -o preallocation=metadata /var/lib/libvirt/images/mine.qcow2 8G
qemu-img check /var/lib/libvirt/images/mine.qcow2
qemu-img info /var/lib/libvirt/images/mine.qcow2

virt-install --connect qemu:///system --name centos77-minimal --ram 1024 --disk path=/var/lib/libvirt/images/mine.qcow2,format=qcow2 --network=bridge:virbr0,model=virtio --vnc --os-type=linux --cdrom /var/lib/libvirt/images/CentOS-7-x86_64-Minimal-1908.iso --noautoconsole --keymap=en-us --os-variant centos7.0
