Feature: Realizar login
    Eu como usuário
    Quero realizar login
    Para acessar o sistema

    Scenario: Login com sucesso
    Given que o usuário está na página de login
    When o usuário preenche o campo email com "arthur7@arthur.com"
    And o usuário preenche o campo senha com "Arthur_Leal980"
    And o usuário clica no botão "Entrar"
    Then o usuário deve ser redirecionado para a página inicial

    Scenario: Login com email inválido
    Given que o usuário está na página de login
    When o usuário preenche o campo email com "email"
    And o usuário preenche o campo senha com "Arthur_Leal980"
    And o usuário clica no botão "Entrar"
    Then o usuário deve ver a mensagem "Error"

    Scenario: Login com senha inválida
    Given que o usuário está na página de login
    When o usuário preenche o campo email com "arthur7@arthur.com"
    And o usuário preenche o campo senha com "senha"
    And o usuário clica no botão "Entrar"
    Then o usuário deve ver a mensagem "Error"

    Scenario: Login com email e senha inválidos
    Given que o usuário está na página de login
    When o usuário preenche o campo email com "email"
    And o usuário preenche o campo senha com "senha"
    And o usuário clica no botão "Entrar"
    Then o usuário deve ver a mensagem "Error"

    Scenario: Login com email e senha em branco
    Given que o usuário está na página de login
    When o usuário preenche o campo email com ""
    And o usuário preenche o campo senha com ""     And o usuário clica no botão "Entrar"
    Then o usuário deve ver a mensagem "Error"

