*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart

Proceed to Checkout

    Click Button                            xpath://body/div[@id='a-page']/div[@id='sw-full-view-container']/div[@id='sw-full-view']/div[@id='sw-atc-confirmation']/div[@id='sw-atc-actions']/div[@id='sw-atc-actions-buy-box-sign-in']/div[@id='sw-atc-buy-box']/form[@id='sw-ptc-form']/span[@id='desktop-ptc-button-celWidget']/span[@id='sc-buy-box-ptc-button']/span[1]/input[1]
