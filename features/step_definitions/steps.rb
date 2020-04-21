And("tap in button {string}") do |button|

    case button
    when "CONTA"
      home_page.icon_account_tap
    when "ENTRAR"
      my_account_page.button_go_tap
    when "CRIAR CONTA"
      login_page.button_create_account_tap
    when "CONTINUAR"
      create_account_page.button_continue_tap
    else
      raise "Invalid parameter"
    end

end

And("must be redirect screen {string}") do |title|

  case title
  when "MINHA CONTA"
    expect(my_account_page.title_my_account_text).to eql("Minha Conta")
  when "LOGIN"
    expect(login_page.button_google_text).to eql("Entrar com o Google")
  when "CADASTRAR"
    expect(create_account_page.title_create_account_text).to eql("Cadastrar")
  else
    raise "Invalid parameters"
  end
end

Then("must show message") do |message|
  expect(create_account_page.text_message_created_text).to eql(message)
  create_account_page.button_ok_message_create_tap
end
