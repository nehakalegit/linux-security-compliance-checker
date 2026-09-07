#!/bin/bash

echo "Security Control: SSH Access Restrictions"

ssh_access=$(grep -E "^AllowUsers|^AllowGroups" /etc/ssh/sshd_config)

echo "Expected: SSH access restricted to authorized users or groups"
echo "Actual: $ssh_access"

if [ -n "$ssh_access" ]
then
    echo "Status: PASS"
else
    echo "Status: REVIEW"
    echo "Remediation: Configure AllowUsers or AllowGroups if required by your security policy"
fi
