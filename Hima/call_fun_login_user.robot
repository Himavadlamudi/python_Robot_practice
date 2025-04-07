*** Settings ***
Library    login_user.py


*** Variables ***
${url}    https://www.saucedemo.com/
${username}    standard_user
${password}    secret_sauce
@{users}    standard_user    located_out_user    problem_user    performance_glitch_user    error_user visual_user

*** Test Cases ***
Login Test
    ${driver}    Open Browser    ${url}
    Login    ${driver}    ${username}    ${password}
    Sleep    5s
    Close Browser    ${driver}

*** Test Cases ***
Login Multiple Users
    FOR    ${username}    IN    @{users}
        ${driver}    Open Browser    ${url}
        Login    ${driver}    ${username}    ${password}
        Sleep    3
        Close Browser    ${driver}
    END