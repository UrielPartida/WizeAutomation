*** Settings ***
Library     String
Resource    setups.robot
Resource    poms/basePage.robot
Resource    poms/page_login.robot
Resource    poms/page_inventory.robot
Resource    poms/page_cart.robot
Resource    poms/page_stepOne.robot
Resource    poms/page_stepTwo.robot
Resource    poms/page_checkoutComplete.robot
Resource    components/component_mainHeader.robot
Resource    components/component_secondaryHeader.robot
*** Keywords ***
Basic Selenium Test Teardown
    [Documentation]    - Logs last location
    ...    - Captures screenshot if test failed
    ...    - Closes all browser windows
    Log Location
    Log Source
    ${randomString} =    Generate Random String  3  [NUMBERS]
    Run Keyword If    "${TEST STATUS}" == "FAIL"    Capture Page Screenshot    onFailScreenshot_${randomString}.png
    Close All Browsers


