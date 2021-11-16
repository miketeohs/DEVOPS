https://serverfault.com/questions/840519/how-to-change-the-default-storage-pool-from-libvirt

Before following the steps, be sure that you are running these commands as normal user and that your user belongs to the group "libvirtd".
Here are the following commands which I used:
Listing current pools:
$ virsh pool-list

Name                 State      Autostart
-------------------------------------------
default              active     yes
Destroying pool:
$ virsh pool-destroy default
Pool default destroyed
Undefine pool:
$ virsh pool-undefine default
Pool default has been undefined
Defining a new pool with name "default":
$ virsh pool-define-as --name default --type dir --target /media/work/kvm
Pool default defined
Set pool to be started when libvirt daemons starts:
$ virsh pool-autostart default
Pool default marked as autostarted
Start pool:
$ virsh pool-start default
Pool default started
Checking pool state:
$ virsh pool-list
Name                 State      Autostart
-------------------------------------------
default              active     yes
From now, when creating virtual machines, Virtual Machine Manager will inform you that the *.img file (virtual disk of your VM), will be saved at /media/work/kvm.


If you just want to change the image path, you can also edit the storage path in the default pool by running:
$ virsh pool-edit default
The above command will open the default pool xml in an editor (vim/nano), now:
edit the path
save the changes and
restart libvirt service
