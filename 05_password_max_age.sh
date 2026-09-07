#!/bin/bash

echo "Security Control: Password Maximum Age"

max_age=$(grep "^PASS_MAX_DAYS" /etc/login.defs | awk '{print $2}')

echo "Expected: 365 days or less"
echo "Actual: $max_age days"

if [ "$max_age" -le 365 ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Set PASS_MAX_DAYS to 365 or less in /etc/login.defs"
fi
