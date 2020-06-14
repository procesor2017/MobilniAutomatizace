*** Settings ***
Library          SeleniumLibrary
Library          AppiumLibrary
Resource         Variables.robot
Library          Collections

*** Keywords ***
Open Aplication
    Open Application    ${appium_server}
    ...                 platformName=${platform}
    ...                 deviceName=${adbDevice}
    ...                 app=${appLocation}${apkName}
    ...                 appPackage=${package_name}
    ...                 appActivity=${AppMainActivity}
    ...                 noReset=${resetoff}

AfterStart
    AppiumLibrary.wait until element is visible         id=${select_country_btn}
    AppiumLibrary.click element                         id=${select_country_btn}
    AppiumLibrary.wait until element is visible         id=${privacy_ok_btn}
    AppiumLibrary.click element                         id=${privacy_ok_btn}
   # AppiumLibrary.wait until element is visible         id=${got_it_btn}
   # AppiumLibrary.click element                         id=${got_it_btn}
    AppiumLibrary.wait until element is visible         id=${welcome_screen_cls_btn}
    AppiumLibrary.click element                         id=${welcome_screen_cls_btn}
    sleep  1s
    AppiumLibrary.Swipe   1000  100  1000  100    2000

Search
    AppiumLibrary.wait until element is visible         xpath=${search_field}
    AppiumLibrary.click element                         xpath=${search_field}
    AppiumLibrary.wait until element is visible         xpath=${search_input_text}
    #AppiumLibrary.click element                         xpath=${search_input_text}
    AppiumLibrary.input text  xpath=${search_input_text}   ${search_value}
    AppiumLibrary.wait until element is visible         id=${all_result_btn}
    AppiumLibrary.click element                         id=${all_result_btn}
 #   AppiumLibrary.wait until element is visible         xpath=${search_sel_value}
 #   AppiumLibrary.click element                         xpath=${search_sel_value}${val}

Add to cart
    AppiumLibrary.wait until element is visible         id=${buy_btn}
    AppiumLibrary.click element                         id=${buy_btn}

Delete selected items
    AppiumLibrary.click element                         id=${del_count}

Order
    AppiumLibrary.click element                         id=${cart_counter}
    AppiumLibrary.wait until element is visible         id=${add_btn}
    AppiumLibrary.click element                         id=${add_btn}
    AppiumLibrary.wait until element is visible         id=${delivery_places_checkbox}
    AppiumLibrary.click element                         id=${delivery_places_checkbox}
    AppiumLibrary.wait until element is visible         id=${agree_btn}
    AppiumLibrary.click element                         id=${agree_btn}

    AppiumLibrary.wait until element is visible         xpath=${payment_method}
    AppiumLibrary.click element                         xpath=${payment_method}
    AppiumLibrary.wait until element is visible         id=${add_btn}
    AppiumLibrary.click element                         id=${add_btn}
    AppiumLibrary.input text  id=${order_mail}          ${mail_txt}
    AppiumLibrary.wait until element is visible         xpath=${order_name}
    AppiumLibrary.click element                         xpath=${order_name}
    AppiumLibrary.input text  xpath=${order_name}       ${order_name_val}
    AppiumLibrary.click element                         xpath=${order_name}
    AppiumLibrary.input text  xpath=${order_adres}       ${order_adres_val}
    AppiumLibrary.click element                         xpath=${order_name}
    AppiumLibrary.input text  xpath=${order_city}       ${order_city_val}

Clear cart
    AppiumLibrary.click element                         id=${cart_counter}
    AppiumLibrary.wait until element is visible         id=${delete_cart}
    AppiumLibrary.click element                         id=${delete_cart}


Login
    AppiumLibrary.wait until element is visible         class=${drawer}
    AppiumLibrary.click element                         class=${drawer}
    AppiumLibrary.wait until element is visible         id=${profile_btn}
    AppiumLibrary.click element                         id=${profile_btn}
    AppiumLibrary.wait until element is visible         xpath=${input_mail}
    AppiumLibrary.input text    xpath=${input_mail}     ${mail_txt}
    AppiumLibrary.click element                         xpath=${input_psswd}
    AppiumLibrary.input text    xpath=${input_psswd}    ${psswd_txt}
    #AppiumLibrary.click element                         id=${login_btn}
    sleep  2s

Registration
    AppiumLibrary.wait until element is visible         class=${drawer}
    AppiumLibrary.click element                         class=${drawer}
    AppiumLibrary.wait until element is visible         id=${profile_btn}
    AppiumLibrary.click element                         id=${profile_btn}
    AppiumLibrary.wait until element is visible         id=${new_registration}
    AppiumLibrary.click element                         id=${new_registration}
    AppiumLibrary.wait until element is visible         xpath=${reg_mail}
    AppiumLibrary.input text    xpath=${reg_mail}       ${mail_txt}
    AppiumLibrary.click element                         xpath=${reg_number}
    AppiumLibrary.input text    xpath=${reg_number}     ${reg_num_val}
    AppiumLibrary.click element                         xpath=${reg_psswd}
    AppiumLibrary.input text    xpath=${reg_psswd}      ${psswd_txt}
    AppiumLibrary.click element                         xpath=${reg_psswd_again}
    AppiumLibrary.input text    xpath=${reg_psswd_again}      ${psswd_txt}
    AppiumLibrary.click element                         class=${back_btn}