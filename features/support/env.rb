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
CAPABILITIES = CONFIG["environment"]


if CAPABILITIES.downcase == "localhost"
  CAPABILITIES = CONFIG["capabilities_local_host"]
  $driver = Appium::Driver.new(desired_capabilities_local_host(CAPABILITIES["deviceName"], CAPABILITIES["udid"],
                                                               CAPABILITIES["platformName"], CAPABILITIES["platformVersion"],
                                                               CAPABILITIES["app"]), true)
else
  CAPABILITIES = CONFIG["capabilities_sauce_labs"]
  $driver = Appium::Driver.new(desired_capabilities_sauce_labs(CAPABILITIES["deviceName"], CAPABILITIES["platformName"],
                                                               CAPABILITIES["platformVersion"], CAPABILITIES["app"],
                                                               CAPABILITIES["sauce_username"], CAPABILITIES["sauce_access_key"]),
                                                               true)
end





# Allure.configure do |c|
#   c.results_directory = "/reports"
#   c.clean_results_directory = true
#   c.logging_level = Logger::INFO
# end
