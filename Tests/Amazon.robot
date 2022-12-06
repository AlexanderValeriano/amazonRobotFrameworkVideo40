*** Settings ***
Documentation   This is some basic info about the whole suite
Resource        ../Resources/AmazonApp.robot
Resource        ../Resources/Common.robot
*** Variables ***


*** Test Cases ***

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Common.Begin Web Test
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add product to Cart
    AmazonApp.Begin Checkout
    Common.End Web test