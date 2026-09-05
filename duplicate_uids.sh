#!/bin/bash

echo "Security Control: Duplicate UIDs"

duplicate_uid=$(cut -d: -f3 /etc/passwd | sort | uniq -d)

echo "Expected: No duplicate UIDs"
echo "Actual: $duplicate_uid"

if [ -z "$duplicate_uid" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Assign a unique UID to each user account"
fi
