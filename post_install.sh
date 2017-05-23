#!/bin/sh

# Enable the service
sysrc -f /etc/rc.conf madsonic_enable="YES"

# Start the service
service madsonic start 2>/dev/null
