# MobilniAutomatizace
Nainstalované Android studio (není podmínkou ale výhodou - lze použít emulator a uiautomator viewer pro hledani ID elementů)

POUŽITÝ EMULATOR: https://www.genymotion.com/download/ (je potřeba mít Virtual box)

Appium server: v1.13.0

ZDROJ APK: https://apkpure.com/alza/cz.alza.eshop

Ve Variables.robot je případně potřeba změnit: 

${appium_server}    http://localhost:4723/wd/hub  (toto by mělo být výchozí nastavení)

${platform}         Android
${adbDevice}        192.168.209.101:5555   (toto je zarizeni emularotu, da se zjistit pres příkazový řádek "ADB DEVICES" )

${appLocation}      C:\\AndroidApps\\      (zde je potřeba zmenit cestu k danému APK)

${apkName}          ALZA.apk               (název APK balíčku)

${package_name}     cz.alza.eshop          (Upřesňující nastavení pro specifikaci APK pro otevření aplikace)

${AppMainActivity}  cz.alza.eshop.common.activity.proxy.HomeProxyActivity   (Upřesňující nastavení pro specifikaci APK pro otevření aplikace)

V případě, spouštění aplikaci se smazanými daty je třeba ve variables nastavit
${resetoff}         false
