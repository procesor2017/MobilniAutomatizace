*** Settings ***
Library          AppiumLibrary
Library          SeleniumLibrary
Resource         Variables.robot
Resource         Keywords.robot

Test Setup       Open Aplication
#Test Teardown    Close Application
*** Test Cases ***
TC_Search
    Search
*** Keywords ***
Search
    AppiumLibrary.wait until element is visible         xpath=${search_field}
    AppiumLibrary.click element                         xpath=${search_field}
    AppiumLibrary.wait until element is visible         xpath=${search_input_text}
    #AppiumLibrary.click element                         xpath=${search_input_text}
    AppiumLibrary.input text  xpath=${search_input_text}   ${search_value}
    AppiumLibrary.wait until element is visible         id=${all_result_btn}
    AppiumLibrary.click element                         id=${all_result_btn}
    AppiumLibrary.wait until element is visible         xpath=${search_sel_value}
    AppiumLibrary.click element                         xpath=${val}






