#!/bin/bash

echo "Security Control: UID 0 Accounts"

uid_zero=$(awk -F: '$3 == 0 {print $1}' /etc/passwd)

echo "Expected: root"
echo "Actual: $uid_zero"

if [ "$uid_zero" = "root" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Remove UID 0 privileges from unauthorized accounts"
fi
