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

**-- Scenario : Create --**

Scenario: User successfully Create a single task

Given the User is on the main page

And no tasks exists

When the User enter the a label test1

And Submit the form

Then the System must create a list

And the list must display the task

And the task label is test1

**-- Scenario : Update --**

Scenario: User successfully Update a single existing task

Given the User is on the main page

And at least one task exist

When the User decide on the task to Update

And enter the new label test2

And Update the form

Then the System must Update the label for the chosen task to test2


**-- Scenario : Delete --**

Scenario: User successfully Delete a single exiting task

Given the User is on the main page

And at least one task exist
When the User decide on a task to Delete

And then Delete the chosen task

Then the System Delete the task

And the task is removed from the list


----

**TEARDOWN**        :

_See the Test Plan for detailed information._

No special requirements.

----


