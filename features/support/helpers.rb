require_relative 'constants.rb'


def desired_capabilities(deviceName, udid, platformName, platformVersion, app)

  opts = {
         caps: {
             deviceName: deviceName,
             udid: udid,
             platformName: platformName,
             platformVersion: platformVersion,
             noReset: false,
             clearSystemFiles: true,
             fullReset: true,
             automationName: "uiautomator2",
             autoGrantPermissions: true,
             # appWaitActivity: "br.com.ingresso.ui.activities.SplashActivity",
             autoAcceptAlerts: true,
             app: "#{PATH_BINARY}/#{app}",
             newCommandTimeout: 30000,
             uiautomator2ServerLaunchTimeout: 30000,
             uiautomator2ServerInstallTimeout: 30000,
             nativeInstrumentsLib: false
         },
         appium_lib: {
             wait_interval: 1
         }
     }

end
