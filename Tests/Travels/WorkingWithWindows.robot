*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate browser window operations in robot FW
    [Documentation]  TC to demonstrate browser window operations in robot FW
    Open Browser  http://salesforce.com  Chrome  alias=ChromeRCV
    Maximize Browser Window
    Sleep  4s
    Wait Until Element Is Visible  //a[normalize-space()='Watch on demand']
    Click Link  //a[normalize-space()='Watch on demand']

    @{WindowHandles}=  Get Window Handles
    Sleep  4s

    @{WindowIdentifiers}=  Get Window Identifiers
    Sleep  4s

    @{WindowNames}=  Get Window Names
    Sleep  4s

    @{WindowTitle}=  Get Window Titles
    Sleep  4s

    Set Window Position  100  200
    ${x}  ${y}=  Get Window Position
    Log  ${x}
    Log  ${y}
    Sleep  4s
    Set Window Size  800  600
    ${width}  ${height}=  Get Window Size
    Log  ${width}
    Log  ${height}
    Sleep  4s

    Switch Window  ${WindowHandles}[1]
    Log  ${WindowHandles}[1]
    Sleep  4s
    Close Window
    Sleep  4s

    Switch Window  ${WindowHandles}[0]
    Close Window

