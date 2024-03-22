from selenium.webdriver.common.by import By

class ShopPage:
    def __init__(self, driver):
        self.driver = driver
        self.PRODUCTS = (By.CLASS_NAME, "product")
        self.ADD_BASKETS = (By.CSS_SELECTOR, "a.button")
        self.SORTINGCOMBOBOX = (By.NAME, "orderby")

    def obter_o_titulo_da_pagina(self):
        return self.driver.title

    def clicar_botao_add_to_basket(self, nome_produto):
        produtos = self.driver.find_elements(*self.PRODUCTS)
        for produto in produtos:
            h3 = produto.find_element_by_tag_name("h3")
            if h3.text == nome_produto:
                produto.find_element(*self.ADD_BASKETS).click()
                break

    def ordernar_produtors(self, tipo):
        select = self.driver.find_element(*self.SORTINGCOMBOBOX)
        select.click()
        opcoes = select.find_elements_by_tag_name("option")
        for opcao in opcoes:
            if opcao.text == tipo:
                opcao.click()
                break
        
