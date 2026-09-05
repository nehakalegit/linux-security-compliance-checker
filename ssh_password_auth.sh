#!/bin/bash

echo "Security Control: SSH Password Authentication"

password_auth=$(grep "^PasswordAuthentication" /etc/ssh/sshd_config)

echo "Expected: PasswordAuthentication no"
echo "Actual: $password_auth"

if [ "$password_auth" = "PasswordAuthentication no" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Set PasswordAuthentication no in /etc/ssh/sshd_config"
fi
