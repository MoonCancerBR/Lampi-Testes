*** Settings ***
Documentation     Mobak Login Functional Automation POC.
...               Satisfies BDD principles and granularized keywords requirements.
Library           SeleniumLibrary

*** Variables ***

${URL}            https://lampi.ifce.edu.br/mobak/login
${BROWSER}        chrome
${VALID_EMAIL}    Fernandogamorim730@gmail.com
${VALID_PW}       @Lol1234
${LOGIN_BTN}      xpath://button[contains(text(), 'Entrar')]
${LOGOUT_BTN}     xpath://button[.//span[text()='Sair']]

*** Test Cases ***

Scenario: Successful Login with Valid Credentials
    [Documentation]  Automated login flow following Gherkin syntax.
    Given the user is on the login page
    When the user submits valid credentials
    Then the dashboard should be visible
    And the user performs logout
    [Teardown]    Close Browser

*** Keywords ***

the user is on the login page
    Open Browser To Login Page

the user submits valid credentials
    Input Username    ${VALID_EMAIL}
    Input Password Field    ${VALID_PW}
    Submit Login Form

the dashboard should be visible
    Verify Successful Login

the user performs logout
    Execute Logout Process

Open Browser To Login Page

    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath://input[@type='email']    10s

Input Username

    [Arguments]    ${email}
    Input Text     xpath://input[@type='email']    ${email}

Input Password Field

    [Arguments]    ${password}
    Input Password    xpath://input[@placeholder='Sua senha']    ${password}

Submit Login Form

    Click Button    ${LOGIN_BTN}

Verify Successful Login

    Wait Until Element Is Visible    ${LOGOUT_BTN}    15s
    Element Should Be Visible        ${LOGOUT_BTN}

Execute Logout Process

    Sleep    2s
    Click Element    ${LOGOUT_BTN}
    Wait Until Page Contains Element    xpath://a[@href='/mobak/login']    10s
    Sleep    2s
