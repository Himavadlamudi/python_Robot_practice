*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.hyrtutorials.com/p/frames-practice.html
${bName}    chrome

*** Test Cases ***
TC09
    Open Browser    ${url}   ${bName}
    Maximize Browser Window
    sleep  2
    Input Text    id:name    Mainpage        //Main page
    Sleep    2
    Select Frame    id:frm3
    Sleep    5
    Select From List By Index    xpath://*[@id="selectnav1"]    3
    Sleep    3
    Go Back
    Clear Element Text    id:name
    Sleep    5
    Input Text    id:name    Mainpage2        //Main page
    Sleep    5
    Close Browser
