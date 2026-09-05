#!/bin/bash

echo "Security Control: Firewall Status"

firewall_status=$(systemctl is-active firewalld)

echo "Expected: active"
echo "Actual: $firewall_status"

if [ "$firewall_status" = "active" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Enable and start the firewalld service"
fi
