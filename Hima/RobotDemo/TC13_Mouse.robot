*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${bName}    chrome

*** Test Cases ***
TC13
    Open Browser    ${url}   ${bName}
    Maximize Browser Window
    Sleep    2
#   Double click operation
    Double Click Element    xpath://*[@id="HTML10"]/div[1]/button
    Sleep    5
#    Drag and Drop operation
    Drag And Drop    id:draggable    id:droppable
    Sleep    5
    Open Browser    https://demo.guru99.com/test/simple_context_menu.html    chrome
    Sleep    5
    Open Context Menu    xpath://*[@id="authentication"]/span
    Sleep    5
    Click Element    xpath://*[@id="authentication"]/ul/li[2]
    Sleep    5
    Handle Alert    accept
    Close All Browsers