#!/bin/bash

echo "Security Control: World-Writable Files"

files=$(find / -xdev -type f -perm -0002 2>/dev/null)

echo "Expected: No unauthorized world-writable files"

if [ -z "$files" ]
then
    echo "Actual: No world-writable files found"
    echo "Status: PASS"
else
    echo "Actual:"
    echo "$files"
    echo "Status: REVIEW"
    echo "Remediation: Review world-writable files and remove unnecessary write permissions"
fi
