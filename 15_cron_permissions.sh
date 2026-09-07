#!/bin/bash

echo "Security Control: Cron Permissions"

permission=$(stat -c "%a" /etc/crontab)
owner=$(stat -c "%U" /etc/crontab)

echo "Expected Permission: 600"
echo "Actual Permission: $permission"

echo "Expected Owner: root"
echo "Actual Owner: $owner"

if [ "$permission" = "600" ] && [ "$owner" = "root" ]
then
    echo "Status: PASS"
else
    echo "Status: FAIL"
    echo "Remediation: Set correct permissions and ownership on /etc/crontab"
fi
