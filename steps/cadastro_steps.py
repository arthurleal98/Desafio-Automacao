from behave import given, when, then
from pages.my_account_page import MyAccountPage


@given(u'eu estou na pagina de Cadastro')
def step_impl(context):
    context.driver.get("https://practice.automationtesting.in/my-account/")


@when(u'eu preencho o formulário com os dados')
def step_impl(context):
    
    for row in context.table:
        MyAccountPage(context.driver).inserir_email_reg(row['email'])
        MyAccountPage(context.driver).inserir_senha_reg(row['senha'])


@when(u'eu clico no botão resgister')
def step_impl(context):
    MyAccountPage(context.driver).clicar_botao_registrar()


@then(u'eu devo ver a mensagem de sucesso "Usuário cadastrado com sucesso"')
def step_impl(context):
    assert "Hello" in context.driver.page_source

@then(u'eu devo ver a mensagem de erro "Email já cadastrado"')
def step_impl(context):
    assert "Error: An account is already registered with your email address. Please log in." in context.driver.page_source


@when(u'o usuário preenche o campo email com ""')
def step_impl(context):
    MyAccountPage(context.driver).inserir_email_reg("")
    