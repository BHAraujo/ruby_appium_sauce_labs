#language: en

   Feature: Validate create account Ingressos.com
      As an user would like create account


    Scenario: Create account
        Given be in home screen
        When tap in button "CONTA"
        And must be redirect screen "MINHA CONTA"
        And tap in button "ENTRAR"
        And must be redirect screen "LOGIN"
        And tap in button "CRIAR CONTA"
        And must be redirect screen "CADASTRAR"
        And fill in only required fields
        | Como quer ser chamado  | E-mail  | Senha  | CPF  |
        | $Como quer ser chamado | $E-mail | $Senha | $CPF |
        And agree terms of use
        And tap in button "CONTINUAR"
        Then must show message
        """
        Sua conta foi cadastrada com sucesso. Agora basta ativar o seu e-mail para poder se logar.
        """
        Then must be redirect screen "LOGIN"
