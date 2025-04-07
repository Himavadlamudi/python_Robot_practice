import time
import csv
from selenium import webdriver
from selenium.webdriver.common.by import By
from locators import Locators

def quote_login(url, username, password):
    """
    Logs into the Quotes website and returns the WebDriver instance.
    """

    driver = webdriver.Chrome()
    driver.get(url)
    driver.maximize_window()
    time.sleep(2)
    driver.find_element(By.ID, Locators.username_id).send_keys(username)
    driver.find_element(By.ID, Locators.password_id).send_keys(password)
    driver.find_element(By.XPATH, Locators.login_button).click()
    time.sleep(3)
    return driver

def extract_quotes(driver, pages=3, filter_author=None):
    """
    Extracts quotes, authors, and tags from multiple pages.
    """
    quotes_data = []
    for _ in range(pages):
        quotes = driver.find_elements(By.CLASS_NAME, Locators.quote_class)
        for quote in quotes:
            text = quote.find_element(By.CLASS_NAME, Locators.text_class).text
            author = quote.find_element(By.CLASS_NAME, Locators.author_class).text
            tags = [tag.text for tag in quote.find_elements(By.CLASS_NAME, Locators.tag_class)]
            if not filter_author or author == filter_author:
                quotes_data.append([text, author, ", ".join(tags)])

        next_buttons = driver.find_elements(By.LINK_TEXT, Locators.next_button)
        if next_buttons:  # Ensure the button exists
            next_buttons[0].click()  # Fix: Click the first Next button
            time.sleep(2)
        else:
            break

    return quotes_data

def save_to_csv(filename, data):
    """Saves extracted data to a CSV file."""
    with open(filename, "w", newline="", encoding="utf-8") as file:
        writer = csv.writer(file)
        writer.writerow(["Quote", "Author", "Tags"])
        writer.writerows(data)
    print(f"CSV file '{filename}' created successfully.")

def close_browser(driver):
    """Closes the WebDriver session."""
    driver.quit()


