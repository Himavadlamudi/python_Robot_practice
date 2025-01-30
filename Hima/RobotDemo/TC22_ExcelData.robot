*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/Login.robot
Library    DataDriver        ..TestData/Book1.xlsx    sheet_name=Sheet1

Suite Setup    OpenMyBrowser
Suite Teardown    CloseMyAllBrowser

Test Template    ValidationLoginPage
*** Test Cases ***
VerifyingLoginApplication    ${userName}    ${password}

    
    
    
    
*** Keywords ***
ValidationLoginPage
    [Arguments]    ${userName}    ${password}
    Press Keys    name:userName    CTRL+a    BACKSPACE
    EnterUserName    ${userName}
    Press Keys    name:password    CTRL+a    BACKSPACE
    EnterPassword    ${password}
    Click login Button    
    Sleep    2 
    ValidatingLoginPageWithValidAndInvalid 