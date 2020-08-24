*** Settings ***
Library          AppiumLibrary
Resource         Variables.robot
Resource         Keywords.robot

*** Keywords ***



Login
    wait until element is visible         class=${drawer}
    click element                         class=${drawer}
    wait until element is visible         id=${profile_btn}
    click element                         id=${profile_btn}
    wait until element is visible         xpath=${input_mail}
    #click element                         xpath=${input_mail}
    input text    xpath=${input_mail}     ${mail_txt}
    click element                         xpath=${input_psswd}
    input text    xpath=${input_psswd}    ${psswd_txt}
    click element                         id=${login_btn}
    sleep  2s