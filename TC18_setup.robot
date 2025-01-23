*** Settings ***
Suite Setup    Log To Console    Login application
Suite Teardown    Log To Console    Logout application

Test Setup    Log To Console    excel values
Test Teardown    Log To Console    close excel file




*** Test Cases ***
TC1
    Log To Console    adding user
TC2
    Log To Console    remove user
TC3
    Log To Console    add to cart