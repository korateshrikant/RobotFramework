*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate browser window operations in robot FW
    [Documentation]  TC to demonstrate iframe in robot FW
    Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  Chrome
    Maximize Browser Window
    Select Frame  id:iframeResult
    Current Frame Should Contain  JavaScript Alert
    Current Frame Should Not Contain  JavaScript Alert box two
    Unselect Frame
    Frame Should Contain  id:iframeResult  JavaScript Alert
    Close Browser

