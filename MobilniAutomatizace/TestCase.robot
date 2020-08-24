*** Settings ***
Documentation    Suite description
Resource         keywords/Variables.robot
Resource         keywords/Keywords.robot
Test Setup       Run Keywords  Connect to Emulator  Choose Store for shopping
Test Teardown    Close Application


*** Test Cases ***
TC01 :: Login
    [Tags]                          tc01
    Click on Left Menu
    Click on profile
    Input mail and pass to login

TC02 :: Registration
    [Tags]                          tc02
    Click on Left Menu
    Click on profile
    Click on New registration
    Input email, reg num. and password

TC03 :: Search item
    [Tags]                          tc03
    Click on search field
    Searched word                       mi band
    Click all result

TC04 :: Order Item after searched
    [Tags]                          tc04
    Click on search field
    Searched word                       mi band
    Click all result
    Add to cart
    Click on Cart icon
    Click on Continue
    Click on Delivery place
    Click Agree
    Choose payment method
    Click on Continue
    Input name, adress, city
    Clear cart
