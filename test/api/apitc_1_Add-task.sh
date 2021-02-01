#! /bin/bash

TESTCASEID="1"
# FEATURE       : Manage Tasks
# TITLE         : Create a new Task
# OBJECTIVE     : Verify that a new task can be created via the API.
# STATUS        : Ready
# LEVEL         : System
# TYPE          : Requirement
# REFERENCE     : Req5, tc_1
# NOTES         : none
# PRECONDITIONS : Access to Node.js instance running the application under test.

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
task_name="api testcase 1"
expected_result="api testcase 1"

# Test Execute
curl -d "newtodo=$task_name" http://$URL:$PORT/todo/add >> $REPORTFILENAME

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
