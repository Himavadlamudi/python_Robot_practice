*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
TC17
    Open Browser    https://www.google.com/    chrome
    Maximize Browser Window
    Sleep    5
    ${count}=    Get Element Count    xpath://a
    Log To Console    ${count}
    Sleep    5

    FOR    ${counters}    IN RANGE    1    ${count}
        ${link_text}=    Get Text    xpath:(//a)[${counters}]
        Log To Console    ${link_text}
    END

    Close Browser
    