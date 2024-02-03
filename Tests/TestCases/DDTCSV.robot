*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/common.robot
Library  DataDriver  ../../TestData/TestData.csv

Suite Setup  common.Start testcase
Suite Teardown  common.Finish testcase
Test Template  Invalid Login Scenarios

*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
    Input Text  ${textbox_username}  ${username}
    Input Text  ${textbox_password}  ${password}
    Click Button  ${login_btn}
    Sleep  2s
    Element Should Contain  ${txt_error}  ${error_msg}
