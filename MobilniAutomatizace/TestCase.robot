*** Settings ***
Documentation    Example TC with basic solution for testing mobile app
Resource         keywords/Variables.robot
Resource         keywords/Keywords.robot
Test Setup       Run Keywords  Connect to Emulator  Choose Store for shopping
Test Teardown    Close Application


*** Test Cases ***
TC01 :: Login
    [Tags]                              tc01    Log
    Click on Left Menu
    Click on profile
    Input mail and pass to login

TC02 :: Registration
    [Tags]                              tc02    Reg
    Click on Left Menu
    Click on profile
    Click on New registration
    Input email, reg num. and password

TC03 :: Search item
    [Tags]                              tc03    SearchItem
    Click on search field
    Searched word                       mi band
    Click all result
    Add item to cart

TC04 :: Order Item after searched
    [Tags]                              tc04    E2E
    Start Search Item                   mi band
    Add item to cart
    Click on Delivery place
    Click Agree
    Choose payment method
    Click on Continue
