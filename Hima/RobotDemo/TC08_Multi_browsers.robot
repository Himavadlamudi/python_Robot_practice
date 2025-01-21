*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.automationtesting.in/Windows.html
${bName}    chrome
${url1}    https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/package-summary.html
${bName1}    chrome
*** Test Cases ***
TC08
    Open Browser    ${url}   ${bName}
    Maximize Browser Window
    Sleep    4
    ${title}=    Get Title
    Log To Console    ${title}
    Sleep    2
    Open Browser    ${url1}   ${bName1}
    Maximize Browser Window
    Sleep    2
    ${title1}=    Get Title
    Log To Console    ${title1}
    Sleep    2
    Switch Browser    1
    ${title2}=    Get Title
    Log To Console    ${title2}
    Sleep    2
    Switch Browser    2
    ${title3}=    Get Title
    Log To Console    ${title3}
    Sleep    2
    Close All Browsers