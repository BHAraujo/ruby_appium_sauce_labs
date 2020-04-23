require 'appium_lib'
require 'appium_lib_core'
require "allure-cucumber"
require 'byebug'
require 'cucumber'
require 'rspec'
require 'ffaker'
require 'faker'


require_relative "helper_pages.rb"
require_relative "helpers.rb"

World(HelperPages)

CONFIG = YAML.load_file("cucumber.yml")


if CONFIG["environment"].downcase == "localhost"
  $capabilities = CONFIG["capabilities_local_host"]
  $driver = Appium::Driver.new(desired_capabilities_local_host($capabilities["deviceName"], $capabilities["udid"],
                                                               $capabilities["platformName"], $capabilities["platformVersion"],
                                                               $capabilities["app"]), true)
else
  $capabilities = CONFIG["capabilities_sauce_labs"]
  $driver = Appium::Driver.new(desired_capabilities_sauce_labs($capabilities["deviceName"], $capabilities["platformName"],
                                                               $capabilities["platformVersion"], $capabilities["app"], $capabilities["port"],
                                                               $capabilities["sauce_username"], $capabilities["sauce_access_key"]),
                                                               true)
end
