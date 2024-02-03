*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome
*** Keywords ***

Start testCase
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Sleep  2s

Finish testCase
    Close Browser
