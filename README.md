# proxmox-ctr
Proxmox LXC containers

2024.Feb.27 Kneutron v1 release

Proxmox LXC container for gotify notifications

REF: https://www.youtube.com/watch?v=vZR2wz6xhRU

See Notes in container, default extraction dir is wherever you restore your container backups, restore from backup

o Create a container named 99998 with whatever basic settings but do not start it

o In Container / Backup, point to the storage where you downloaded / extracted these files ("dump" subdirectory) and Restore; basic container will be overwritten


2024.0227 Devuan 5 amd64 ctr for gotify v2.4.0 notifications

NOTE AUTOSTARTS at boot

1Gbit Static IP: 192.168.1.253 // not using https -- TODO CHANGEME if already occupied on your LAN!

REF: https://gotify.net/docs/install

NOTE - login as admin on android phone app!

gotify is started from etc/rc.local and logs to /var/log/gotify.log

No log rotation is implemented by default! Restart container or run /etc/rc.local to reset log, can schedule in crontab

ext4 is already ' tunefs -m 1 ' optimized

screen, tmux, mc, ps, killall, top, iperf3 are installed for convenience

See /root/bin/boojum/gotifytest.sh for example notification script
