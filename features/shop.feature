Feature: Shop 
Scenario: Adicionar um produto no carrinho
Given estou na pagina “https://practice.automationtesting.in/shop/"
When clico no botão “Add to basket” do produto “Selenium Ruby”
And o produto “Selenium Ruby” é adicionado ao carrinho
Then devo ver uma mensagem 'View Basket' abaixo do botão 'Add to basket' no produto 'Selenium Ruby'

Scenario: Filtrar produtos por preço
Given estou na pagina “https://practice.automationtesting.in/shop/"
When eu filtro os produtos por “Sort by price: low to high”
Then os produtos são exibidos em ordem crescente de preço

Scenario: Filtrar produtos por popularidade
Given estou na pagina “https://practice.automationtesting.in/shop/"
When eu filtro os produtos por “Sort by popularity”
Then os produtos são exibidos em ordem decrescente de popularidade

Scenario: Filtrar produtos por avaliação
Given estou na pagina “https://practice.automationtesting.in/shop/"
When eu filtro os produtos por “Sort by average rating”
Then os produtos são exibidos em ordem decrescente de avaliação

Scenario: Filtrar produtos por ordem alfabética
Given estou na pagina “https://practice.automationtesting.in/shop/"
When eu filtro os produtos por “Sort by newness”
Then os produtos são exibidos em ordem alfabética



