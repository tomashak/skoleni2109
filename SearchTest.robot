*** Settings ***
Documentation  Nejaky popis teto suity fasd;lkafjsdalfjds;lakfjdsalfjdsa;kfjds;fjadf;lkasdaj; link do jiry, confluence
...  Druhy radek, dalsi dokumentace
...  Treti radek
Library    SeleniumLibrary

Test Setup  Open Browser    url=${URL}   browser=${BROWSER}
Test Teardown  Close Browser

*** Variables ***
${URL}=  https://automationexercise.com/products
${BROWSER}=  chrome

*** Keywords ***
Search for product
    [Documentation]  nejake info o keywordu....
    [Arguments]  ${whatSearch}
    Wait Until Element Is Visible  //input[@id="search_product"]
    SeleniumLibrary.Input Text       //input[@id="search_product"]    ${whatSearch}
    SeleniumLibrary.Click Element    //button[@id="submit_search"] 

Check result page
    [Documentation]   info o kw
    [Arguments]  ${whatCheck}
    Wait Until Element Contains    //h2[contains(@class,"title")]    SEARCHED PRODUCTS    
    Element Should Contain    //div[@class="features_items"]/div[not(@id="cartModal")][1]//div[contains(@class,"productinfo")]/p    ${whatCheck}


*** Test Cases ***
Eshop search - Shirt
    [Documentation]    nejaky popis testcase, link do dokumentace, dulezite info
    Maximize Browser Window
    Search for product    T-Shirt
    Check result page    T-Shirt          

Eshop search - Top    
    [Documentation]    nejaky popis testcase, link do dokumentace, dulezite info
    Maximize Browser Window
    Search for product    Top
    Check result page    Top