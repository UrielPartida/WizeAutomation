*** Settings ***
Library    SeleniumLibrary
Resource    ../poms/basePage.robot
*** Variables ***
${loc_button_sortBy_cSecondaryHeader}   css=.product_sort_container
${loc_button_lowHigh_cSecondaryHeader}   css=[value=lohi]
${loc_text_sortContainerText_cSecondaryHeader}   css=.active_option
*** Keywords ***
Click Sortby Button
    [Documentation]    Keyword to click the burger button and open the menu.
    wait until element is visible   ${loc_button_sortBy_cSecondaryHeader}    ${WAIT}   The product sort container isn't visible
    click element   ${loc_button_sortBy_cSecondaryHeader}

Click Low To High Button
    [Documentation]    Keyword to click the burger button and open the menu.
    wait until element is visible   ${loc_button_lowHigh_cSecondaryHeader}    ${WAIT}   The order low to high button isn't visible
    click element   ${loc_button_lowHigh_cSecondaryHeader}

Verify Sort By Low To High Selected
    [Documentation]    Keyword to Verify the products were sort in the low to high order.
    ${text}=     Set Variable    PRICE (LOW TO HIGH)
    Element Should Contain   ${loc_text_sortContainerText_cSecondaryHeader}    ${text}    the text wasn't the same in the text variable and in the container