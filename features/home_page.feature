Feature: Home page

Scenario: Pagina inicial apresenta somente 3 produtos
    Given estou na pagina “http://practice.automationtesting.in/”
    When eu clico no menu "Shop"
    And eu clico no menu "Home"
    Then eu vejo 3 produtos na pagina inicial

Scenario: Verificar se o produto da pagina inicial redireciona para a pagina do produto
    Given estou na pagina “http://practice.automationtesting.in/”
    When eu clico no produto da pagina inicial de nome:
    | produto |
    | Selenium Ruby |
    | Thinking in HTML |
    | Mastering JavaScript |

    Then eu sou redirecionado para a pagina do produto de mesmo nome:
    | produto |
    | Selenium Ruby |
    | Thinking in HTML |
    | Mastering JavaScript |

Scenario: Validar a adicao de produtos ao carrinho
    Given estou na pagina “http://practice.automationtesting.in/”
    When eu clico no produto da pagina inicial de nome:
    | produto |
    | Selenium Ruby |
    | Thinking in HTML |
    | Mastering JavaScript |
    And eu clico no botao "Add to basket"
    Then eu vejo a mensagem "Produto adicionado ao carrinho" 
    And eu vejo os produtos no carrinho de compras:
    | produto |
    | Selenium Ruby |
    | Thinking in HTML |
    | Mastering JavaScript |

Scenario: Validar a inscricao de email
    Given estou na pagina “http://practice.automationtesting.in/”
    When eu insiro o email no campo "Subscribe to our newsletter"
    | email |
    |arhtur@arthur.com|
    And eu clico no botao "Subscribe"
    Then eu vejo a mensagem "Obrigado por se inscrever!"


Scenario: Verificar se ha 3 posts no carrosel de posts
    Given estou na pagina “http://practice.automationtesting.in/”
    When eu clico no menu "Blog"
    And eu clico no menu "Home"
    Then eu vejo 3 posts no carrosel de posts

Scenario: Verificar se ha imagens em cada post do carrosel
    Given estou na pagina “http://practice.automationtesting.in/”
    When eu clico no menu "Blog"
    And eu clico no menu "Home"
    Then eu vejo imagens em cada post do carrosel

Scenario: Verificar se o link dos posts estao acessiveis
    Given estou na pagina “http://practice.automationtesting.in/”
    When eu clico na imagem do post
    Then eu sou redirecionado para a pagina do post



