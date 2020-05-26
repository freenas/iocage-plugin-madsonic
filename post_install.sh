#!/bin/sh

# Create madsonic dir
mkdir -p /var/madsonic

# Download and unpack tar.gz standalone version
fetch https://download.madsonic.org/6.2/20190425_madsonic-6.2.9084-standalone.tar.gz -o madsonic.tar.gz
tar xf madsonic.tar.gz -C /var/madsonic
rm madsonic.tar.gz

# Run migrations
echo "Running migrations"
/usr/local/migrations/0.0.1.sh

# Enable and start service
sysrc -f /etc/rc.conf madsonic_enable="YES"
service madsonic start 2>/dev/null