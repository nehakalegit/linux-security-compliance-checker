#!/bin/bash

echo "Security Control: Password Minimum Length"

min_length=$(grep "^minlen" /etc/security/pwquality.conf | awk -F= '{print $2}' | xargs)

echo "Expected: 14 or more"
echo "Actual: $min_length"

if [ "$min_length" -ge 14 ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Set minlen = 14 or more in /etc/security/pwquality.conf"
fi
