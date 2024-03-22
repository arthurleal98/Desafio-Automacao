from behave import given, when, then
from pages.shop_page import ShopPage
@given("estou na pagina '{text}'")
def step_impl(context,text):
    context.driver.get(text)

@when("clico no botão “Add to basket” do produto '{produto}'")
def step_impl(context,produto):
    ShopPage(context.driver).clicar_botao_add_to_basket(produto)

@when("o produto ''{produto}' é adicionado ao carrinho")
def step_impl(context,produto):
    pass
@then("devo ver uma mensagem 'View Basket' abaixo do botão 'Add to basket' no produto '{produto}'")
def step_impl(context,produto):
    assert "View Basket" in context.driver.page_source


@when("eu filtro os produtos por '{filtro}'")
def step_impl(context,filtro):
    ShopPage(context.driver).filtrar_por_preco(filtro)


@then("o produto ''{produto}' é adicionado ao carrinho")
def step_impl(context, produto):
    assert ShopPage(context.driver).produto_adicionado_ao_carrinho(produto)

@then("eu filtro os produtos por '{filtro}'")
def step_impl(context, filtro):
    assert ShopPage(context.driver).ordernar_produtors(filtro)


