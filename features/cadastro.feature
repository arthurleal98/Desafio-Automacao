Feature: Cadastro
Scenario: Cadastro de usuário com sucesso
Given eu estou na pagina de Cadastro
When eu preencho o formulário com os dados:
| email | senha |
|arthurleal5@arthur.com | Teste_Teste98 |
And eu clico no botão resgister
Then eu devo ver a mensagem de sucesso "Usuário cadastrado com sucesso"


Scenario: Cadastro de usuário com email já cadastrado
Given eu estou na pagina de Cadastro
When eu preencho o formulário com os dados:
| email | senha |
|arthurleal5@arthur.com | Teste_Teste98 |
And eu clico no botão resgister
Then eu devo ver a mensagem de erro "Email já cadastrado"

Scenario: Cadastro de usuário com email inválido
Given eu estou na pagina de Cadastro
When eu preencho o formulário com os dados:
| email | senha |
|arthurleal5@arthur | Teste_Teste98 |
And eu clico no botão resgister
Then eu devo ver a mensagem de erro "Email inválido"

Scenario: Cadastro de usuário com senha inválida
Given eu estou na pagina de Cadastro
When eu preencho o formulário com os dados:
| email | senha |
|arthurleal5@arthur.com | 123456 |
And eu clico no botão resgister
Then eu devo ver a mensagem de erro "Senha inválida"

Scenario: Cadastro de usuário com email e senha inválidos
Given eu estou na pagina de Cadastro
When eu preencho o formulário com os dados:
| email | senha |
|arthurleal5@arthur | 123456 |
And eu clico no botão resgister
Then eu devo ver a mensagem de erro "Email e senha inválidos"



