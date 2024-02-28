#!/bin/bash

# run in directory where the container files to be packaged are
mkdir -pv ../splitzip

# debian package required: p7zip-full

time 7z \
  a \
  -mx=6 \
  -v24m \
  -w../splitzip \
  ../splitzip/kingneutron-proxmox-lxc-container-gotify-v1-20240227 \
  .
