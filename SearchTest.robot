*** Settings ***
Documentation  Nejaky popis teto suity fasd;lkafjsdalfjds;lakfjdsalfjdsa;kfjds;fjadf;lkasdaj; link do jiry, confluence
...  Druhy radek, dalsi dokumentace
...  Treti radek
Library    SeleniumLibrary

Test Setup  Open Browser    url=https://automationexercise.com/products   browser=chrome
Test Teardown  Close Browser

*** Test Cases ***
Eshop search - Shirt
    [Documentation]    nejaky popis testcase, link do dokumentace, dulezite info
    Maximize Browser Window
    Wait Until Element Is Visible  //input[@id="search_product"]
    SeleniumLibrary.Input Text       //input[@id="search_product"]    T-Shirt
    SeleniumLibrary.Click Element    //button[@id="submit_search"]    
    Wait Until Element Contains    //h2[contains(@class,"title")]    SEARCHED PRODUCTS    
    Element Should Contain    //div[@class="features_items"]/div[not(@id="cartModal")][1]//div[contains(@class,"productinfo")]/p    T-Shirt
        

Eshop search - Top    
    [Documentation]    nejaky popis testcase, link do dokumentace, dulezite info
    Maximize Browser Window
    Wait Until Element Is Visible  //input[@id="search_product"]
    SeleniumLibrary.Input Text       //input[@id="search_product"]    Top
    SeleniumLibrary.Click Element    //button[@id="submit_search"]    
    Wait Until Element Contains    //h2[contains(@class,"title")]    SEARCHED PRODUCTS    
    Element Should Contain    //div[@class="features_items"]/div[not(@id="cartModal")][1]//div[contains(@class,"productinfo")]/p    TopXXX
    