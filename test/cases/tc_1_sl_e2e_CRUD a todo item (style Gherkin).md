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

Scenario: User successfully Create a single task
Given the User is on the main page
And no tasks exists
When the User create a new task with the label test1
Then the System must create a list
And the list must display the task
And the task label is test1


----

**TEARDOWN**        :

_See the Test Plan for detailed information._

No special requirements.

----


