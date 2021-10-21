*** Settings ***
Library    SeleniumLibrary
Resource    ../poms/basePage.robot
*** Variables ***
${loc_container_inventory_pInventory}   css=#inventory_container
*** Keywords ***
Verify Inventory Page Loaded
    [Documentation]    Verifies that the page loaded  the inventory container which is in the inventory page.
    Wait Until Element Is Visible   ${loc_container_inventory_pInventory}    ${WAIT}     The Inventory main page didn´t loaded

Inventory Container Is Displayed
    [Documentation]    Keyword to check if the login or sign up form is displayed
    ${status} = 	   Run Keyword And Return Status 	element should be visible   ${loc_container_inventory_pInventory}
    Return From Keyword    ${status}