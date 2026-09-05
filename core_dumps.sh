#!/bin/bash

echo "Security Control: Core Dumps"

core_dump=$(sysctl -n fs.suid_dumpable)

echo "Expected: 0"
echo "Actual: $core_dump"

if [ "$core_dump" = "0" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Set fs.suid_dumpable = 0"
fi
