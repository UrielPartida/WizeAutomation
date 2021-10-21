*** Settings ***
Library     String
Resource    setups.robot
Resource    goto.robot
Resource    navigation.robot
Resource    poms/basePage.robot
Resource    poms/page_forums.robot
Resource    poms/page_articles.robot
Resource    poms/page_newArticle.robot
Resource    poms/page_createdArticle.robot
Resource    poms/page_login.robot
Resource    poms/page_inventory.robot
Resource    components/component_userMenuLogIn.robot
Resource    components/component_channelTabBar.robot
Resource    components/component_burgerMenu.robot
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


