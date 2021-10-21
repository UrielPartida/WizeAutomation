*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      firefox
${REMOTE}       ${EMPTY}
${ENVIRONMENT}  staging
${SERVER_URL}   ${EMPTY}
${WAIT}     15s
*** Keywords ***
Generate Base Page URL
    [Documentation]    Generates the base page URL that all pages contain. Also is the URL to go to when logging in.
    ...
    ...    Returns:
    ...    | ${loginURL} | The base page URL |
    ${loginURL} =   Set variable    https://www.saucedemo.com/
    Set Test Variable    ${loginURL}
    Return from Keyword    ${loginURL}
