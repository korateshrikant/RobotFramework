*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate browser window operations in robot FW
    [Documentation]  TC to handel explicit waits in robot FW
    Open Browser  https://www.bankofamerica.com/  Chrome
    Maximize Browser Window
    Wait Until Page Contains  Your financial goals matter  timeout=10s
    Wait Until Page Contains Element  xpath://span[@class='spa-btn spa-btn--primary spa-btn--medium masthead-cta-btn']  timeout=10s
    Wait Until Page Does Not Contain  Your financial goals matters
    Wait Until Page Does Not Contain Element  xpath://span[@class='spa-btn spa-btn--primary spa-btn--medium masthead-cta-btns']

    Wait Until Location Is  https://www.bankofamerica.com/
    Wait Until Location Is Not  https://www.bankofamerica.com/abc
    Wait Until Location Contains  bankofamerica
    Wait Until Location Does Not Contain  bankofmaericadu

    Wait Until Element Contains  xpath://span[@class='spa-btn spa-btn--primary spa-btn--medium masthead-cta-btn']  Talk to us  timeout=10s
    Wait Until Element Does Not Contain  xpath://span[@class='spa-btn spa-btn--primary spa-btn--medium masthead-cta-btn']  Talk to you
    Wait Until Element Is Enabled  xpath://span[@class='spa-btn spa-btn--primary spa-btn--medium masthead-cta-btn']
    Wait Until Element Is Not Visible  xpath://span[@class='spa-btn spa-btn--primary spa-btn--medium masthead-cta-btns']
    Wait Until Element Is Visible  xpath://span[@class='spa-btn spa-btn--primary spa-btn--medium masthead-cta-btn']  timeout=10s




