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
    [Arguments]    ${username}  ${password}
    [Documentation]    Setup to login the user
    ...
    ...     Argument(s):
    ...     - _username_ - Valid Username
    ...     - _password_ - Valid Password
    Basic Selenium Test Setup
    Verify Login Page Loaded
    Log In Through Login Form In Login Page     ${username}     ${password}
    Verify Inventory Page Loaded
    ${isDisplayed}=     Inventory Container Is Displayed
    Should Be True  ${isDisplayed}   The Inventory Container should be displayed

Purchase Setup
    [Arguments]    ${username}  ${password}
    [Documentation]    Setup to login and add the items to the cart
    ...
    ...     Argument(s):
    ...     - _username_ - Valid Username
    ...     - _password_ - Valid Password
    Login Setup     ${username}  ${password}
    Add Multiple Items To Cart
    Click Cart Button
    Verify Cart Page Loaded
    Verify All Items Appeared On Cart Page
    Click Checkout Button