*** Settings ***
Documentation   This is some basic info about the whole suite
Resource        ./PO/LandingPage.robot
Resource        ./PO/TopNav.robot
Resource        ./PO/SearchResults.robot
Resource        ./PO/Product.robot
Resource        ./PO/Cart.robot
Resource        ./PO/SignIn.robot
Resource        ./PO/LandingPage.robot
*** Keywords ***
Login
    [Arguments]     ${Username}     ${Password}
    SignIn.Login With Valid Credentials     ${Username}     ${Password}
Login With Invalid Credentials
    SignIn.Fill "Email" Field     false@credentials.com
    SignIn.Fill "Password" Field    badpassword
    SignIn.Click "Sign In" Button
Search For Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded
Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded


