#!/bin/bash

td=$PWD

# xxx TODO EDITME if you have different storage - this is default directory
cd /var/lib/vz/dump

# REQUIRES: p7zip pkg
time 7z x $td/kingneutron-proxmox-lxc-container-gotify-v1-20240227.7z.001
