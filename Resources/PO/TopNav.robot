*** Settings ***
Library         SeleniumLibrary
*** Variables ***

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text      id:twotabsearchtextbox  Ferrari 458

Submit Search
    Click Button    xpath://input[@id='nav-search-submit-button']