from selenium import webdriver

def before_scenario(context, scenario):
    print(scenario)
    context.driver = webdriver.Chrome()
    
def after_scenario(context, scenario):
    print(scenario)
    context.driver.quit()