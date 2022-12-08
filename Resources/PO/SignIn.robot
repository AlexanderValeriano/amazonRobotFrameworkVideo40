*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded

    Page Should Contain Element             xpath://h1[contains(text(),'Sign in')]
    Element Text Should Be                  xpath://h1[contains(text(),'Sign in')]   Sign in
