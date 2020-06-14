*** Settings ***
Library          AppiumLibrary
Library          SeleniumLibrary
Resource         Variables.robot
Resource         Keywords.robot

Test Setup       Open Aplication
Test Teardown    Close Application

*** Test Cases ***
Add to cart
    search
    add to cart
    Delete selected items
*** Keywords ***
