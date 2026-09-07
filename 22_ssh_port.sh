#!/bin/bash

port=$(grep "^Port" /etc/ssh/sshd_config | awk '{print $2}')

if [ "$port" = "22" ]; then
    echo "INFO: SSH is using default port 22"
else
    echo "PASS: SSH is not using default port 22"
fi
