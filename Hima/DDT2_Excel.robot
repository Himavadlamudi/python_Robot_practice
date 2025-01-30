*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/login_resource.robot
#Library        DataDriver        ../TestData/Book1.xlsx        sheet_name=Sheet1
Library    DataDriver    file=Book1.xls    sheet_name=Sheet1

Suite Setup    Open My Browser
Suite Teardown    Close Browser
Test Template    Invali login



*** Test Cases ***
LoginTextWithExcel    ${username}    ${password}

*** Keywords ***
Invali login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Error Message Should Be Visible
    