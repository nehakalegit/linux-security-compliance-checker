#!/bin/bash

owner=$(stat -c "%U" /etc/group)

if [ "$owner" = "root" ]; then
    echo "PASS: /etc/group is owned by root"
else
    echo "FAIL: /etc/group is not owned by root"
fi
