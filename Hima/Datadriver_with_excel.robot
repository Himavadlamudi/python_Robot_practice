*** Settings ***
Documentation    DataDriver Testing with Excel
Library    DataDriver    filedriver.xlsx    sheet_name= Sheet1    #sheet name


*** Test Cases ***
Verify All the data from Excel    ${name}    ${email}    ${Current}    ${permanent}




*** Keywords ***
Read All Data
    [Arguments]    ${name}    ${email}    ${Current}    ${permanent}
    Log To Console    ${name} : ${email} : ${Current} : ${permanent}