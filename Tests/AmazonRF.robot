*** Settings ***
Documentation   This is some basic info about the whole suite
Resource        ../Resources/AmazonApp.robot
Resource        ../Resources/Common.robot
Suite Setup         Insert Testing Data
Test Setup          Common.Begin Web Test
Test Teardown       Common.End Web Test
Suite Teardown      Cleanup Testing Data
#robot -d results -v SEARCH_TERM:"Ferrari 458" .\Tests\AmazonRF.robot
#robot -d results -v SEARCH_TERM:"Ferrari 458" -i smoke .\Tests\AmazonRF.robot

*** Variables ***
${BROWSER}        chrome
${START_URL}     https://www.amazon.com
${SEARCH_TERM}    Lamborghini Gallardo

*** Test Cases ***

Logged out user can search for products
    [Documentation]  This is some basic info about the test
    [Tags]           Current
    AmazonApp.Search For Products

Logged out user must sign in to check out
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
Logged out user must sign in to check out
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add product to Cart
Logged out user must sign in to check out
    [Tags]    Smoke
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add product to Cart
    AmazonApp.Begin Checkout