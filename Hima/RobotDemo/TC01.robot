*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
TC01
    Open Browser    https://google.com/    chrome
    Input Text    name:q    Hima
    Sleep    2
    Click Button    name:btnK
    Sleep    2
    Close Browser






*** Keywords ***
