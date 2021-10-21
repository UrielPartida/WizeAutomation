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


Create New Article Setup
    [Arguments]    ${username}=admin    ${password}=password
    [Documentation]    User must be logged in
    ...
    ...     Argument(s):
    ...     - _username_ - Valid Username
    ...     - _password_ - Valid Password
    Login Setup     ${username}  ${password}
    Navigate To Articles Page
    Navigate To New Articles Page

Delete Posts Setup
    [Arguments]    ${username}=admin    ${password}=password    ${title}=Pom3
    [Documentation]    User must be logged in
    ...
    ...     Argument(s):
    ...     - _username_ - Valid Username
    ...     - _password_ - Valid Password
    ...     - _title_ - Desired title
    ${message}=    Generate Random String 	10 	[LETTERS]
    Create New Article Setup     ${username}  ${password}
    Insert New Article On New Articles Page     ${title}    ${message}
    Verify Created Article Page Loaded
    Verify Created Article Submitted    ${title}    ${message}
    ${comment1}=    Generate Random String 	10 	[LETTERS]
    ${comment2}=    Generate Random String 	10 	[LETTERS]
    ${comment3}=    Generate Random String 	10 	[LETTERS]
    FOR     ${comment}      IN      ${comment1}     ${comment2}     ${comment3}
        Insert Comments On Created Article Page     ${comment}
        Verify Comment Submitted On Created Article Page     ${comment}
    END
    Select Post For Inline Moderation
    Open Inline Moderation Menu
    Verify Inline Moderation Menu Opened

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