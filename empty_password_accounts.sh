#!/bin/bash

echo "Security Control: Empty Password Accounts"

empty_accounts=$(awk -F: '($2==""){print $1}' /etc/shadow)

echo "Expected: No accounts with empty passwords"
echo "Actual: $empty_accounts"

if [ -z "$empty_accounts" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Lock or set a password for accounts with empty passwords"
fi
