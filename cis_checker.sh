==========================================
 Linux CIS Security Compliance Checker
==========================================

[1] Checking SSH root login...
[FAIL] SSH root login is not disabled

------------------------------------------
Compliance Summary
------------------------------------------
Passed: 0
Failed: 1
[nehakale@localhost linux-cis-compliance-checker]$ ^C
[nehakale@localhost linux-cis-compliance-checker]$ cat cis_checker.sh 
#!/bin/bash

echo "=========================================="
echo " Linux CIS Security Compliance Checker"
echo "=========================================="
echo

PASS=0
FAIL=0

pass() {
    echo "[PASS] $1"
    ((PASS++))
}

fail() {
    echo "[FAIL] $1"
    ((FAIL++))
}

# Control 1: SSH Root Login
echo "[1] Checking SSH root login..."

ROOT_LOGIN=$(sshd -T 2>/dev/null | grep "^permitrootlogin" | awk '{print $2}')

if [ "$ROOT_LOGIN" = "no" ]; then
    pass "SSH root login is disabled"
else
    fail "SSH root login is not disabled"
fi

# Summary
echo
echo "------------------------------------------"
echo "Compliance Summary"
echo "------------------------------------------"
echo "Passed: $PASS"
echo "Failed: $FAIL"
