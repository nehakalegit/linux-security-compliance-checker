#!/bin/bash

echo "Security Control: Password Minimum Age"

min_age=$(grep "^PASS_MIN_DAYS" /etc/login.defs | awk '{print $2}')

echo "Expected: 1 day or more"
echo "Actual: $min_age days"

if [ "$min_age" -ge 1 ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Set PASS_MIN_DAYS to 1 or more in /etc/login.defs"
fi
