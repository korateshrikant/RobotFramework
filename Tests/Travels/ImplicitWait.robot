*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Implicit wait in robot FW
    [Documentation]  TC to demonstrate implicit wait in robot FW
    ${default_implicit_wait}=  Get Selenium Implicit Wait
    Set Selenium Implicit Wait  20s
    ${custom_implicit_wait}=  Get Selenium Implicit Wait
    Open Browser  https://www.google.com  Chrome
    Maximize Browser Window
    Mouse Down  xpath://textarea[@id='APjFqb']
    Mouse Up  xpath://textarea[@id='APjFqb']
    Close Browser
