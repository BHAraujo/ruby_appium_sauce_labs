require_relative 'constants.rb'


def desired_capabilities_local_host(deviceName, udid, platformName, platformVersion, app)

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
             autoAcceptAlerts: true,
             app: "#{PATH_BINARY}/#{app}",
             newCommandTimeout: 120000,
             uiautomator2ServerLaunchTimeout: 120000,
             uiautomator2ServerInstallTimeout: 120000,
             nativeInstrumentsLib: false
         },
         appium_lib: {
             wait_interval: 1
         }
     }

end


def desired_capabilities_sauce_labs(deviceName, platformName, platformVersion,
                                    app, port, sauce_username, sauce_access_key)

  opts = {
         caps: {
             deviceName: deviceName,
             platformName: platformName,
             platformVersion: platformVersion,
             noReset: false,
             clearSystemFiles: true,
             fullReset: true,
             automationName: "uiautomator2",
             appiumVersion: "1.15.0",
             autoGrantPermissions: true,
             autoAcceptAlerts: true,
             app: "#{app}",
             newCommandTimeout: 120000,
             uiautomator2ServerLaunchTimeout: 120000,
             uiautomator2ServerInstallTimeout: 120000,
             nativeInstrumentsLib: false
         },
         appium_lib: {
             server_url: "https://#{sauce_username}:#{sauce_access_key}@ondemand.saucelabs.com:#{port}/wd/hub"
         }
     }

end
