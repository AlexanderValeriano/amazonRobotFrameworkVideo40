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
#This is a project merge
*** Variables ***
${BROWSER}        chrome
${START_URL}     https://www.amazon.com
${SEARCH_TERM}    Lamborghini Gallardo
${LOGIN_EMAIL}      valerianoalexander@gmail.com
${LOGIN_PASSWORD}       petit_22
*** Test Cases ***
Should be able to login
    [Tags]      Current2
    AmazonApp.Login     ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}
Logged out user should be able to search for products
    [Documentation]  This is some basic info about the test
    [Tags]           Current
    AmazonApp.Search For Products

Logged out user should be able to view a product
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
Logged out user should be able to add product to cart
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add product to Cart
Logged out user should be able to sign in to check out
    [Tags]    Smoke
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add product to Cart
    AmazonApp.Begin Checkout