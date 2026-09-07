#!/bin/bash

echo "Security Control: SSH Empty Passwords"

empty_password=$(grep "^PermitEmptyPasswords" /etc/ssh/sshd_config)

echo "Expected: PermitEmptyPasswords no"
echo "Actual: $empty_password"

if [ "$empty_password" = "PermitEmptyPasswords no" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Set PermitEmptyPasswords no in /etc/ssh/sshd_config"
fi
