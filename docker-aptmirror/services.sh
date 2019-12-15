#!/bin/sh


cat <<EOF >/etc/cron.d/apt-mirror
# M H
# Regular cron jobs for the apt-mirror package
0 4    * * *   /usr/bin/apt-mirror > /apt-mirror/cron.log
EOF

/usr/sbin/cron

(cd /apt-mirror/mirror && \
/usr/bin/python3 -m http.server 9999 --bind 0.0.0.0)
