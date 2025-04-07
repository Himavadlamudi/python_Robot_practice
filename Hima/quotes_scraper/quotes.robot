*** Settings ***
Library    quotes.py

*** Variables ***
${url}          https://quotes.toscrape.com/login
${username}     admin
${password}     admin
${csv_file}     Hima/quotes_scraper/quotes.csv

*** Test Cases ***
Extract Quotes
    ${driver}    Quote Login    ${url}    ${username}    ${password}
    ${quotes}    Extract Quotes    ${driver}    pages=3
    Save To CSV    ${csv_file}    ${quotes}
    Close Browser    ${driver}