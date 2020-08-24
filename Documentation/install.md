# Install
You need these tools for proper installation

## What do you need?
Requirements:
 - [JDK](https://www.oracle.com/java/technologies/javase-downloads.html)

For code:
 - [RobotFramework](https://pypi.org/project/robotframework/) `pip install robotframework`
 - [AppiumLibrary](https://pypi.org/project/robotframework-appiumlibrary/) `pip install robotframework-appiumlibrary`

For connect to emulator:
 - [Appium](http://appium.io/) = tool for creating bridge between emulator and RF
 
Emulator 
Choose emulator (You need just one)
 - [Android stuido](https://developer.android.com/studio/?gclid=Cj0KCQjwp4j6BRCRARIsAGq4yMHpvFNvg_IU593fW9QnnwgMbFXMyVT_39YvqW6sCB4V4d_o4TdulY8aAqlIEALw_wcB&gclsrc=aw.ds) = Tool for using AVD (Tool for emulator)
 - [Genymotion](https://www.genymotion.com/) = Free just for personal usage
 
## How to install tools
### Install JDK
 - Go to [JDK](https://www.oracle.com/java/technologies/javase-downloads.html) and download JDK (Click on download on JDK and scroll down)
 - Run the downloaded installer, which install JDK and JRE (Deafult folder is C:\Program Files\Java\jdk-numberOfYourVersion)
 - Now we need include Directory to the path 
    - In Search, search for and then select: System
    - Click the Advanced system settings link.
    - Click Environment Variables. 
    - Click on New and put Variable: JAVA_HOME path: folder with path, where you installed JDK (Previously step). Click OK
    <img src="/IMG/jdkSystemEnv.PNG" width="685" height="309"></img>
    - In the section System Variables, find the PATH environment variable and select it. Click Edit. If the PATH environment variable does not exist, click New.
    - In the Edit System Variable (or New System Variable) window, click on new and put path to bin directory in your JDK C:\Program Files\Java\jdk-numberOfYourVersion\bin
    
    <img src="/IMG/bin.PNG" width="604" height="661"></img> 
    - Reopen CMD and type java and press enter
    - You should see able argument for java
  
### Install Appium
 - Go to [Appium](http://appium.io/)
 - Download and install Appium desktop

### Install Android studio and prepare emulator
 - Go to [Android stuido](https://developer.android.com/studio/?gclid=Cj0KCQjwp4j6BRCRARIsAGq4yMHpvFNvg_IU593fW9QnnwgMbFXMyVT_39YvqW6sCB4V4d_o4TdulY8aAqlIEALw_wcB&gclsrc=aw.ds)
 - Download and install Android studio
 - Start Android Studio
 - For full setup with image, click [here](https://developer.android.com/studio/run/managing-avds)
 - In Android Studio, select Tools > Android > AVD Manager, or click on the AVD Manager icon in the toolbar.
    - The AVD Manager screen shows your current virtual devices.
    - Click the Create Virtual Device button then click Next.
    - Select the desired system version for the AVD adn click Next.
    - Choose a Release Name, must be Android 4.0.3 or higher, from the table and click Next.
    - Type in an Name for your emulator in the text box next to AVD Name.
    - Ensure Use Host GPU is checked and click Finish
 - Create System Variables (Same as in previously step in Java)
    - In System Variables click on New
    - Name: ANDROID_HOME Path: C:\Users\UserName\AppData\Local\Android\Sdk
     <img src="/IMG/andHome.PNG" width="781" height="459"></img>
 

## How to start and connect RF + Appium + Emulator
 - Start AVD manager => Your Virtual Devices => Start your emulator
 - Start Appium
   - If you need you can setUp Environment Variables before start Server, under Edit Configurations button. This is usefull if you cant set Up System Variables in windows settings.
   <img src="/IMG/appiumConf.PNG" width="803" height="981">
   - Click Start Server
   - Click on Start Inspector Session (Magnifier in top right corner) 
   - We need set up Desired Capabilities
    - SetUp platformName  Android and deviceName name your emulator (From AVD manager)
    <img src="/IMG/appiumSetUp.PNG" width="665" height="351"></img>   
   - Click on start session
   - CG you can see inspector for exploring path in android system
