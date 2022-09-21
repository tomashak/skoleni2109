*** Variables ***
${input_field_xpath}=  //input[@id="search_product"]
${search_btn_xpath}=   //button[@id="submit_search"]

*** Keywords ***

Search for product
    [Documentation]  nejake info o keywordu....
    [Arguments]  ${whatSearch}
    Wait Until Element Is Visible    ${input_field_xpath}
    SeleniumLibrary.Input Text       ${input_field_xpath}    ${whatSearch}
    SeleniumLibrary.Click Element    ${search_btn_xpath}