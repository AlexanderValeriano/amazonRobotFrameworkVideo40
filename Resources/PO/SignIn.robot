*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${SIGNIN_MAIN_HEADING}     xpath://h1
*** Keywords ***
Verify Page Loaded
    Page Should Contain Element             ${SIGNIN_MAIN_HEADING}
    Element Text Should Be                  ${SIGNIN_MAIN_HEADING}   Sign in
Login With Valid Credentials
    [Arguments]     ${Username}     ${Password}
    Fill "Email" Field     ${Username}
    Fill "Password" Field     ${Password}
    Click "Sign In" Button
Fill "Email" Field
    [Arguments]     ${Username}
    Log     Filling "Email" field with ${Username}
Fill "Password" Field
    [Arguments]     ${Password}
    Log     Filling "Password" field with ${Password}
Click "Sign In" Button
    Log     Clicking "sign in" button