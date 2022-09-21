*** Variables ***
${result_title_xpath}=         //h2[contains(@class,"title")]
${description_product_xpath}=  //div[@class="features_items"]/div[not(@id="cartModal")][1]//div[contains(@class,"productinfo")]/p

*** Keywords ***

Check result page
    [Documentation]   info o kw
    [Arguments]  ${whatCheck}
    Wait Until Element Contains    ${result_title_xpath}         SEARCHED PRODUCTS    
    Element Should Contain         ${description_product_xpath}  ${whatCheck}      message=Popis ${whatCheck} nebyl nalezen u produktu
