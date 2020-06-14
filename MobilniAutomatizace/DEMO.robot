*** Settings ***
Library          AppiumLibrary
Library          SeleniumLibrary
Resource         Variables.robot
Resource         Keywords.robot

Suite Setup      Open Aplication
Suite Teardown   Quit Application

*** Test Cases ***

First open
    Open Aplication
AfterStart
    AfterStart
Search
    Search
Add to cart
    Add to cart
Registration
    Registration
Login
    Login
Order
    Order
Clear cart
    Clear cart




