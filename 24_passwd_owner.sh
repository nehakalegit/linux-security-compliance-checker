#!/bin/bash

owner=$(stat -c "%U" /etc/passwd)

if [ "$owner" = "root" ]; then
    echo "PASS: /etc/passwd is owned by root"
else
    echo "FAIL: /etc/passwd is not owned by root"
fi
