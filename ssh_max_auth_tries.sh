#!/bin/bash

echo "Security Control: SSH Maximum Authentication Attempts"

max_tries=$(grep "^MaxAuthTries" /etc/ssh/sshd_config | awk '{print $2}')

echo "Expected: 4 or less"
echo "Actual: $max_tries"

if [ "$max_tries" -le 4 ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Set MaxAuthTries to 4 or less in /etc/ssh/sshd_config"
fi
