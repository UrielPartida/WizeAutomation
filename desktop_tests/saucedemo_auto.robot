*** Settings ***
Resource    ../resources/main.robot
Test Setup    Basic Selenium Test Setup
Test Teardown    Basic Selenium Test Teardown
*** Test Cases ***
Valid_User_login
    [Documentation]    Test to login a user with a valid id
    [Setup]     Basic Selenium Test Setup
    Verify Login Page Loaded
    Log In Through Login Form In Login Page     ${username}     ${password}
    Verify Inventory Page Loaded
    ${isDisplayed}=     Inventory Container Is Displayed
    Should Be True  ${isDisplayed}   The Inventory Container should be displayed

Invalid_User_login
    [Documentation]    Test to login a user with a valid id
    [Setup]     Basic Selenium Test Setup
    Verify Login Page Loaded
    Log In Through Login Form In Login Page     ${username}     ${password}
    Verify Error Message Appeared In Login Page

User_Logout
    [Documentation]    Test to logout from the page and validate you go to the login page
    [Setup]     Login Setup     ${username}     ${password}
    Open Burger Menu
    Click Logout Button

Sort_Products_Low_To_High
    [Documentation]    Test to sort the products from low to high and validate the products were sorted
    [Setup]     Login Setup     ${username}     ${password}
    Click Sortby Button
    Click Low To High Button
    Verify Sort By Low To High Selected

Add_Multiple_Items
    [Documentation]    Test to add multiple items to the cart
    [Setup]     Login Setup     ${username}     ${password}
    Add Multiple Items To Cart
    Click Cart Button
    Verify Cart Page Loaded
    Verify All Items Appeared On Cart Page

Add_Onesie_To_Cart
    [Documentation]    Test to add the specific product "Sauce Labs Onesie" to the shopping cart
    [Setup]     Login Setup     ${username}     ${password}
    Add Onesie To Cart
    Click Cart Button
    Verify Cart Page Loaded
    Verify Onesie Appeared On Cart Page

Complete_Purchase
    [Documentation]    Test to do a purchase and navigates to the order confirmation page.
    [Setup]     Purchase Setup      ${username}     ${password}
    Verify Step One Page Loaded
    Submit Step One     ${fName}    ${lName}    ${zipcode}
    Verify Step Two Page Loaded
    Click Finish In Step Two Page
    Verify Checkout Complete Page Loaded