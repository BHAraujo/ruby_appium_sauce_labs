class BasePage

  def initialize
    @driver = $driver
  end

  def tap_element(args)
    type, value = args if args.is_a? Array
    raise 'O valor deve ser um Array [:type, "value"]' unless args.is_a? Array
    @driver.find_element(type, value).click
  end

  def get_text(args)
    type, value = args if args.is_a? Array
    raise 'O valor deve ser um Array [:type, "value"]' unless args.is_a? Array
    @driver.find_element(type, value).text
  end

  def is_not_visible(args)
    type, value = args if args.is_a? Array
    raise 'O valor deve ser um Array [:type, "value"]' unless args.is_a? Array

    begin
      @driver.find_element(type, value).displayed?
      false
    rescue
      true
    end

  end

  def send_keys(args, text)
    type, value = args if args.is_a? Array
    raise 'O valor deve ser um Array [:type, "value"]' unless args.is_a? Array
    @driver.find_element(type, value).send_keys(text)
  end

  def has_in_activity(text)
    @driver.get_source.include?(text)
  end

  def scrool_down
    wait = Selenium::WebDriver::Wait.new
    wait.until{ Appium::TouchAction.new.swipe(:start_x => 200, :start_y => 1100, :end_x =>200, :end_y =>100, :duration => 1000).perform }
  end
end
