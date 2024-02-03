*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.ebay.com
${browser}  chrome
*** Keywords ***

Start testCase
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

End testCase
    Close Browser
