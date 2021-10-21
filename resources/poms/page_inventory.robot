*** Settings ***
Library    SeleniumLibrary
Resource    ../poms/basePage.robot
*** Variables ***
${loc_container_inventory_pInventory}   css=#inventory_container
${loc_button_AddBackpack_pInventory}   css=#add-to-cart-sauce-labs-backpack
${loc_button_AddLight_pInventory}   css=#add-to-cart-sauce-labs-bike-light
${loc_button_AddOnesie_pInventory}   css=#add-to-cart-sauce-labs-onesie
*** Keywords ***
Verify Inventory Page Loaded
    [Documentation]    Verifies that the page loaded  the inventory container which is in the inventory page.
    Wait Until Element Is Visible   ${loc_container_inventory_pInventory}    ${WAIT}     The Inventory main page didn´t loaded

Inventory Container Is Displayed
    [Documentation]    Keyword to check if the Inventory Container is displayed
    ${status} = 	   Run Keyword And Return Status 	element should be visible   ${loc_container_inventory_pInventory}
    Return From Keyword    ${status}

Add Backpack To Cart
    [Documentation]    Keyword to add the sauce labs backpack to the cart
    Wait Until Element Is Visible   ${loc_button_AddBackpack_pInventory}    ${WAIT}     The Add to cart button didn´t loaded
    click element   ${loc_button_AddBackpack_pInventory}

Add Light To Cart
    [Documentation]    Keyword to add the sauce labs bike light to the cart
    Wait Until Element Is Visible   ${loc_button_AddLight_pInventory}    ${WAIT}     The Add to cart button didn´t loaded
    click element   ${loc_button_AddLight_pInventory}

Add Onesie To Cart
    [Documentation]    Keyword to add the sauce labs onesie to the cart
    Wait Until Element Is Visible   ${loc_button_AddOnesie_pInventory}    ${WAIT}     The Add to cart button didn´t loaded
    click element   ${loc_button_AddOnesie_pInventory}

Add Multiple Items To Cart
    [Documentation]    Keyword to add the multiple items of the store to the cart
    Add Backpack To Cart
    Add Light To Cart
    Add Onesie To Cart