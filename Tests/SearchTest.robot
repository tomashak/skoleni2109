*** Settings ***
Documentation  Nejaky popis teto suity fasd;lkafjsdalfjds;lakfjdsalfjdsa;kfjds;fjadf;lkasdaj; link do jiry, confluence
...  Druhy radek, dalsi dokumentace
...  Treti radek
Library    SeleniumLibrary
Library    ExcelRobot
Resource  ../Resources/MainPage.robot
Resource  ../Resources/ResultPage.robot
Resource  ../Resources/common.robot

Test Setup  Start and Maximize
Test Teardown  Close Browser



*** Test Cases ***
Eshop search - Shirt
    [Documentation]    nejaky popis testcase, link do dokumentace, dulezite info    
    [Tags]  regrese  smoke
    open excel    Data/table.xls
    ${pocetRadku}=     get row count  Sheet1
    FOR  ${radek}  IN RANGE  2  ${pocetRadku}+1   #loop for excel table
        ${coHledat}=       read cell data by name  Sheet1  A${radek}
        ${coKontrolovat}=  read cell data by name  Sheet1  B${radek}
        run keyword and continue on failure  Search for product    ${coHledat}
        run keyword and continue on failure  Check result page     ${coKontrolovat}
        Go To    ${URL}
    END
              

