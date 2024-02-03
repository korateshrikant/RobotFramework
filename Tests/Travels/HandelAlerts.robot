*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate browser window operations in robot FW
    [Documentation]  TC to handel alerts in robot FW
    Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  Chrome
    Maximize Browser Window
    Select Frame  id:iframeResult
    Click Button  xpath://button[normalize-space()='Try it']
    Sleep  2s
    Handle Alert  action=ACCEPT

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
    Select Frame  id:iframeResult
    Click Button  xpath://button[normalize-space()='Try it']
    Sleep  3s
    ${message1}=  Handle Alert  ACCEPT

    #Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
    #Select Frame  id:iframeResult
    #Click Button  xpath://button[normalize-space()='Try it']
    #Sleep  3s
    #${message2}=  Handle Alert  DISMISS  2 s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
    Select Frame  id:iframeResult
    Click Button  xpath://button[normalize-space()='Try it']
    Input Text Into Alert  RCVAcademy  action=ACCEPT
    Sleep  2s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert2
    Select Frame  id:iframeResult
    Click Button  xpath://button[normalize-space()='Try it']
    Alert Should Be Present  text=Hello How are you?  action=ACCEPT
    Sleep  2s

    Go To  https://google.com
    Sleep  2s
    Alert Should Not Be Present

    Close Browser











