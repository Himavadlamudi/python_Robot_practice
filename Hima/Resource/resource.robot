*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
withoutargument
    [Arguments]    ${url}    ${bName}
    Open Browser    ${url}    ${bName}
    Maximize Browser Window
    ${title}    Get Title
    [Return]    ${title}
    Sleep    2
