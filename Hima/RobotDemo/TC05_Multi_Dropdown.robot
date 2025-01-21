*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.htm#
${bName}    chrome

*** Test Cases ***
TC05
    Open Browser    ${url}   ${bName}
    Maximize Browser Window
#    Set Selenium Speed    2 
#    Set Browser Implicit Wait    2
    Set Selenium Timeout    2
    Wait Until Page Contains    Selenium - Automation Practice Form
    Select From List By Label    name:selenium_commands    Browser Commands
    Select From List By Label    name:selenium_commands    Switch Commands
    Unselect From List By Label    name:selenium_commands    Browser Commands
    Close Browser    