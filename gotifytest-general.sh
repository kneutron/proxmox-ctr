#!/bin/bash

# REF: https://www.youtube.com/watch?v=vZR2wz6xhRU&t=187s

# NOTE - login on phone as admin to see notifications!

if [ "$1" = "" ] || [ "$1" = '.' ]; then
  arg1="General message from $(hostname)@$(hostname -i)"
else
  arg1="GeneralMsg: $(hostname)@$(hostname -i) - $1"
fi

if [ "$2" = "" ] || [ "$2" = '.' ]; then
  arg2="$(date) - Message from $(hostname)"
else
  arg2="$(date) - General notification: $2"
fi

# IP of gotify container
curl "http://192.168.1.253/message?token=blahblahblahreplaceme" -F "title=$arg1" -F "message=$arg2" -F "priority=5"
# token from webui Applications
