*** Settings ***
Library    SeleniumLibrary
Resource    ../poms/basePage.robot
*** Variables ***
${loc_button_checkout_pCart}   css=#checkout
${loc_text_backpack_pCart}   css=#item_4_title_link
${loc_text_light_pCart}   css=#item_0_title_link
${loc_text_onesie_pCart}   css=#item_2_title_link

*** Keywords ***
Verify Cart Page Loaded
    [Documentation]    Verifies that the page loaded  the checkout button which is in the cart page.
    Wait Until Element Is Visible   ${loc_button_checkout_pCart}    ${WAIT}     The cart main page didn´t loaded

Verify Backpack Appeared On Cart Page
    [Documentation]    Keyword to Verify the sauce labs backpack was added to the cart
    ${title}=     Set Variable    Sauce Labs Backpack
    Element Should Contain   ${loc_text_backpack_pCart}     ${title}    the text wasn't the same in the title variable and in the page

Verify Light Appeared On Cart Page
    [Documentation]    Keyword to Verify the sauce labs bike light was added to the cart
    ${title}=     Set Variable    Sauce Labs Bike Light
    Element Should Contain   ${loc_text_light_pCart}     ${title}    the text wasn't the same in the title variable and in the page

Verify Onesie Appeared On Cart Page
    [Documentation]    Keyword to Verify the sauce labs onesie was added to the cart
    ${title}=     Set Variable    Sauce Labs Onesie
    Element Should Contain   ${loc_text_onesie_pCart}     ${title}    the text wasn't the same in the title variable and in the page

Verify All Items Appeared On Cart Page
    [Documentation]    Keyword to Verify all the selected items were added to the cart
    Verify Backpack Appeared On Cart Page
    Verify Light Appeared On Cart Page
    Verify Onesie Appeared On Cart Page

Click Checkout Button
    [Documentation]    Keyword to click the checkout button and go to checkout setp one.
    wait until element is visible   ${loc_button_checkout_pCart}   ${WAIT}   The checkout button isn't visible
    click element   ${loc_button_checkout_pCart}
