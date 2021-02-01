# TEST CASES
## Project: QE todolist

### References:
[TEST PLAN](TESTPLAN.md)

## TESTS

### MANUAL TESTS

Test cases can be access at [Test Cases](test/cases)

ID | TITLE                                           | FEATURE            | LEVEL  | TYPE | STATUS | FILE                                            
-- | ----------------------------------------------- | ------------------ | ------ | ---- | ------ | ----------------------------------------------- 
1  | Create, Read, Update, and Delete a single task. | Manage tasks       | System | e2e  | Ready  | tc_1_sl_e2e_CRUD a todo item (style table 1).md 
1  | Create, Read, Update, and Delete a single task. | Manage tasks       | System | e2e  | Ready  | tc_1_sl_e2e_CRUD a todo item (style table 2).md 
1  | Create, Read, Update, and Delete a single task. | Manage tasks       | System | e2e  | Ready  | tc_1_sl_e2e_CRUD a todo item (style Gherkin).md 
2  | Create, Read, Update, and Delete a single task. | Manage tasks       | System | e2e  | Draft  | tc_2_sl_req_mobi_Create a todo item.md          
3  | Uninstall application from device.              | Manage Application | System | req  | Draft  | tc_3_sl_req_mobi_Uninstall application.md       


### AUTOMATED API TESTS

Test logs can be found at "_test/api/reports_"


ID | TITLE                                           | FEATURE         | LEVEL  | TYPE | STATUS | FILE                                            
-- | ----------------------------------------------- | --------------  | ------ | ---- | ------ | ----------------------------------------------- 
-  | TEST SUIT: API CRUD                             | Manage tasks    | System | e2e  | Ready  | test-Suite_API.sh
1  | Create a new Task                               | Manage tasks    | System | req  | Ready  | apitc_1_Add-task.sh
2  | Read list of created tasks                      | Manage tasks    | System | req  | Ready  | apitc_2_Read-task-list.sh
3  | Update the label of an exiting task.            | Manage tasks    | System | req  | Ready  | apitc_3_Update-task.sh
4  | Delete this task assigned to id=0.              | Manage tasks    | System | req  | Ready  | apitc_4_Delete-task.sh
