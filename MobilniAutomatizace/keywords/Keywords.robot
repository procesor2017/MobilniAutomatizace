*** Settings ***
Documentation       Keywords for test alza app
Library             AppiumLibrary
Resource            Variables.robot
Library             Collections

*** Keywords ***
# ------------------------  Start applications -------------------------------------- #
Connect to Emulator
    [Documentation]                         Basic connections to android emulator
    set appium timeout                                                  40 seconds
    Open Application                        ${appium_server}
    ...                                     platformName=${platform}
    ...                                     deviceName=${adbDevice}
    ...                                     app=${appLocation}${apkName}
    ...                                     appPackage=${package_name}
    ...                                     appActivity=${AppMainActivity}
    ...                                     noReset=${resetoff}

# ------------------------  After start application -------------------------------------- #
Choose Store for shopping
    [Documentation]                         Deal with some informations
    wait until element is visible           cz.alza.eshop:id/row_rb   25
    click element                           ${select_country_btn}
    wait until element is visible           id=${privacy_ok_btn}
    click element                           id=${privacy_ok_btn}
    wait until element is visible           id=${welcome_screen_cls_btn}
    click element                           id=${welcome_screen_cls_btn}
    sleep                                   1s
    AppiumLibrary.Swipe                     1000  100  1000  100    2000

# ------------------------  LogIn / Registration -------------------------------------- #
Login
    Click on Left Menu
    Click on profile
    Input mail and pass to login

Click on Left Menu
    wait until element is visible           class=${drawer}
    click element                           class=${drawer}

Click on profile
    wait until element is visible           id=${profile_btn}
    click element                           id=${profile_btn}

Input mail and pass to login
    wait until element is visible           ${input_mail}
    input text                              ${input_mail}                   ${mail_txt}
    click element                           ${input_psswd}
    input text                              ${input_psswd}                  ${psswd_txt}
    # click element                         id=${login_btn}

Click on New registration
    wait until element is visible           id=${new_registration}
    click element                           id=${new_registration}

Input email, reg num. and password
    wait until element is visible           ${reg_mail}
    input text                              ${reg_mail}                     ${mail_txt}
    click element                           ${reg_number}
    input text                              ${reg_number}                   ${reg_num_val}
    click element                           ${reg_psswd}
    input text                              ${reg_psswd}                    ${psswd_txt}
    wait until element is visible           ${reg_psswd_again}
    click element                           ${reg_psswd_again}
    click element                           class=${back_btn}

# ------------------------  SearchItem -------------------------------------- #
Start Search Item
    [Documentation]                         Find ${SEARCH_VALUE} in alza shop
    [Arguments]                             ${SEARCH_VALUE}
    Click on search field
    Searched word                           ${SEARCH_VALUE}
    Click all result

Click on search field
    wait until element is visible           ${search_field}           25
    click element                           ${search_field}

Searched word
    [Arguments]                             ${SEARCH_VALUE}
    wait until element is visible           ${search_input_text}
    input text                              ${search_input_text}      ${SEARCH_VALUE}

Click all result
    wait until element is visible           id=${all_result_btn}
    click element                           id=${all_result_btn}

# ----------------------- Add item to cart ---------------------------- #

Add item to cart
    Add to cart
    Click on Cart icon
    Click on Continue

Add to cart
    wait until element is visible           id=${buy_btn}
    click element                           id=${buy_btn}

Delete selected items
    click element                           id=${del_count}

Click on Cart icon
    wait until element is visible           id=${cart_counter}
    click element                           id=${cart_counter}

# ----------------------- Buying ---------------------------- #
Click on Continue
    wait until element is visible           id=${add_btn}
    click element                           id=${add_btn}

Click on Delivery place
    wait until element is visible           id=${delivery_places_checkbox}
    click element                           id=${delivery_places_checkbox}

Click Agree
    wait until element is visible           id=${agree_btn}
    click element                           id=${agree_btn}

Choose payment method
    wait until element is visible           xpath=${payment_method}
    click element                           xpath=${payment_method}

Input name, adress, city
    input text                              id=${order_mail}                ${mail_txt}
    wait until element is visible           xpath=${order_name}
    click element                           xpath=${order_name}
    input text                              xpath=${order_name}             ${order_name_val}
    click element                           xpath=${order_name}
    input text                              xpath=${order_adres}            ${order_adres_val}
    click element                           xpath=${order_name}
    input text                              xpath=${order_city}             ${order_city_val}

Clear cart
    click element                           id=${cart_counter}
    wait until element is visible           id=${delete_cart}
    click element                           id=${delete_cart}
