#!/bin/bash

time 7z \
  a \
  -mx=6 \
  -v24m \
  -w../splitzip \
  ../splitzip/kingneutron-proxmox-lxc-container-gotify-v1-20240227 \
  .
