*** Settings ***
Resource    main.robot

*** Keywords ***
Basic Selenium Test Setup
    [Documentation]
    ...    - Generates base page URL
    ...    - Opens browser
    ...    - Maximizes browser window
    ${loginURL}=    Generate Base Page URL
    open browser    ${loginURL}    ${BROWSER}    ${EMPTY}    ${REMOTE}    ${EMPTY}
    Maximize Browser Window
    Verify Login Page Loaded

Login Setup
    [Documentation]    User must be logged in
    Basic Selenium Test Setup
    Verify Login Page Loaded
    ${username}=    Set Variable    standard_user
    ${password}=    Set Variable    secret_sauce
    Log In Through Login Form In Login Page     ${username}     ${password}
    Verify Inventory Page Loaded
    ${isDisplayed}=     Inventory Container Is Displayed
    Should Be True  ${isDisplayed}   The Inventory Container should be displayed

Purchase Setup
    [Documentation]    User must be logged in
    Login Setup
    Add Multiple Items To Cart
    Click Cart Button
    Verify Cart Page Loaded
    Verify All Items Appeared On Cart Page
    Click Checkout Button