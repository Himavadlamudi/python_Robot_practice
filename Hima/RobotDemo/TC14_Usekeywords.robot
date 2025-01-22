*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/resource.robot

*** Variables ***


*** Test Cases ***
# Called the resources from resource.robot
TC14
    ${title_value}=    withoutargument    https://testautomationpractice.blogspot.com/    chrome
    Log To Console    ${title_value}
    
