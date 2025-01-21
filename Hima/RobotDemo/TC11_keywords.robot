*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.google.com/
${bName}    chrome
${url1}    https://terralogic.paxanimi.ai/login
${bname1}    chrome
*** Test Cases ***
TC11
    Open Browser    ${url}   ${bName}
    Maximize Browser Window
    sleep  2
    ${loc}=    Get Locations    
    Log To Console    ${loc}
    Sleep    2
    Go To    ${url1} 
    Sleep    2 
    ${loc1}=    Get Locations
    Log To Console    ${loc1}
    Sleep    2
    Go Back
    Sleep    2
    ${loc2}=    Get Locations
    Sleep    2
    Close All Browsers