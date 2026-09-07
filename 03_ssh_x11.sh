#!/bin/bash

x11=$(grep "^X11Forwarding" /etc/ssh/sshd_config | awk '{print $2}')

if [ "$x11" = "no" ]; then
    echo "PASS: X11 Forwarding is disabled"
else
    echo "FAIL: X11 Forwarding is enabled"
fi
