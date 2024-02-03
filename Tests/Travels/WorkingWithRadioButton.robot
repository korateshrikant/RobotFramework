*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate browser window operations in robot FW
    [Documentation]  TC to demonstrate RadioButton  in robot FW
    Open Browser  https://demos.jquerymobile.com/1.4.5/checkboxradio-radio/  Chrome
    Maximize Browser Window
    Sleep  4s
    Scroll Element Into View  xpath://div[@class='ui-radio']//label[@class='ui-btn ui-corner-all ui-btn-inherit ui-btn-icon-left ui-radio-off'][normalize-space()='One']
    Page Should Contain Radio Button  xpath://div[@class='ui-radio']//label[@class='ui-btn ui-corner-all ui-btn-inherit ui-btn-icon-left ui-radio-off'][normalize-space()='One']
    Page Should Not Contain Radio Button  xpath://label[@class='ui-btn ui-corner-all ui-btn-inherit ui-btn-icon-left ui-radio-on-tq']
    Radio Button Should Not be Selected  xpath://label[@for='radio-choice-0b']
    Select Radio Button  xpath://label[@for='radio-choice-0b']
    Radio Button Should Be Set To  "One"
    Close Browser

