*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${bName}    chrome

*** Test Cases ***
TC15
    Open Browser    ${url}    ${bName}
    Maximize Browser Window
    Sleep    2
#    Fix me Execute Javascript is not working here.
#    Execute Javascript    Window.ScrollTo(0, 950)
#    Sleep    5
    Scroll Element Into View    id:singleFileInput
    Sleep    5
#    Execute Javascript    Window.ScrollTo(0, -document.body.Height)
#    Sleep    5
    Close Browser