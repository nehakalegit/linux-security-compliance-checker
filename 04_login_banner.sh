#!/bin/bash

echo "Security Control: Login Banner"

banner=$(cat /etc/issue)

echo "Expected: Login warning banner configured"
echo "Actual:"
echo "$banner"

if [ -n "$banner" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Configure an authorized-use warning banner in /etc/issue"
fi
