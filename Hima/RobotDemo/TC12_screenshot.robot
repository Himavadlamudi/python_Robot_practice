*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.google.com/
${bName}    chrome

*** Test Cases ***
TC12
    Open Browser    ${url}   ${bName}
    Sleep    2
    Input Text    name:q    Hima
    Sleep    2
    Capture Element Screenshot    name:q    element.png    
    Sleep    2
    Capture Page Screenshot    page.png
    Sleep    2
    Close Browser