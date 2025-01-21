*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.hyrtutorials.com/p/frames-practice.html
${bName}    chrome

*** Test Cases ***
TC07
    Open Browser    ${url}   ${bName}
    Maximize Browser Window
    sleep  2
    Input Text    id:name    Hima
    Sleep    2
    Select Frame    id:frm1
    Sleep    2
    Select From List By Label    id:course    Java
    Sleep    2
    Input Text    id:name    Bindu
    Sleep    2
    Select Frame    id:frm3
    Sleep    2

    Close Browser
