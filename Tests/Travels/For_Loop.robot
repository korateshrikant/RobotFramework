*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}=  https://www.google.com/
${browser}=  Chrome
*** Test Cases ***
TC to demonstrate for loop in robot FW
    [Documentation]  TC to demonstrate for loop in robot FW
    Set Selenium Implicit Wait  5s

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  name:q  RCV Academy
    Press Keys  //div[@class='FPdoLc lJ9FBc']//input[@name='btnK']  RETURN

    @{results_on_page}=  Get WebElements  xpath://div[@class='BYM4Nd']
    FOR  ${element}  IN  @{results_on_page}
            ${text}=  Get Text  ${element}
    END

    Close Browser



