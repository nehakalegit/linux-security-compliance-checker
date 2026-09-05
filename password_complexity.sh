#!/bin/bash

echo "Security Control: Password Complexity"

complexity=$(grep -E "^(dcredit|ucredit|lcredit|ocredit)" /etc/security/pwquality.conf)

echo "Expected: Password complexity rules configured"
echo "Actual:"
echo "$complexity"

if [ -n "$complexity" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Configure password complexity in /etc/security/pwquality.conf"
fi
