*** Settings ***
Library    SeleniumLibrary
Resource    ../poms/basePage.robot
*** Variables ***
${loc_button_login_pLogin}   css=#login-button
${loc_input_username_pLogin}   css=#user-name
${loc_input_password_pLogin}   css=#password
${loc_text_error_pLogin}   css=.error-message-container
*** Keywords ***
Verify Login Page Loaded
    [Documentation]    Verifies that the page loaded  the login button which is in the login page.
    Wait Until Element Is Visible   ${loc_button_login_pLogin}    ${WAIT}     The Login main page didn´t loaded

Input Username In Login Page
    [Arguments]    ${username}
    [Documentation]    Keyword to Input the username in it's locator
    ...
    ...     Argument:
    ...     - _username_ - Valid Username
    Wait Until Element Is Visible   ${loc_input_username_pLogin}  ${WAIT}   The username textbox isn't visible
    input text  ${loc_input_username_pLogin}  ${username}

Input Password In Login Page
    [Arguments]    ${password}
    [Documentation]    Keyword to Input the password in it's locator
    ...
    ...     Argument(s):
    ...     - _password_ - Valid Password
    Wait Until Element Is Visible   ${loc_input_password_pLogin}  ${WAIT}   The password textbox isn't visible
    input text  ${loc_input_password_pLogin}  ${password}

Click Login In Login Page
    [Documentation]     Keyword to click the login button
    wait until element is visible   ${loc_button_login_pLogin}   ${WAIT}   The login button isn't visible
    click element   ${loc_button_login_pLogin}

Log In Through Login Form In Login Page
    [Arguments]    ${username}  ${password}
    [Documentation]    Keyword to log in through the login form
    ...
    ...     Argument(s):
    ...     - _username_ - Valid Username
    ...     - _password_ - Valid Password
    Input Username In Login Page  ${username}
    Input Password In Login Page  ${password}
    Click Login In Login Page

Verify Error Message Appeared In Login Page
    [Documentation]    Keyword to Verify Error Message Appeared on the login page
    ${message}=     Set Variable    Epic sadface: Username and password do not match any user in this service
    Element Should Contain   ${loc_text_error_pLogin}     ${message}    the text wasn't the same in the message variable and in the page