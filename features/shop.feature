Feature: Shop 
Scenario: Adicionar um produto no carrinho
Given estou na pagina “https://practice.automationtesting.in/shop/"
When clico no botão “Add to basket” do produto “Selenium Ruby”
Then o produto “Selenium Ruby” é adicionado ao carrinho


Scenario: Filtrar produtos por preço
Given estou na pagina “https://practice.automationtesting.in/shop/"
When eu filtro os produtos por preço “Sort by price: low to high”
Then os produtos são exibidos em ordem crescente de preço

Scenario: Filtrar produtos por popularidade
Given estou na pagina “https://practice.automationtesting.in/shop/"
When eu filtro os produtos por popularidade “Sort by popularity”
Then os produtos são exibidos em ordem decrescente de popularidade

Scenario: Filtrar produtos por avaliação
Given estou na pagina “https://practice.automationtesting.in/shop/"
When eu filtro os produtos por avaliação “Sort by average rating”
Then os produtos são exibidos em ordem decrescente de avaliação

Scenario: Filtrar produtos por ordem alfabética
Given estou na pagina “https://practice.automationtesting.in/shop/"
When eu filtro os produtos por ordem alfabética “Sort by newness”
Then os produtos são exibidos em ordem alfabética



