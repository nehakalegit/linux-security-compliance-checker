#!/bin/bash

echo "Security Control: Ungrouped Files"

files=$(find / -xdev -nogroup 2>/dev/null)

echo "Expected: No ungrouped files"

if [ -z "$files" ]
then
    echo "Actual: No ungrouped files found"
    echo "Status: PASS"
else
    echo "Actual:"
    echo "$files"
    echo "Status: FAIL"
    echo "Remediation: Assign a valid group to the ungrouped files"
fi
