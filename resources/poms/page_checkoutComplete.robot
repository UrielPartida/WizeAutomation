*** Settings ***
Library    SeleniumLibrary
Resource    ../poms/basePage.robot
*** Variables ***
${loc_button_backHome_pCheckoutComplete}   css=#back-to-products
*** Keywords ***
Verify Checkout Complete Page Loaded
    [Documentation]    Verifies that the page loaded the back home button which is in the Checkout Complete page.
    Wait Until Element Is Visible   ${loc_button_backHome_pCheckoutComplete}    ${WAIT}     The Checkout Complete page didn´t loaded