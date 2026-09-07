#!/bin/bash

echo "Security Control: /etc/shadow File Permissions"

permission=$(stat -c "%a" /etc/shadow)

echo "Expected: 000"
echo "Actual: $permission"

if [ "$permission" = "0" ]
then
    echo "Status: PASS"
else
    echo "Status: REVIEW"
    echo "Remediation: Check and restrict permissions on /etc/shadow"
fi
