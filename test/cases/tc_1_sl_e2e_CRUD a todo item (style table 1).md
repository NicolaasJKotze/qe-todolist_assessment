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


STEP | ACTION                                                           | EXPECT                                        | ACTUAL                           | RESULT    | REFERENCES | COMMENT 
---- | ---------------------------------------------------------------  | --------------------------------------------- | -------------------------------- | --------- | -----------| -------
1    | Enter "test task 1" in the textbox field.                        | Text value excepted.                          | As per expected.                 | PASS      | -          | -
2    | Submit the new task entry.                                       | A new task "test task 1" is listed.           | As per expected.                 | PASS      | Req5       | -
3    | Enter "test task 2.2" in the textbox of the newly created task.  | Text value excepted.                          | As per expected.                 | PASS      | -          | -
4    | Submit the update value entry.                                   | The "test task 1" updates to "test task 2.2". | As per expected.                 | PASS      | Req7       | -
5    | Delete the created task.                                         | The chosen task is not visible.               | As per expected.                 | PASS      | Req6       | -

----

**TEARDOWN**        :

_See the Test Plan for detailed information._

No special requirements.

----


