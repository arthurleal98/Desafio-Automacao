from selenium import webdriver
from behave import fixture

def before_scenario(context, scenario):
    print(scenario)
    context.driver = webdriver.Chrome()
    
def after_scenario(context, scenario):
    print(scenario)
    context.driver.quit()