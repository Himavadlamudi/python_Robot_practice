*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/Login.robot


Suite Setup    OpenMyBrowser
Suite Teardown    CloseMyAllBrowser

Test Template    ValidationLoginPage
*** Test Cases ***    ${userName}    ${password}
valid user invalid pwd    mercury    1234
invalid user valid pwd    jkl    1234
valid user valid pwd    hima    1234
    
    
    
    
    
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