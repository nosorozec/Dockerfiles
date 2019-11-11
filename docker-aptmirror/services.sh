#!/bin/sh


cat <<EOF >/etc/cron.d/apt-mirror
#
# Regular cron jobs for the apt-mirror package
0 4    * * *   apt-mirror      /usr/bin/apt-mirror > /var/spool/apt-mirror/var/cron.log
EOF

/usr/sbin/cron

(cd /var/spool/apt-mirror/mirror/archive.ubuntu.com && \
/usr/bin/python3 -m http.server 9999 --bind 0.0.0.0)
