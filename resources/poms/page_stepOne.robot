*** Settings ***
Library    SeleniumLibrary
Resource    ../poms/basePage.robot
*** Variables ***
${loc_button_continue_pStepOne}   css=#continue
${loc_input_firstName_pStepOne}   css=#first-name
${loc_input_lastName_pStepOne}   css=#last-name
${loc_input_zipcode_pStepOne}   css=#postal-code
*** Keywords ***
Verify Step One Page Loaded
    [Documentation]    Verifies that the page loaded  the continue button which is in the step one page.
    Wait Until Element Is Visible   ${loc_button_continue_pStepOne}    ${WAIT}     The step one page didn´t loaded

Input First Name In Step One Page
    [Arguments]    ${fName}
    [Documentation]    Keyword to Input the first name in it's locator
    ...
    ...     Argument:
    ...     - _fName_ - First name of the user
    Wait Until Element Is Visible   ${loc_input_firstName_pStepOne}  ${WAIT}   The first name textbox isn't visible
    input text  ${loc_input_firstName_pStepOne}  ${fName}

Input Last Name In Step One Page
    [Arguments]    ${lName}
    [Documentation]    Keyword to Input the Last name in it's locator
    ...
    ...     Argument:
    ...     - _lName_ - Last name of the user
    Wait Until Element Is Visible   ${loc_input_lastName_pStepOne}  ${WAIT}   The last name textbox isn't visible
    input text  ${loc_input_lastName_pStepOne}  ${lName}

Input Zipcode In Step One Page
    [Arguments]    ${zipcode}
    [Documentation]    Keyword to Input the user zipcode in it's locator
    ...
    ...     Argument:
    ...     - _zipcode_ - Zipcode of the user
    Wait Until Element Is Visible   ${loc_input_zipcode_pStepOne}  ${WAIT}   The zipcode textbox isn't visible
    input text  ${loc_input_zipcode_pStepOne}  ${zipcode}

Submit Step One
    [Arguments]    ${fName}     ${lName}    ${zipcode}
    [Documentation]    Keyword to Input the user zipcode in it's locator
    ...
    ...     Argument:
    ...     - _fName_ - First name of the user
    ...     - _lName_ - Last name of the user
    ...     - _zipcode_ - Zipcode of the user
    Input First Name In Step One Page   ${fName}
    Input Last Name In Step One Page    ${lName}
    Input Zipcode In Step One Page      ${zipcode}
    Wait Until Element Is Visible   ${loc_button_continue_pStepOne}    ${WAIT}     The Inventory main page didn´t loaded
    click element   ${loc_button_continue_pStepOne}
