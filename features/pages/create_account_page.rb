require_relative "base_page.rb"


class CreateAccountPage < BasePage

  def initialize
    @driver = $driver
    @title_create_account = :xpath, "//android.widget.TextView[@text='Cadastrar']"
    @button_continue = :xpath, "//android.widget.Button[@text='CONTINUAR']"
    @button_ok_message_create = :xpath, "//android.widget.Button[@text='OK']"
  end

  def button_ok_message_create_tap
    sleep 2
    tap_element(@button_ok_message_create)
  end

  def title_create_account_text
    get_text(@title_create_account)
  end

  def input_name_send_keys(value)
    @driver.find_elements(:xpath, "//android.widget.EditText")[0].send_keys(value)
  end

  def input_email_send_keys(value)
    @driver.find_elements(:xpath, "//android.widget.EditText")[1].send_keys(value)
  end

  def input_password_send_keys(value)
    @driver.find_elements(:xpath, "//android.widget.EditText")[2].send_keys(value)
  end

  def input_cpf_send_keys(value)
    @driver.find_elements(:xpath, "//android.widget.EditText")[4].send_keys(value)
  end

  def agree_terms_tap
    @driver.find_elements(:xpath, "//android.widget.CheckBox")[1].click
  end

  def button_continue_tap
    tap_element(@button_continue)
  end

  def text_message_created_text
    sleep 2
    @driver.find_elements(:xpath, "//android.widget.TextView")[1].text
  end

end
