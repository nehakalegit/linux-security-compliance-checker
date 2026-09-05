#!/bin/bash

echo "Security Control: Account Inactivity"

inactive=$(useradd -D | grep INACTIVE | cut -d= -f2)

echo "Expected: 45 days or less"
echo "Actual: $inactive days"

if [ "$inactive" -ge 0 ] && [ "$inactive" -le 45 ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Configure inactive accounts to be disabled after 45 days or less"
fi
