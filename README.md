# laptop-lab
Setup of a Fedora based laptop lab

# Installation
* Install prerequsites
```
sudo dnf install virt-manager libguestfs-tools guestfs-tools
```
* Clone repo
```
git clone https://github.com/mglantz/laptop-lab
```
* Put in place local dns configuration
```
cp etc/systemd/system/dns-virbr0.service
sudo virsh net-edit default
<enter in what's in config/default>
```
* Put tools in place
```
cd laptop-lab
sudo cp tools/* /bin/
```
* Put playbooks and directories in place
```
cd laptop-lab
# Edit RHN credentials
vi code/ansible/localdc/setup.yml
cp -Rp code ~
```
* Update and reboot
```
dnf update -y
reboot
```

# Test
```
vm test.sudo.net 2 2048
```
