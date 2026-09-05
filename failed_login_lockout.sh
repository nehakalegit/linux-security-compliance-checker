#!/bin/bash

echo "Security Control: Failed Login Lockout"

deny_value=$(grep "^deny" /etc/security/faillock.conf | awk -F= '{print $2}' | xargs)

echo "Expected: 3 failed attempts"
echo "Actual: $deny_value"

if [ "$deny_value" = "3" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Set deny = 3 in /etc/security/faillock.conf"
fi
