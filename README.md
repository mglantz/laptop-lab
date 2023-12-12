# laptop-lab
Setup of a Fedora/Ubuntu based laptop lab

# Installation

* Clone repo into your homefolder
```
cd ~/
git clone https://github.com/mglantz/laptop-lab
```
* Adjust configuration
Setup your custom variables in the inventory file

# Edit RHN credentials
```
vi ~/ansible/localdc/setup.yml
```

# Howto use
* Create a normal vm with:
```
$ vm test123.sudo.net 2 2048
```
* See end of the vm script for support for additional configs
```
$ vm pcidss.sudo.net 2 2048 pcidss
$ vm apache.sudo.net 2 2048 apache
```

# Example output
```
$ vm test123.sudo.net 2 2048
[mglantz@fedora localdc]$ vm test123.sudo.net 2 2048
[   0.0] Examining the guest ...
[   2.4] Performing "customize" ...
[   2.4] Setting a random seed
[   2.4] Setting the hostname: test123.sudo.net
[   2.4] SELinux relabelling

PLAY [Provision VM] 

TASK [Gathering Facts] 
ok: [localhost]

TASK [Get VMs list] 
ok: [localhost]

TASK [Define vm] 
changed: [localhost]

TASK [Ensure VM is started] 
changed: [localhost]

PLAY RECAP 
localhost                  : ok=4    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

Waiting for test123.sudo.net to come up.
Waiting for test123.sudo.net to come up.
Waiting for test123.sudo.net to come up.
Waiting for test123.sudo.net to come up.
Waiting for test123.sudo.net to come up.
Waiting for test123.sudo.net to come up.
Waiting for test123.sudo.net to come up.
Waiting for test123.sudo.net to come up.
Waiting for test123.sudo.net to come up.
Waiting for test123.sudo.net to come up.
Waiting for test123.sudo.net to come up.
Waiting for test123.sudo.net to come up.
test123.sudo.net is up, initiating setup.

PLAY [Setup new virtual machine] 

TASK [Gathering Facts] 
ok: [test123.sudo.net]

TASK [Register system to RHN] 
changed: [test123.sudo.net]

PLAY RECAP 
test123.sudo.net           : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0 
```
