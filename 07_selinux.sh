#!/bin/bash

echo "Security Control: SELinux Status"

selinux_status=$(getenforce)

echo "Expected: Enforcing"
echo "Actual: $selinux_status"

if [ "$selinux_status" = "Enforcing" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Enable SELinux and set it to Enforcing mode"
fi
