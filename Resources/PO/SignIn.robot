*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${SIGNIN_MAIN_HEADING}     xpath://h1
*** Keywords ***
Verify Page Loaded

    Page Should Contain Element             ${SIGNIN_MAIN_HEADING}
    Element Text Should Be                  ${SIGNIN_MAIN_HEADING}   Sign in
