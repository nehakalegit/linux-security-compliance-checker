#!/bin/bash

ftp_user=$(grep "^ftp:" /etc/passwd)

if [ -z "$ftp_user" ]; then
    echo "PASS: FTP account does not exist"
else
    echo "FAIL: FTP account exists"
fi
