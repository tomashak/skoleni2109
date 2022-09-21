*** Settings ***
Documentation  Nejaky popis teto suity fasd;lkafjsdalfjds;lakfjdsalfjdsa;kfjds;fjadf;lkasdaj; link do jiry, confluence
...  Druhy radek, dalsi dokumentace
...  Treti radek
Library    SeleniumLibrary
Resource  ../Resources/MainPage.robot
Resource  ../Resources/ResultPage.robot
Resource  ../Resources/common.robot

Test Setup  Start and Maximize
Test Teardown  Close Browser



*** Test Cases ***
Eshop search - Shirt
    [Documentation]    nejaky popis testcase, link do dokumentace, dulezite info    
    Search for product    T-Shirt
    Check result page    T-Shirt          

Eshop search - Top    
    [Documentation]    nejaky popis testcase, link do dokumentace, dulezite info
    Search for product    Top
    Check result page    Top