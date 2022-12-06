*** Settings ***
Documentation   This is some basic info about the whole suite
Library         SeleniumLibrary
# RawSteps
*** Variables ***


*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser                            http://www.amazon.com       chrome
    Wait Until Page Contains                Amazon
    Input Text                              id:twotabsearchtextbox      Ferrari 458
    Click Button                            id:nav-search-submit-button
    Wait Until Page Contains                results for "Ferrari 458"
    Sleep                                    2s
    Close Browser

User can view a product
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser                            http://www.amazon.com       chrome
    Wait Until Page Contains                Amazon
    Input Text                              id=twotabsearchtextbox      Ferrari 458
    Click Button                            id:nav-search-submit-button
    Wait Until Page Contains                results for "Ferrari 458"
    Click Link                              xpath://body/div[@id='a-page']/div[@id='search']/div[1]/div[1]/div[1]/span[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/h2[1]/a[1]
    Wait Until Page Contains                Back to results
    Close Browser

User can add product to cart
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser                            http://www.amazon.com       chrome
    Wait Until Page Contains                Amazon
    Input Text                              id=twotabsearchtextbox      Ferrari 458
    Click Button                            id:nav-search-submit-button
    Wait Until Page Contains                results for "Ferrari 458"
    Click Link                              xpath://body/div[@id='a-page']/div[@id='search']/div[1]/div[1]/div[1]/span[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/h2[1]/a[1]
    Wait Until Page Contains                Back to results
    Click Button                            xpath://input[@id='add-to-cart-button']
    Wait Until Page Contains                Added to Cart
    Close Browser

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser                            http://www.amazon.com       chrome
    Wait Until Page Contains                Amazon
    Input Text                              id=twotabsearchtextbox      Ferrari 458
    Click Button                            id:nav-search-submit-button
    Wait Until Page Contains                results for "Ferrari 458"
    Click Link                              xpath://body/div[@id='a-page']/div[@id='search']/div[1]/div[1]/div[1]/span[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/h2[1]/a[1]
    Wait Until Page Contains                Back to results
    Click Button                            xpath://input[@id='add-to-cart-button']
    Wait Until Page Contains                Added to Cart
    Click Button                            xpath://body/div[@id='a-page']/div[@id='sw-full-view-container']/div[@id='sw-full-view']/div[@id='sw-atc-confirmation']/div[@id='sw-atc-actions']/div[@id='sw-atc-actions-buy-box-sign-in']/div[@id='sw-atc-buy-box']/form[@id='sw-ptc-form']/span[@id='desktop-ptc-button-celWidget']/span[@id='sc-buy-box-ptc-button']/span[1]/input[1]
    Page Should Contain Element             xpath://h1[contains(text(),'Sign in')]
    Element Text Should Be                  xpath://h1[contains(text(),'Sign in')]   Sign in
    Close Browser

*** Keywords ***
