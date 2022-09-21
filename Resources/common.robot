*** Variables ***
${URL}=  https://automationexercise.com/products
${BROWSER}=  chrome

*** Keywords ***
Start and Maximize
    Open Browser    url=${URL}   browser=${BROWSER}
    Maximize Browser Window
