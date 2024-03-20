from behave import given, when, then
#importar MyAccountPage
from pages.my_account_page import MyAccountPage


@given(u'que o usuário está na página de login')
def step_impl(context):
    context.driver.get("https://practice.automationtesting.in/my-account/")
    

@when(u'o usuário preenche o campo email com "{text}"')
def step_impl(context, text):
    MyAccountPage(context.driver).inserir_email(text)

@when(u'o usuário preenche o campo senha com "{text}"')
def step_impl(context,text):
    MyAccountPage(context.driver).inserir_senha(text)


@when(u'o usuário clica no botão "Entrar"')
def step_impl(context):
    MyAccountPage(context.driver).clicar_botao_entrar()


@then(u'o usuário deve ser redirecionado para a página inicial')
def step_impl(context):
    #preciso de um assert que valide se há o texto Hello na pagina

    assert "Hello" in context.driver.page_source

@then(u'o usuário deve ver a mensagem "{text}"')
def step_impl(context,text):
    assert text in context.driver.page_source