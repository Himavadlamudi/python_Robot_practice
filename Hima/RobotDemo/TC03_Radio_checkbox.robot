*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://demo.automationtesting.in/Register.html
${bName}    chrome




*** Test Cases ***
TC03
    Open Browser    ${url}   ${bName}
    Maximize Browser Window
    Select Radio Button    radiooptions    Male
    Sleep    2
    Select Radio Button    radiooptions    FeMale
    Sleep    2
    Select Checkbox    id:checkbox1
    Sleep    2
    Select Checkbox    id:checkbox2
    Sleep    2
    Unselect Checkbox    id:checkbox2
    Sleep    2
    Close Browser
