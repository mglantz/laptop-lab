#!/bin/bash
# Prep KVM installation image, downloaded from:
# https://access.redhat.com/downloads/content/479/ver=/rhel---9/9.1/x86_64/product-software

virt-sysprep --root-password password:redhat123 --ssh-inject root:file:/home/mglantz/.ssh/id_rsa.pub --enable customize -a rhel91-template.qcow2
