#! /bin/bash

TESTCASEID="4"
# FEATURE       : Manage Tasks
# TITLE         : Delete this task assigned to id=0.
# OBJECTIVE     : Verify that an existing task can be deleted via the API.
# STATUS        : Ready
# LEVEL         : System
# TYPE          : Requirement
# REFERENCE     : Req6, tc_1
# NOTES         : none
# PRECONDITIONS : 1. Access to Node.js instance running the application under test.
#               : 2. At least one task must already exist.

# *Environment Config
URL="localhost"
PORT="8080"
REPORTFILENAME="reports/apitc_$TESTCASEID.log"

echo "===== TEST SETUP ====="
# CHECK: Application API service accessable to support troubleshooting and future automation.
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
task_id="0"
expected_result="span-todo-0"

# Test Execute
curl -s http://$URL:$PORT/todo/delete/$task_id >> $REPORTFILENAME

# Test Verification
curl -s http://$URL:$PORT/todo >> $REPORTFILENAME
responseTemp="$(grep "$task_id" $REPORTFILENAME)"
echo "EXPECTED: != $expected_result"
echo "ACTUAL  : $responseTemp"

# Test Result Update
if [[ "$responseTemp" != *"$expected_result"* ]]; then
echo "PASS"
else
echo "FAIL"
fi

# Test Teardown
responseTemp=0
echo "-------------------------------------------------------------------------" 
