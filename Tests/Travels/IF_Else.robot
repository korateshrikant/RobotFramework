*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}=  https://www.saucedemo.com/
${browser}=  Chrome
*** Test Cases ***
TC to demonstrate if else in robot FW
    [Documentation]  TC to handel if else in robot FW
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  xpath://input[@id='user-name']  standard_user
    Input Text  xpath://input[@id='password']  secret_sauce
    Click Button  xpath://input[@id='login-button']
    ${items_on_page}=  Get Element Count  xpath://*[@class="inventory_list"]/div
    Run Keyword If  ${items_on_page} == 10  Test Keyword 1  ELSE IF  ${items_on_page} < 10  Test Keyword 2  ELSE  Test Keyword 3

*** Keywords ***
Test Keyword 1
    Log To Console  Executed Keyword1 - Found Items as expected
    Close Browser
Test Keyword 2
    Log To Console  Executed Keyword2 - Found less than expected Items
    Close Browser
Test Keyword 3
    Log To Console  Executed Keyword3 - Exception
    Close Browser



