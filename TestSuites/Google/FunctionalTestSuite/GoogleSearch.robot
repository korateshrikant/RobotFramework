*** Settings ***
Library  SeleniumLibrary



*** Variables ***

*** Test Cases ***
This is sample test case
    [documentation]  google test
    [tags]  regression
    Open Browser  https://www.google.com  chrome
    Close Browser
*** Keywords ***

