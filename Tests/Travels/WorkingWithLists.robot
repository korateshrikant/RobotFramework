*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select
${browser}  Chrome
*** Test Cases ***
TC to demonstrate browser window operations in robot FW
    [Documentation]  TC to demonstrate handeling lists in robot FW
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Sleep  2s
    Select Frame  id:iframeResult
    Page Should Contain List   xpath://select[@id='cars']
    Page Should Not Contain List  xpath://select[@id='carss']
    @{AllItems}=  Get List Items  xpath://select[@id='cars']
    ${ListLabel}=  Get Selected List Label  xpath://select[@id='cars']
    ${ListValue}=  Get Selected List Value  xpath://select[@id='cars']
    #List Selection Should Be  //select[@id='cars']  volvo
    Select From List By Index  xpath://select[@id='cars']  1
    ${LLabel1}=  Get Selected List Label  xpath://select[@id='cars']
    Sleep  2s
    Select From List By Label  xpath://select[@id='cars']  Opel
    ${LLabel2}=  Get Selected List Label  xpath://select[@id='cars']
    Sleep  2s
    Select From List By Value  xpath://select[@id='cars']  audi
    ${LLabel3}=  Get Selected List Label  xpath://select[@id='cars']

#Multiselect List
    Go to  https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
    Select Frame  id:iframeResult
    Select All From List  xpath://select[@id='cars']
    Sleep  2s
    ${ListLabels}=  Get Selected List Labels  xpath://select[@id='cars']
    Sleep  2s
    Unselect From List By Value  xpath://select[@id='cars']  volvo
    Sleep  2s
    Unselect From List By Index  xpath://select[@id='cars']  1
    Sleep  2s
    Unselect From List By Label  xpath://select[@id='cars']  Opel
    Sleep  2s
    @{ListValues}=  Get Selected List Values  xpath://select[@id='cars']
    Sleep  2s
    Unselect All From List  xpath://select[@id='cars']
    Sleep  2s
    List Should Have No Selections  xpath://select[@id='cars']
    Close Browser

