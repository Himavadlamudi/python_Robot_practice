*** Test Cases ***
ForLoop
    FOR    ${counter}    IN RANGE    1    10
        Log To Console    ${counter}
    END

Forlooplist
    @{list}    Create List    1 2 3 4 5
    FOR    ${element}    IN    @{list}
        Log To Console    ${element}
    END
    
Forloopcondition
    @{list}    Create List    1    2    3    4    5
    FOR  ${element}  IN    @{list}
        Exit For Loop If    ${element} == 4
        Log To Console    ${element}
    END

Forloopstring
    @{list}    Create List    a    b    c    d    e
    FOR  ${element}  IN    @{list}
        Exit For Loop If    '${element}' == 'd'
        Log To Console    ${element}
    END


    