*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains                results for "Ferrari 458"

Click Product Link
    [Documentation]  Clicks on name of the Thirth product in the search results list
    Click Link                            xpath://body/div[@id='a-page']/div[@id='search']/div[1]/div[1]/div[1]/span[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/h2[1]/a[1]

