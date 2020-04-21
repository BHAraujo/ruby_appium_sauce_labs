require_relative "base_page.rb"


class MyAccountPage < BasePage

    def initialize
      @driver = $driver
      @title_my_account = :id, "toolbar_title"
      @button_go = :id, "text_sign_up_button"

    end

    def button_go_tap
      tap_element(@button_go)
    end

    def title_my_account_text
      get_text(@title_my_account)
    end

end
