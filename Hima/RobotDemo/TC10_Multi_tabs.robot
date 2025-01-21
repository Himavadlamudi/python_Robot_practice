*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.automationtesting.in/Windows.html
${bName}    chrome

*** Test Cases ***
TC10
    Open Browser    ${url}   ${bName}
    Maximize Browser Window
    sleep  2
    Click Button    xpath://*[@id="Tabbed"]/a/button
    Sleep    3
    Switch Window    title=Selenium
    Sleep    2
    Scroll Element Into View    xpath:/html/body/div/main/div[3]/div[1]/a/img
    Sleep    5
    Click Image    xpath:/html/body/div/main/div[3]/div[1]/a/img
    Sleep    3
    Close Browser
