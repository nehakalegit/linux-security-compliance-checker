#!/bin/bash

echo "Security Control: SSH Idle Session Timeout"

interval=$(grep "^ClientAliveInterval" /etc/ssh/sshd_config | awk '{print $2}')
count=$(grep "^ClientAliveCountMax" /etc/ssh/sshd_config | awk '{print $2}')

echo "Expected ClientAliveInterval: 300"
echo "Actual ClientAliveInterval: $interval"

echo "Expected ClientAliveCountMax: 0"
echo "Actual ClientAliveCountMax: $count"

if [ "$interval" = "300" ] && [ "$count" = "0" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Set ClientAliveInterval 300 and ClientAliveCountMax 0 in /etc/ssh/sshd_config"
fi
