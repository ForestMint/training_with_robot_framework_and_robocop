*** Settings ***
Documentation     Example Robot Framework test suite
Library           SeleniumLibrary
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser

*** Variables ***
${BROWSER}        Chrome
${URL}            https://example.com/login
${USERNAME}       demo_user
${PASSWORD}       secret_pass

*** Test Cases ***
Valid Login Should Succeed
    [Documentation]    User logs in with valid credentials
    Input Username And Password
    Submit Login Form
    Page Should Contain    Welcome, demo_user

Invalid Login Should Fail
    [Documentation]    User tries wrong password
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    wrongpass
    Click Button  id=login-button
    Page Should Contain    Invalid username or password

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Input Username And Password
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}

Submit Login Form
    Click Button    id=login-button