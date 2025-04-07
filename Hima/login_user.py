from selenium import webdriver
from selenium.webdriver.common.by import By


def open_browser(url):
    driver = webdriver.Chrome()
    driver.get(url)
    driver.maximize_window()
    return driver

def login(driver, username, password):
    driver.find_element(By.XPATH, "")
    driver.find_element(By.XPATH,"")
    driver.find_element(By.XPATH,"")

def close_browser(driver):
    driver.close()