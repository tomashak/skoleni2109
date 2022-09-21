*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Eshop search
    Open Browser    url=https://automationexercise.com/products   browser=chrome
    SeleniumLibrary.Input Text       //input[@id="search_product"]    T-Shirt
    SeleniumLibrary.Click Element    //button[@id="submit_search"]    
    Wait Until Element Contains    //h2[contains(@class,"title")]    SEARCHED PRODUCTS    
    Element Should Contain    //div[@class="features_items"]/div[not(@id="cartModal")][1]//div[contains(@class,"productinfo")]/p    T-Shirt
    Close Browser    