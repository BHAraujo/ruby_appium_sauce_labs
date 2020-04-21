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
CAPABILITIES = CONFIG["capabilities"]

$driver = Appium::Driver.new(desired_capabilities(CAPABILITIES["deviceName"],CAPABILITIES["udid"],
                                                  CAPABILITIES["platformName"], CAPABILITIES["platformVersion"],
                                                  CAPABILITIES["app"]), true)






# Allure.configure do |c|
#   c.results_directory = "/reports"
#   c.clean_results_directory = true
#   c.logging_level = Logger::INFO
# end
