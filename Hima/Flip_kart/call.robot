*** Settings ***
Library    navigation.py

*** Variables ***
${url}     https://www.flipkart.com/

*** Test Cases ***
Navigate the flipkart page
    ${d}    Open Flipkart Browser    ${url}
    ${cur_url}    ${nav_url}    Search Product    ${d}
    Log To Console    Current URL: ${cur_url}
    Log To Console    Navigated URL: ${nav_url}
    Close Browser     ${d}