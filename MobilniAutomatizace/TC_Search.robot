*** Settings ***
Library          AppiumLibrary
Resource         Variables.robot
Resource         Keywords.robot

Test Setup       Open Aplication
#Test Teardown    Close Application
*** Test Cases ***
TC_Search
    Search
*** Keywords ***
Search
    wait until element is visible         xpath=${search_field}
    click element                         xpath=${search_field}
    wait until element is visible         xpath=${search_input_text}
    #click element                         xpath=${search_input_text}
    input text  xpath=${search_input_text}   ${search_value}
    wait until element is visible         id=${all_result_btn}
    click element                         id=${all_result_btn}
    wait until element is visible         xpath=${search_sel_value}
    click element                         xpath=${val}






