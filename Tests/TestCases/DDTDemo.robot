*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}=  https://www.saucedemo.com/
${browser}=  Chrome
${textbox_username}=  id:user-name
${textbox_password}=  id:password
${login_btn}=  xpath://input[@id='login-button']
${txt_error}=  xpath://*[@id="login_button_container"]//h3

*** Test Cases ***
Verify login fails - Wrong username
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${textbox_username}  standard_us
    Input Text  ${textbox_password}  secret_sauce
    Click Button  ${login_btn}
    Sleep  2s
    Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify login fails - Locked out user
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${textbox_username}  locked_out_user
    Input Text  ${textbox_password}  secret_sauce
    Click Button  ${login_btn}
    Sleep  2s
    Element Should Contain  ${txt_error}  Epic sadface: Sorry, this user has been locked out.
    Close Browser

Verify login fails - Wrong password
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${textbox_username}  standard_user
    Input Text  ${textbox_password}  secret_sa
    Click Button  ${login_btn}
    Sleep  2s
    Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify login fails - Wrong username and password
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${textbox_username}  standard_use
    Input Text  ${textbox_password}  secret_sa
    Click Button  ${login_btn}
    Sleep  2s
    Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify login fails - Blank Username Password
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${textbox_username}  ${EMPTY}
    Input Text  ${textbox_password}  ${EMPTY}
    Click Button  ${login_btn}
    Sleep  2s
    Element Should Contain  ${txt_error}  Epic sadface: Username is required
    Close Browser





