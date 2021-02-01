# Todo list exercise

## Getting started
- Make sure Git (https://git-scm.com/) is installed
- Install Node.js (https://nodejs.org/en/)
- In the extracted project root folder, run `npm install`

### Run the application in node.js
- Run `node app.js` in the project root folder
- Visit http://localhost:8080 in your browser

### Run the application in docker
- Install Docker: https://docs.docker.com/.
- To build docker image: `docker build -t qe-todolist .`
- To run docker image: `docker run -p 8081:8080 -d qe-todolist`
- Navigate to `http://localhost:8081` to see the app running in docker.
- To stop docker image: `docker ps` grab the Container ID corresponding with the 'qe-todolist' image then `docker stop ${ContainerID}` with `${ContainerID}` replaced with the actual value.

## Application requirements
### Currently implemented requirements
1. Application must be able to deploy in docker
2. Multiple users should be able to view the shared public todo list (no live updates, only on refresh)
3. Todo list items should persist after browser refresh
4. Todo items should not be able to be empty
5. Should be able to add todo items
6. Should be able to delete todo items
7. Should be able to edit todo items

### Future requirements (not implemented)
8. The application (frontend only) should be ported to Cordova and run as a mobile application.
9. The application backend should run in Kubernetes on a 3 node cluster with multiple replicas of each pod.
  - Should be able to do rolling updates on the backend service without downtime
  - Application should be self healing after network issues, node outages, node restarts and other issues

## Assessment tasks:
1. Create a test plan for the Todo application, making sure that the first 7 application requirements are covered.
  - The test plan should be written in Markdown (similar to this readme) or Gherkin and be located in the test directory. Please commit all work files to git.
  - The test plan should include all steps necessary to configure, execute and validate test cases.
  - Each test case can be manual and/or automated.
  - The test plan can be written for the frontend or for the backend (or both if you choose to, but doing the test plan for only 1 of them is sufficient). Please specify in the test plan if you are focussing on the frontend or backend. For the backend, the `api` is relatively simple; please use the `app.js` and `views/todo.ejs` files in addition to the network traffic to gain a better understanding.
  - Tools such as Cucumber.js, Selenium, Curl, Insomnia or any other can be used, as long as it can be committed to Git as configuration/code. Please commit all files necessary to complete the test plan and include steps in the test plan on how to use these files.
  - Add a link to this test plan Markdown/Gherkin file in this readme in the `Assessment answers` section below.
2. Try to find bugs in the current verion of the application. There is at least 1, maybe more, bug(s) in the todo application.
  - If you find any issues, please create a Markdown file that contains the expected behaviour, current behaviour and recreation steps. Please commit this file to git.
  - Add a link to this Markdown/Gherkin file in this readme in the `Assessment answers` section below. 
3. (Optional) Extend the test plan to cover the 8th future requirement. These can be high level descriptions of test cases and overall testing strategy only.
  - Add a link to this Markdown/Gherkin file in this readme in the `Assessment answers` section below. Please commit this file/changes to git.
4. (Optional) Extend the test plan to cover the 9th future requirement. These can be high level descriptions of test cases and overall testing strategy only.
  - Add a link to this Markdown/Gherkin file in this readme in the `Assessment answers` section below. Please commit this file/changes to git.

## Assessment answers:
1. <Add link to test plan Markdown/Gherkin file from task 1> [Test Plan](TESTPLAN.md)
2. <Add link to bug report Markdown/Gherkin file(s) from task 2> [Bugs](bugs/bug_1_s1_Spelling-error-of-application-name-in-titlebar.md)
3. <Add link to test plan Markdown/Gherkin file/section from task 3> [Tests](TESTS.md)
4. <Add link to test plan Markdown/Gherkin file/section from task 4> [Optional](test/cases/tc_3_sl_req_mobi_Uninstall-application.md)
