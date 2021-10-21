*** Settings ***
Resource    ../resources/main.robot
Test Setup    Basic Selenium Test Setup
Test Teardown    Basic Selenium Test Teardown
*** Test Cases ***
Valid_User_login
    [Documentation]    Test to login a user with a valid id
    [Setup]     Basic Selenium Test Setup
    Verify Login Page Loaded
    ${username}=    Set Variable    standard_user
    ${password}=    Set Variable    secret_sauce
    Log In Through Login Form In Login Page     ${username}     ${password}
    Verify Inventory Page Loaded
    ${isDisplayed}=     Inventory Container Is Displayed
    Should Be True  ${isDisplayed}   The Inventory Container should be displayed
    Sleep   10s

Invalid_User_login
    [Documentation]    Test to login a user with a valid id
    [Setup]     Basic Selenium Test Setup
    Verify Login Page Loaded
    ${username}=    Set Variable    zxcvas
    ${password}=    Set Variable    fasdqw
    Log In Through Login Form In Login Page     ${username}     ${password}
    Verify Error Message Appeared
    Sleep   10s

User_Logout
    [Documentation]    Test to logout from the page and validate you go to the login page
    [Setup]     Login Setup
    Open Burger Menu
    Click Logout Button
    Sleep   10s

Sort_Products_Low_To_High
    [Documentation]    Test to sort the products from low to high and validate the products were sorted
    [Setup]     Login Setup
    Click Sortby Button
    Click Low To High Button
    Verify Sort By Low To High Selected
    Sleep   10s

Add_Multiple_Items
    [Documentation]    Test to logout from the page and validate you go to the login page
    [Setup]     Login Setup
    Click Sortby Button