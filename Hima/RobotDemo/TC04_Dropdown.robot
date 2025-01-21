*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://demo.automationtesting.in/Register.html
${bName}    chrome

*** Test Cases ***
TC04
    Open Browser    ${url}   ${bName}
    Maximize Browser Window
    Sleep    2
    Select From List By Label    id:Skills    Adobe InDesign
    Sleep    2 
    Select From List By Value    id:Skills    Adobe Photoshop
    Sleep    2
    select From List By Index    id:Skills    5
    Sleep    2
    Close Browser






