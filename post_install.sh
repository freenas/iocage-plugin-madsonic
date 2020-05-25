#!/bin/sh

# Enable the service
sysrc -f /etc/rc.conf jetty_enable="YES"

# Start the service
service jetty start 2>/dev/null
