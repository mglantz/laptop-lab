# laptop-lab
Setup of a Fedora based laptop lab

# Installation
* Install prerequsites
```
sudo dnf install virt-manager libguestfs-tools guestfs-tools
pip install ansible ansible-builder ansible-navigator
```

* Clone repo
```
git clone https://github.com/mglantz/laptop-lab
```
* Edit the dnsmasq and libvirt config to fit your setup, meaning these files:
```
etc/systemd/system/dns-virbr0.service
etc/NetworkManager/dnsmasq.d/libvirt_dnsmasq.conf
```
* Put in place local dns configuration
```
sudo cp -R etc /etc
sudo systemctl daemon-reload
sudo virsh net-edit default
<enter in what's in config/default>
```
* Put tools in place
```
cd laptop-lab
sudo cp tools/ /bin/
```
* Put playbooks and directories in place
```
cd laptop-lab
# Edit RHN credentials
vi code/ansible/localdc/setup.yml
cp -Rp code ~
```
* Update and reboot, and yes you need to reboot with these instructions
```
dnf update -y
reboot
```

# Test
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
