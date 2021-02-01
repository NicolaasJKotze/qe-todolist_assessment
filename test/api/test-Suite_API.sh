#!/bin/bash

#TEST SUIT: API CRUD
#SUMMARY: To verify that a todo task can be Created, Read, Updated, and Deleted.
#TAGS: Smoke
#NOTE: All tests will be performed task id 0. All comments marked with an * must be reviewed and modified accordingly.

# *Environment Config
URL="localhost"
PORT="8080"

echo "TEST SETUP"

# node start
curl -s http://$URL:$PORT/todo | grep 'QE tdolist'

# *test result variables
test1_result="PENDING"
test2_result="PENDING"
test3_result="PENDING"
test4_result="PENDING"

echo "========================================================================="
echo "TESTS"
# *Global Test Variables
data_input="test_api_1"
echo "========================================================================="
echo " "

echo "test 1  | Add task     | POST "

# SUMMARY: Add the first todo task.
# EXPECTED: The task is created.
# NOTE: If the task already exist, the test will continue to add duplicate tasks. See the respective log file for "Found. Redirecting to ..."

expected_result="$data_input"
test_run_result="reports/test-Suite_API_1.log"

# Test Execute
curl -d "newtodo=$data_input" http://$URL:$PORT/todo/add > $test_run_result

# Test Verification
curl -s http://$URL:$PORT/todo >> $test_run_result
responseTemp="$(grep "$data_input" $test_run_result)"
echo "EXPECTED: $expected_result"
echo "ACTUAL  : $responseTemp"

# Test Result Update
if [[ "$responseTemp" = *"$expected_result"* ]];
then
echo "PASS"
test1_result="PASS"
else
echo "FAIL"
test1_result="FAIL"
fi

# Test Teardown
responseTemp=0
echo "-------------------------------------------------------------------------"

echo "test 2  | Read tasks   | GET "
# SUMMARY : Add the first todo task.
# EXPECTED: The task exists
# NOTE    : 

expected_result="$data_input"
test_run_result="reports/test-Suite_API_2.log"

# Test Execute
curl http://$URL:$PORT/todo > $test_run_result

# Test Verification
responseTemp="$(grep "$data_input" $test_run_result)"
echo "EXPECTED: $expected_result"
echo "ACTUAL  : $responseTemp"

# Test Result Update
if [[ "$responseTemp" = *"$expected_result"* ]];
then
echo "PASS"
test2_result="PASS"
else
echo "FAIL"
test2_result="FAIL"
fi

# Test Teardown
responseTemp=0
echo "-------------------------------------------------------------------------"

echo "test 3  | Update tasks | POST"
# SUMMARY : Update value of an existing task.
# EXPECTED: The exisiting task assigned id 0 has a new value.
# NOTE    : 

expected_result="test_api_2"
test_run_result="reports/test-Suite_API_3.log"

# Test Execute
curl -d "edittodo=$expected_result" http://$URL:$PORT/todo/edit/0 > $test_run_result

# Test Verification
curl -s http://$URL:$PORT/todo >> $test_run_result
responseTemp="$(grep "$expected_result" $test_run_result)"
echo "EXPECTED: $expected_result"
echo "ACTUAL  : $responseTemp"

# Test Result Update
if [[ "$responseTemp" = *"$expected_result"* ]];
then
echo "PASS"
test3_result="PASS"
else
echo "FAIL"
test3_result="FAIL"
fi

# Test Teardown
responseTemp=0
echo "-------------------------------------------------------------------------"

echo "test 4  | Delete tasks | GET"
# SUMMARY : Delete an existing task.
# EXPECTED: The exisiting task assigned id 0 is deleted.
# NOTE    : 

expected_result="Found"
test_run_result="reports/test-Suite_API_4.log"

# Test Execute
curl http://$URL:$PORT/todo/delete/0 > $test_run_result

# Test Verification
curl -s http://$URL:$PORT/todo >> $test_run_result
responseTemp="$(grep "$expected_result" $test_run_result)"
echo "EXPECTED: $expected_result"
echo "ACTUAL  : $responseTemp"

# Test Result Update
if [[ "$responseTemp" = *"$expected_result"* ]];
then
echo "PASS"
test4_result="PASS"
else
echo "FAIL"
test4_result="FAIL"
fi

# Test Teardown
responseTemp=0
echo "-------------------------------------------------------------------------"

echo "========================================================================="
echo "TEST TEARDOWN"
#node stop

echo "========================================================================="
echo "API TEST RESULTS"
date
echo "Test 1: " $test1_result
echo "Test 2: " $test2_result
echo "Test 3: " $test3_result
echo "Test 4: " $test4_result
echo "========================================================================="
