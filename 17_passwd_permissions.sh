#!/bin/bash

echo "Security Control: /etc/passwd File Permissions"

permission=$(stat -c "%a" /etc/passwd)

echo "Expected: 644 or more restrictive"
echo "Actual: $permission"

if [ "$permission" = "644" ]
then
    echo "Status: PASS"
else
    echo "Status: REVIEW"
    echo "Remediation: Check permissions of /etc/passwd"
fi
