import time

from selenium import webdriver
from selenium.webdriver import Keys
from selenium.webdriver.common.by import By
from locators import Locators


def open_flipkart_browser(url):
    driver=webdriver.Chrome()
    driver.get(url)
    time.sleep(3)
    driver.maximize_window()
    time.sleep(3)
    return driver

def search_product(driver):
    search_box=driver.find_element(By.NAME, Locators.search_product_name)
    search_box.send_keys(Locators.product_name)
    search_box.send_keys(Keys.ENTER)
    time.sleep(3)
    current_url = driver.current_url
    print(f"Current URL: {current_url}")
    print("Current_URL",current_url)
    driver.find_element(By.XPATH, Locators.click_on_product).click()
    time.sleep(3)
    window_handles = driver.window_handles
    driver.switch_to.window(window_handles[1])  # Switch to the second window
    time.sleep(3)
    navigate_url = driver.current_url
    return current_url, navigate_url

def close_browser(driver):
    driver.quit()