#!/bin/bash

echo "Security Control: Unowned Files"

files=$(find / -xdev -nouser 2>/dev/null)

echo "Expected: No unowned files"

if [ -z "$files" ]
then
    echo "Actual: No unowned files found"
    echo "Status: PASS"
else
    echo "Actual:"
    echo "$files"
    echo "Status: FAIL"
    echo "Remediation: Assign a valid owner to the unowned files"
fi
