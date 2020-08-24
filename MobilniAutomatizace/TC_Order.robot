*** Settings ***
Library          AppiumLibrary
Resource         Variables.robot
Resource         Keywords.robot


Test Setup       Open Aplication
Test Teardown    Close Application
*** Test Cases ***
Order
    Search
    add to cart
    Order
    Clear cart
*** Keywords ***
