#!/bin/bash

echo "Security Control: IP Forwarding"

ip_forward=$(sysctl -n net.ipv4.ip_forward)

echo "Expected: 0"
echo "Actual: $ip_forward"

if [ "$ip_forward" = "0" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Set net.ipv4.ip_forward = 0"
fi
