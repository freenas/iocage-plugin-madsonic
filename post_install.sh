#!/bin/sh

# Replace python2 bits to python3
sed -i -e "s/0111/111/g" /usr/local/sbin/jettyctl

# Enable the service
sysrc -f /etc/rc.conf jetty_enable="YES"

# Start the service
service jetty start 2>/dev/null
