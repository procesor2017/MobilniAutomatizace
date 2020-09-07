# Mobile Automation
## Basic info
Custom test for example how to testing mobile app

## Folders
### Documentation/Install.md
In Documentation directory you can find install.md, where you have guides how to install JDK, AVD, Appium atd.
If you never used Appium or Emulator, watch these folder

### MobilniAutomatizace
There you find TC for alza mobile app, which you can download [here](https://apkpure.com/alza/cz.alza.eshop).

## How to start test
In Variables.robot change these value:
 - ${appLocation} = path to folder where you have aplication
 - ${apkName} = Name Alza aplication

If you specialy setUp your appium (Change port etc.) change:
 - ${appium_server} = Change on the port which you change

If you want to start your aplication. You must change:
 - ${package_name} = Main package names
 - ${AppMainActivity} = Set mainActivity class
 
## Tips
- [Video shows how its work](https://drive.google.com/file/d/1n2av5wsc0WEVptNb3jlXCkdRnaWwRpIL/view?usp=sharing)
- [How to find id elements with UIautomater](https://www.youtube.com/watch?v=M3G9MvwVOd8&t=370s)  
- [How to use Appium Desktop Inspector to find Object Locators](https://www.youtube.com/watch?v=P2lM4NY4CTU)
- [Full video tutorial for testing mobile app](https://www.youtube.com/playlist?list=PLhW3qG5bs-L8npSSZD6aWdYFQ96OEduhk)