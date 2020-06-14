*** Settings ***
Library          AppiumLibrary
Library          SeleniumLibrary
Resource         Variables.robot
Resource         Keywords.robot

Test Setup       Open Aplication
Test Teardown    Close Application
*** Test Cases ***
Login
    Login

*** Keywords ***
Login
    AppiumLibrary.wait until element is visible         class=${drawer}
    AppiumLibrary.click element                         class=${drawer}
    AppiumLibrary.wait until element is visible         id=${profile_btn}
    AppiumLibrary.click element                         id=${profile_btn}
    AppiumLibrary.wait until element is visible         xpath=${input_mail}
    #AppiumLibrary.click element                         xpath=${input_mail}
    AppiumLibrary.input text    xpath=${input_mail}     ${mail_txt}
    AppiumLibrary.click element                         xpath=${input_psswd}
    AppiumLibrary.input text    xpath=${input_psswd}    ${psswd_txt}
    AppiumLibrary.click element                         id=${login_btn}
    sleep  2s