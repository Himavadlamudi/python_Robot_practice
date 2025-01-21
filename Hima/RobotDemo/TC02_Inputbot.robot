*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://google.com/
${bName}    chrome
      



*** Test Cases ***
TC02
    Open Browser    ${url}   ${bName}
    Maximize Browser Window
    verifying textbot
    Close Browser


*** Keywords ***
verifying textbot
    ${"nameField}    Set Variable    name:q
    Element Should Be Enabled    ${"nameField}
    Element Should Be Visible    ${"nameField}
    Clear Element Text    ${"nameField}
    Sleep    2
    Input Text    name:q    Hima
    Sleep    2
    Clear Element Text    ${"nameField}
    Sleep    2

