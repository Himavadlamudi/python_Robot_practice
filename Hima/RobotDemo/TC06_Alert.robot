*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://the-internet.herokuapp.com/javascript_alerts
${bName}    chrome

*** Test Cases ***
TC06
    Open Browser    ${url}   ${bName}
    Maximize Browser Window
    Set Selenium Speed    2
    Click Button    xpath://*[@id="content"]/div/ul/li[1]/button
#    Handle Alert    accept
#    Handle Alert    Dismiss
#    Alert Should Be Present    I am a JS Alert
    Handle Alert    leave
    Close Browser