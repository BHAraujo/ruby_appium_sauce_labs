Before do
  $driver.start_driver
  $driver.manage.timeouts.implicit_wait = $capabilities["timeouts_wait"]
end

After do |scenario|
  $driver.close_app
end
