*** Settings ***
Library         SeleniumLibrary
*** Keywords ***
Begin Web Test
    Open Browser                            about:blank       chrome
End Web test
    Close Browser