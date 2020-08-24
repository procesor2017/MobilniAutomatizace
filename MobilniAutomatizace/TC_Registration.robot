*** Settings ***
Library          AppiumLibrary
Resource         Variables.robot
Resource         Keywords.robot

Test Setup       Open Aplication
Test Teardown    Close Application
*** Test Cases ***
Registration
    afterstart
    Registration

*** Keywords ***
