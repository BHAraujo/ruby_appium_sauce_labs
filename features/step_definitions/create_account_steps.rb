And("fill in only required fields") do |data|

  data.hashes[0].keys.each do |key|

    case key
    when "Como quer ser chamado"
      @apelido = FFaker::NameBR.name
      create_account_page.input_name_send_keys(@apelido)
    when "E-mail"
      @email = Faker::Internet.email
      create_account_page.input_email_send_keys(@email)
    when "Senha"
      @senha = "123Mudar*"
      create_account_page.input_password_send_keys(@senha)
    when "CPF"
      @cpf = FFaker::IdentificationBR.cpf
      create_account_page.input_cpf_send_keys(@cpf)
    else
      raise "Invalid parameter"
    end

  end

end

And("agree terms of use") do
  base_page.scrool_down
  if CONFIG["environment"] == "sauce_labs"
    base_page.scrool_down
  end
  create_account_page.agree_terms_tap
end
