#!/bin/bash

echo "Security Control: Duplicate GIDs"

duplicate_gid=$(cut -d: -f3 /etc/group | sort | uniq -d)

echo "Expected: No duplicate GIDs"
echo "Actual: $duplicate_gid"

if [ -z "$duplicate_gid" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Assign a unique GID to each group"
fi
