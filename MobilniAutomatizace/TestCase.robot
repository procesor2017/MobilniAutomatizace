*** Settings ***
Documentation    Suite description
Resource         Variables.robot
Resource         Keywords.robot
Test Setup       Run Keywords  Connect to Emulator  Choose Store for shopping
Test Teardown    Close Application


*** Test Cases ***
TC01 :: Login
    Click on Left Menu
    Click on profile
    Input mail and pass to login

TC02 :: Registration
    Click on Left Menu
    Click on profile
    Click on New registration
    Input email, reg num. and password

TC03 :: Search item
    Click on search field
    Searched word                       mi band
    Click all result

TC04 :: Order Item after searched
    Click on search field
    Searched word                       mi band
    Click all result
    Click on Cart icon
    Click on Continue
    Click on Delivery place
    Click Agree
    Choose payment method
    Click on Continue
    Input name, adress, city
    Clear cart
