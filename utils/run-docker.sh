#!/bin/bash

# NOTE: Required to fix bug (iptables failed)
# https://patrickwu.space/2021/03/09/wsl-solution-to-native-docker-daemon-not-starting/
update-alternatives --set iptables /usr/sbin/iptables-legacy

# Run in background
dockerd > /dev/null 2>&1 &
service docker restart
# NOTE: Wait until docker has started...
timeout 20 sh -c "until docker info > /dev/null 2>&1; do echo 'please wait...'; sleep 1; done"

