from selenium.webdriver.common.by import By

class MyAccountPage():
    def __init__(self, driver):
        
        self.driver = driver
        self.USERNAMEFIELD = (By.ID, "username")
        self.PASSWORDFIELD = (By.ID, "password")
        self.LOGINBUTTON = (By.NAME, "login")
        self.WELCOMEMESSAGE = (By.CSS_SELECTOR, "p.welcome-msg")
        self.EMAILFIELD = (By.ID, "reg_email")
        self.PASSWORDREGFIELD = (By.ID, "reg_password")
        self.REGISTERBUTTON = (By.NAME, "register")

    def login(self, username, password):
        self.driver.find_element(*self.USERNAMEFIELD).send_keys(username)
        self.driver.find_element(*self.PASSWORDFIELD).send_keys(password)
        self.driver.find_element(*self.LOGINBUTTON).click()

    def inserir_email(self, email):
        self.driver.find_element(*self.USERNAMEFIELD).send_keys(email)
    
    def inserir_senha(self, senha):
        self.driver.find_element(*self.PASSWORDFIELD).send_keys(senha)

    def clicar_botao_entrar(self):
        self.driver.find_element(*self.LOGINBUTTON).click()
            
    def clicar_botao_registrar(self):
        self.driver.find_element(*self.REGISTERBUTTON).click()
    
    def inserir_email_reg(self, email):
        self.driver.find_element(*self.EMAILFIELD).send_keys(email)

    def inserir_senha_reg(self, senha):
        self.driver.find_element(*self.PASSWORDREGFIELD).send_keys(senha)