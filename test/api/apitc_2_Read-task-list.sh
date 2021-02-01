#! /bin/bash

TESTCASEID="2"
# FEATURE       : Manage Tasks
# TITLE         : Read list of created tasks
# OBJECTIVE     : Verify that a list of exiting tasks can be retrieved via the API.
# STATUS        : Ready
# LEVEL         : System
# TYPE          : Requirement
# REFERENCE     : tc_1
# NOTES         : none
# PRECONDITIONS : 1. Access to Node.js instance running the application under test.
#               : 2. At least one task must already exist.

# *Environment Config
URL="localhost"
PORT="8080"
REPORTFILENAME="reports/apitc_$TESTCASEID.log"

echo "===== TEST SETUP ====="
# CHECK: Application API service accessable to support troubleshooting and future automation.
check_result="PENDING"
check_expected="QE tdolist"
echo "URL= $URL:$PORT"

curl -s http://$URL:$PORT/todo | tee reports/check_apitc_$TESTCASEID.log
responseTemp="$(grep "$check_expected" reports/check_apitc_$TESTCASEID.log)"
echo "EXPECTED: $check_expected"
echo "ACTUAL  : $responseTemp"

if [[ "$responseTemp" = *"$check_expected"* ]]; then
echo "PASS"
else
echo "FAIL"
fi

echo "-------------------------------------------------------------------------"

echo "===== TEST EXECUTION ====="
task_name="span-todo-0"
expected_result="span-todo-0"

# Test Execute
curl -s http://$URL:$PORT/todo | >> $REPORTFILENAME

# Test Verification
curl -s http://$URL:$PORT/todo >> $REPORTFILENAME
responseTemp="$(grep "$task_name" $REPORTFILENAME)"
echo "EXPECTED: $expected_result"
echo "ACTUAL  : $responseTemp"

# Test Result Update
if [[ "$responseTemp" = *"$expected_result"* ]]; then
echo "PASS"
else
echo "FAIL"
fi

# Test Teardown
responseTemp=0
echo "-------------------------------------------------------------------------"
