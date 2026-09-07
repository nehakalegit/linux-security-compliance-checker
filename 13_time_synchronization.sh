#!/bin/bash

echo "Security Control: Time Synchronization"

time_status=$(systemctl is-active chronyd)

echo "Expected: active"
echo "Actual: $time_status"

if [ "$time_status" = "active" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Enable and start the chronyd service"
fi
