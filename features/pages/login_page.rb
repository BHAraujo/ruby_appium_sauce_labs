class LoginPage < BasePage

    def initialize
      @driver = $driver
      @button_google = :id, "google_button_title"
      @button_create_account = :id, "sign_up_button"
    end

    def button_google_text
      get_text(@button_google)
    end

    def button_create_account_tap
      tap_element(@button_create_account)
    end

end
