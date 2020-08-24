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
    wait until element is visible         id=${select_country_btn}
    click element                         id=${select_country_btn}
    wait until element is visible         id=${privacy_ok_btn}
    click element                         id=${privacy_ok_btn}
   # wait until element is visible         id=${got_it_btn}
   # click element                         id=${got_it_btn}
    wait until element is visible         id=${welcome_screen_cls_btn}
    click element                         id=${welcome_screen_cls_btn}
    sleep  1s
    Swipe   1000  100  1000  100    2000

Search
    wait until element is visible         xpath=${search_field}
    click element                         xpath=${search_field}
    wait until element is visible         xpath=${search_input_text}
    #click element                         xpath=${search_input_text}
    input text  xpath=${search_input_text}   ${search_value}
    wait until element is visible         id=${all_result_btn}
    click element                         id=${all_result_btn}
 #   wait until element is visible         xpath=${search_sel_value}
 #   click element                         xpath=${search_sel_value}${val}

Add to cart
    wait until element is visible         id=${buy_btn}
    click element                         id=${buy_btn}

Delete selected items
    click element                         id=${del_count}

Order
    click element                         id=${cart_counter}
    wait until element is visible         id=${add_btn}
    click element                         id=${add_btn}
    wait until element is visible         id=${delivery_places_checkbox}
    click element                         id=${delivery_places_checkbox}
    wait until element is visible         id=${agree_btn}
    click element                         id=${agree_btn}

    wait until element is visible         xpath=${payment_method}
    click element                         xpath=${payment_method}
    wait until element is visible         id=${add_btn}
    click element                         id=${add_btn}
    input text  id=${order_mail}          ${mail_txt}
    wait until element is visible         xpath=${order_name}
    click element                         xpath=${order_name}
    input text  xpath=${order_name}       ${order_name_val}
    click element                         xpath=${order_name}
    input text  xpath=${order_adres}       ${order_adres_val}
    click element                         xpath=${order_name}
    input text  xpath=${order_city}       ${order_city_val}

Clear cart
    click element                         id=${cart_counter}
    wait until element is visible         id=${delete_cart}
    click element                         id=${delete_cart}


Login
    wait until element is visible         class=${drawer}
    click element                         class=${drawer}
    wait until element is visible         id=${profile_btn}
    click element                         id=${profile_btn}
    wait until element is visible         xpath=${input_mail}
    input text    xpath=${input_mail}     ${mail_txt}
    click element                         xpath=${input_psswd}
    input text    xpath=${input_psswd}    ${psswd_txt}
    #click element                         id=${login_btn}
    sleep  2s

Registration
    wait until element is visible         class=${drawer}
    click element                         class=${drawer}
    wait until element is visible         id=${profile_btn}
    click element                         id=${profile_btn}
    wait until element is visible         id=${new_registration}
    click element                         id=${new_registration}
    wait until element is visible         xpath=${reg_mail}
    input text    xpath=${reg_mail}       ${mail_txt}
    click element                         xpath=${reg_number}
    input text    xpath=${reg_number}     ${reg_num_val}
    click element                         xpath=${reg_psswd}
    input text    xpath=${reg_psswd}      ${psswd_txt}
    click element                         xpath=${reg_psswd_again}
    input text    xpath=${reg_psswd_again}      ${psswd_txt}
    click element                         class=${back_btn}