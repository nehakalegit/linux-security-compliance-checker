#!/bin/bash

echo "Security Control: auditd Service Status"

audit_status=$(systemctl is-active auditd)

echo "Expected: active"
echo "Actual: $audit_status"

if [ "$audit_status" = "active" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Enable and start the auditd service"
fi
