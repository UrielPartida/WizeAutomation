*** Settings ***
Library    SeleniumLibrary
Resource    ../poms/basePage.robot
*** Variables ***
${loc_button_finish_pStepTwo}   css=#finish
*** Keywords ***
Verify Step Two Page Loaded
    [Documentation]    Verifies that the page loaded  the finish button which is in the step two page.
    Wait Until Element Is Visible   ${loc_button_finish_pStepTwo}    ${WAIT}     The step two page didn´t loaded

Click Finish In Step Two Page
    [Documentation]     Keyword to click the finish button to checkout
    wait until element is visible   ${loc_button_finish_pStepTwo}   ${WAIT}   The finish button isn't visible
    click element   ${loc_button_finish_pStepTwo}