*** Settings ***
Documentation   This is some basic info about the whole suite
Resource        ../Resources/AmazonApp.robot
Resource        ../Resources/Common.robot
Suite Setup         Insert Testing Data
Test Setup          Common.Begin Web Test
Test Teardown       Common.End Web Test
Suite Teardown      Cleanup Testing Data
*** Variables ***
# Test commit message in pyCharm

*** Test Cases ***

User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]           Smoke
    AmazonApp.Search For Products

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add product to Cart
    AmazonApp.Begin Checkout