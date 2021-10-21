*** Settings ***
Library    SeleniumLibrary
Resource    ../poms/basePage.robot
*** Variables ***
${loc_button_burger_cBurgerMenu}   css=#react-burger-menu-btn
${loc_button_logout_cBurgerMenu}   css=#logout_sidebar_link
${loc_button_sortBy_cBurgerMenu}   css=.product_sort_container
${loc_button_lowHigh_cBurgerMenu}   css=[value=lohi]
${loc_text_sortContainerText_cBurgerMenu}   css=.active_option
*** Keywords ***
Open Burger Menu
    [Documentation]    Keyword to click the burger button and open the menu.
    wait until element is visible   ${loc_button_burger_cBurgerMenu}   ${WAIT}   The burger button isn't visible
    click element   ${loc_button_burger_cBurgerMenu}

Click Logout Button
    [Documentation]    Keyword to click the burger button and open the menu.
    wait until element is visible   ${loc_button_logout_cBurgerMenu}   ${WAIT}   The logout button isn't visible
    click element   ${loc_button_logout_cBurgerMenu}

Click Sortby Button
    [Documentation]    Keyword to click the burger button and open the menu.
    wait until element is visible   ${loc_button_sortBy_cBurgerMenu}   ${WAIT}   The product sort container isn't visible
    click element   ${loc_button_sortBy_cBurgerMenu}

Click Low To High Button
    [Documentation]    Keyword to click the burger button and open the menu.
    wait until element is visible   ${loc_button_lowHigh_cBurgerMenu}   ${WAIT}   The order low to high button isn't visible
    click element   ${loc_button_lowHigh_cBurgerMenu}

Verify Sort By Low To High Selected
    [Documentation]    Keyword to Verify the products were sort in the low to high order.
    ${text}=     Set Variable    PRICE (LOW TO HIGH)
    Element Should Contain   ${loc_text_sortContainerText_cBurgerMenu}     ${text}    the text wasn't the same in the text variable and in the container