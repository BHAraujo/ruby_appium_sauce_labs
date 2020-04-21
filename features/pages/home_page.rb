require_relative "base_page.rb"


class HomePage < BasePage

    def initialize
      @driver = $driver
      @icon_account = :id, "tab_account"
      @text_location = :id, "textview_location"
      @text_orders = :xpath, "//android.widget.TextView[@text='Meus Pedidos']"
    end

    def icon_account_tap
      tap_element(@icon_account)
    end

    def text_location_text
      get_text(@text_location)
    end

    def text_orders_text
      get_text(@text_orders)
    end

end
