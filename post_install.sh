#!/bin/sh

# Create madsonic dir
mkdir -p /var/madsonic

# Download and unpack tar.gz standalone version

fetch https://madsonic.org/download/7.0/20190510_madsonic-7.0.10390-standalone.tar.gz -o madsonic.tar.gz
tar xf madsonic.tar.gz -C /var/madsonic

# Download and unzip transcode package
fetch https://download.madsonic.org/transcode/20190425_madsonic-transcode-linux-x86.zip -o madsonic-transcode.zip
unzip madsonic-transcode.zip -d /var/madsonic/

# Enable and start service
sysrc -f /etc/rc.conf madsonic_enable="YES"
service madsonic start 2>/dev/null

# Cleanup
rm madsonic.tar.gz
rm madsonic-transcode.zip