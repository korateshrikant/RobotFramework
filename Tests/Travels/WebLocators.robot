*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate weblocators in robot FW
    [Documentation]  This is sample test case to demonstrate weblocators in Robot FW
    Open Browser  http://www.ebay.com  chrome
    Maximize Browser Window
    Click Link  partial link:Seller Infor
    Sleep  4s
    Close Browser

