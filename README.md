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


## Configuration Project

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
                  "automationName": "uiautomator2"
                  "deviceName": "Define name for device"
                  "app": "Name apk or ipa, located in folder service > binary"
                  "timeouts_wait": "Tempo de espera para o elemento ficar visivel na tela"

## Install Dependency
         **Command Line:** <br>
            - gem install bundle
            - bundle install

          **Create Emulator**
             - Open Android Studio
             - Click Device Virtual Android(AVD)
             - Create Virtual Device
             - Select anyone device
             - Download image, example: Nougat 9
             - Next
             - Finish

## Run project
  **Todos os cenários**
    - cucumber
  **Por tag**
    - cucumber -t @tag
