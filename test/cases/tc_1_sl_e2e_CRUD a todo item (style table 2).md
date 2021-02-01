**ID**              : 1

**FEATURE**         : Manage tasks

**TITLE**           : Create, Read, Update, and Delete a single task.

**OBJECTIVE**       : Verify that the user can successfully create a new task, then change the label of the task, and then delete the task.

**STATUS**          : Ready

**LEVEL**           : System

**TYPE**            : End-to-End

**DATE**            : 01-02-2021 14:30

**RESULT**          : PASS

**REFERENCES**      :

1. Req5. Should be able to add todo items.
2. Req6. Should be able to delete todo items 
3. Req7. Should be able to edit todo items 

**NOTES**           :

----

**PRECONDITIONS**   :

_See the Test Plan for detailed information._

1. Node.js instance running the application under test.
2. Any supported browser.
3. On page of the base URL.

----

**EXECUTE**         :

STEP |-             | -                                                               |
---- |------------- |---------------------------------------------------------------  |
1    |**ACTION**    | Enter "test task 1" in the textbox field.                       |
     |**EXPECTED**  | Text value excepted.                                            |
     |**ACTUAL**    | As per expected.                                                |
     |**RESULT**    | PASS                                                            |
     |**REFERENCES**| -                                                               |
     |**COMMENTS**  | -                                                               |
---- |--------------| ----------------------------------------------------------------|
2    |**ACTION**    | Submit the entry.                                               |
     |**EXPECTED**  | A new task "test task 1" is listed.                             |
     |**ACTUAL**    | As per expected.                                                |
     |**RESULT**    | PASS                                                            |
     |**REFERENCES**| Req5                                                            |
     |**COMMENTS**  | -                                                               |
---- |--------------| ----------------------------------------------------------------|
3    |**ACTION**    | Enter "test task 2.2" in the textbox of the newly created task. |
     |**EXPECTED**  | A new task "test task 1" is listed.                             |
     |**ACTUAL**    | As per expected.                                                |
     |**RESULT**    | PASS                                                            |
     |**REFERENCES**| Req5                                                            |
     |**COMMENTS**  | -                                                               |
---- |--------------| ----------------------------------------------------------------|
4    |**ACTION**    | Submit the update value entry.                                  |
     |**EXPECTED**  | The "test task 1" updates to "test task 2.2".                   |
     |**ACTUAL**    | As per expected.                                                |
     |**RESULT**    | PASS                                                            |
     |**REFERENCES**| Req7                                                            |
     |**COMMENTS**  | -                                                               |
---- |--------------| ----------------------------------------------------------------|
5    |**ACTION**    | Delete the created task.                                        |
     |**EXPECTED**  | The chosen task is not visible.                                 |
     |**ACTUAL**    | As per expected.                                                |
     |**RESULT**    | PASS                                                            |
     |**REFERENCES**| Req5                                                            |
     |**COMMENTS**  | -                                                               |
---- |--------------| ----------------------------------------------------------------|

----

**TEARDOWN**        :

_See the Test Plan for detailed information._

No special requirements.

----

----


