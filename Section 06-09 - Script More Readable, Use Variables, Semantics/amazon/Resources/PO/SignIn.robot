*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING}  id=authportal-main-section

*** Keywords ***
Verify Page Loaded
    page should contain element  ${SIGNIN_MAIN_HEADING}

Login With Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill Email Field  ${Username}
    Fill Password Field  ${Password}
    Click Sign In Button

Fill Email Field
    [Arguments]  ${Username}
    Log  Filling Email field with ${Username}

Fill Password Field
    [Arguments]  ${Password}
    Log  Filling Password field with ${Password}

Click Sign In Button
    Log  Clicking Sign In Button
    
