*** Settings ***
Library    SeleniumLibrary
Resource    ../poms/basePage.robot
*** Variables ***
${loc_button_burger_cMainHeader}   css=#react-burger-menu-btn
${loc_button_logout_cMainHeader}   css=#logout_sidebar_link
${loc_button_cart_cMainHeader}   css=#shopping_cart_container
*** Keywords ***
Open Burger Menu
    [Documentation]    Keyword to click the burger button and open the menu.
    wait until element is visible   ${loc_button_burger_cMainHeader}   ${WAIT}   The burger button isn't visible
    click element   ${loc_button_burger_cMainHeader}

Click Logout Button
    [Documentation]    Keyword to click the logout button and close session.
    wait until element is visible   ${loc_button_logout_cMainHeader}   ${WAIT}   The logout button isn't visible
    click element   ${loc_button_logout_cMainHeader}

Click Cart Button
    [Documentation]    Keyword to click the cart button and go to checkout.
    wait until element is visible   ${loc_button_cart_cMainHeader}   ${WAIT}   The cart button isn't visible
    click element   ${loc_button_cart_cMainHeader}
