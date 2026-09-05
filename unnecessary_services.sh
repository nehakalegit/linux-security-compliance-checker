#!/bin/bash

echo "Security Control: Unnecessary Services"

services=$(systemctl --type=service --state=running --no-pager)

echo "Running Services:"
echo "$services"

echo "Status: REVIEW"
echo "Remediation: Disable unnecessary services that are not required by the system"
