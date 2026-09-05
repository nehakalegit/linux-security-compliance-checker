#!/bin/bash

echo "Security Control: SSH Root Login"

# Check SSH configuration
root_login=$(grep "^PermitRootLogin" /etc/ssh/sshd_config)

echo "Expected: PermitRootLogin no"
echo "Actual: $root_login"

if [ "$root_login" = "PermitRootLogin no" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Set PermitRootLogin no in /etc/ssh/sshd_config"
fi
