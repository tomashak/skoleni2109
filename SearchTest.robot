*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Eshop search
    Open Browser    url=https://automationexercise.com/products    browser=chrome
    SeleniumLibrary.Input Text    //input[@id="search_product"]    T-Shirt
    Sleep  2s
    SeleniumLibrary.Click Element    //button[@id="submit_search"]
    Sleep  3s
    Close Browser    