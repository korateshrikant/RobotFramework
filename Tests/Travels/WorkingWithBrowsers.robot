*** Settings ***
Library  SeleniumLibrary
*** Variables ***


*** Test Cases ***
TC to demonstrate Browser Operation Keywords in Robot Framework
    [Documentation]  TC to demonstrate Browser Operation Keywords in Robot Framework
    Open Browser  http:/google.com  Chrome  alias=ChromeRCV
    Maximize Browser Window
    Open Browser  about:blank  Chrome  alias=RCV

    &{alias}  Get Browser Aliases
    Log  @{alias}[1]
    @{browser_ID}  Get Browser Ids
    Log  @{browser_ID}[1]
    Swith Browser  1
    Input Text  //textarea[@id='APjFqb']  RCVAcademy
    Sleep  4s
    Swith Browser  @{alias}[1]
    Go to  http://salesforce.com
    Close All Browsers



