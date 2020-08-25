*** Settings ***
Library  AppiumLibrary
Resource  Keywords.robot


*** Variables ***
#connection to emulator
${appium_server}    http://localhost:4723/wd/hub
${platform}         Android
${adbDevice}        192.168.209.101:5555
${appLocation}      C:\\AndroidApps\\
${apkName}          ALZA.apk

${package_name}     cz.alza.eshop
${AppMainActivity}  cz.alza.eshop.common.activity.proxy.HomeProxyActivity
${resetoff}         false

#Choose Store for shopping
${select_country_btn}      cz.alza.eshop:id/choose_shop_btn
${privacy_ok_btn}          cz.alza.eshop:id/action_btn
${got_it_btn}              android:id/ok
${welcome_screen_cls_btn}  cz.alza.eshop:id/close_btn
${drawer_menu}             cz.alza.eshop:id/menu_vg

#Login
${drawer}                  android.widget.ImageButton
${profile_btn}             cz.alza.eshop:id/user_info_header
${input_mail}              /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText
${input_psswd}             /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText
${login_btn}               cz.alza.eshop:id/login_btn

${mail_txt}                mobilniautomatizace@gmail.com
${psswd_txt}               Tesena2020


#Search
${search_field}            /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout
${search_input_text}       /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.EditText
# ${search_value}            mi band
${all_result_btn}          cz.alza.eshop:id/show_all_results_btn
${search_sel_value}        //android.widget.FrameLayout
${val}                     [@index=5]


#Add to cart
${adv}                     cz.alza.eshop:id/advertisements_tv
${buy_btn}                 cz.alza.eshop:id/buy_bwd
${cart_counter}            cz.alza.eshop:id/badge_cart_iv

#Order
${add_btn}                 cz.alza.eshop:id/continue_btn
${cart_next}               cz.alza.eshop:id/cart1_list
${delivery_places_checkbox}  cz.alza.eshop:id/del_pay_item_cb
${agree_btn}               android:id/button1

${payment_method}           /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout[1]/android.widget.CheckBox  #//android.widget.CheckBox[2]

#/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout[1]/android.widget.CheckBox
#/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout[1]

${order_mail}              cz.alza.eshop:id/value_et
${order_name}              /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText
${order_name_val}           Tesena Test
${order_adres}             /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText
${order_adres_val}          Tesena Academy
${order_city}              /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText
${order_city_val}           Tesena town

#Delete cart
${del_count}               cz.alza.eshop:id/dec_vg
${delete_cart}             cz.alza.eshop:id/remove_iv

#Registration
${new_registration}         cz.alza.eshop:id/register_tv
${reg_mail}                 cz.alza.eshop:id/form_login
${reg_number}               cz.alza.eshop:id/form_phone
${reg_psswd}                cz.alza.eshop:id/form_password
${reg_psswd_again}          cz.alza.eshop:id/form_password_again


${reg_num_val}              123456789
${back_btn}                 android.widget.ImageButton


