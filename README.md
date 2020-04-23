## Automation Test Mobile
  Projeto de automação utilizando Ruby e Appium e Sauce Labs


## Environment Configuration
**Install**
    - Java (last version):
      - https://docs.azul.com/zulu/zuludocs/ZuluUserGuide/InstallingZulu/InstallOnLinuxUsingAPTRepository.htm

    - Java (1.8.0_231 usado pelo Appium):
      - https://www.oracle.com/technetwork/java/javase/8u231-relnotes-5592812.html
      Obs: Extrair pasta e cola no path /usr/lib/jvm     

    - Node:
      - https://nodejs.org/en/

    - Android Studio:      
      - https://developer.android.com/studio

      Obs: Seguir passo a passo

    - Ruby
      - https://www.ruby-lang.org/pt/

    - Appium
      - http://appium.io/

    - Appium inpect
      - Deve renomear a pasta /home/<profileuser>/Android/Sdk para /home/<profileuser>/Android/sdk
      - aapt????
      - adb???


## Configuration Project to execute LOCAL HOST

## Created environment variable
        **Include variable in ~/.bash_profile** <br>
        - export ANDROID_HOME=/home/brunoaraujo/Android/sdk
        - export PATH=$PATH:"$PWD":"$ANDROID_HOME/build-tools/29.0.3"
        - export PATH=$PATH:"$PWD":"$ANDROID_HOME/platform-tools"
        - export PATH=$PATH:"$PWD":"$ANDROID_HOME/emulator"

      **Project** <br>

          *cucumber.yml*
           -  "android":
                  "platformName": "Operation System Mobile"
                  "platformVersion": "Version Operation System Mobile"
                  "udid": "Id device real"
                    - Command Line: adb devices
                        List of devices attached
                          0049195854	device
                  "deviceName": "Define name for device"
                  "app": "Name apk or ipa, located in folder service > binary"
                  "timeouts_wait": "Tempo de espera para o elemento ficar visivel na tela"

## Install Dependency
         **Command Line:** <br>
            - gem install bundler
            - bundle install

          **Create Emulator**
             - Open Android Studio
             - Click Device Virtual Android(AVD)
             - Create Virtual Device
             - Select anyone device
             - Download image, example: Nougat 9
             - Next
             - Finish


## Configuration Project to execute SAUCE LABS
    - Create aaccount free trial in Sauce Labs,
       - https://saucelabs.com/sign-up

    - Get sauce_username and  sauce_access_key
       - After login click in Account > User  Settings
       - In categoria Driver Creation copy driver available just sauce_username, sauce_access_key and port   
       - And in file cucumber.yml past sauce_username, sauce_access_key and port
            Obs: deviceName: If account is free trial just available for test  

            **deviceName: "Android GoogleAPI Emulator"
             platformName: "Android"
             platformVersion: "9.0"**

    - Can you see live execution in AUTOMATED > Test Results          


## Run project
  **Todos os cenários**
    - cucumber

  **Por tag**
    - cucumber -t @tag
