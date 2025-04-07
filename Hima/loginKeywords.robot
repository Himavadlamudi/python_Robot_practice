*** Settings ***
Library    SeleniumLibrary

Variables    ..Hima/POM/PageObjects/locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${url}    ${Chrome}
    Open Browser    ${url}    ${Chrome}
    Maximize Browser Window

Enter UserName
    [Arguments]    ${username}
    Input Text    ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_loginpassword}    ${password}

Click SignIn
    Click Button    ${btn_signIn}

Verify Successfull Login
    Title Should Be    Find a Flight: Mercury Tours:

close my Browser
    Close All Browsers