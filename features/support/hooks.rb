Before do
  $driver.start_driver
  $driver.manage.timeouts.implicit_wait = CAPABILITIES["timeouts_wait"]
end
