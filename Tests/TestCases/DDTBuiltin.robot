*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/common.robot
Resource  DDTDemo.robot

Suite Setup  common.Start testcase
Suite Teardown  common.Finish testcase
Test Template  Invalid Login Scenarios

*** Test Cases ***                                   USERNAME         PASSWORD        ERROR MESSAGE
Verify login fails - Blank Username and Password     ${EMPTY}         ${EMPTY}        Epic sadface: Username is required
Verify login fails - Wrong username                  standard_us      secret_sauce    Epic sadface: Username and password do not match any user in this service
Verify login fails - Locked out user                 locked_out_user  secret_sauce    Epic sadface: Sorry, this user has been locked out.
Verify login fails - Wrong password                  standard_user    secret_sau      Epic sadface: Username and password do not match any user in this service
Verify login fails - Wrong username and password     standard_us      secret_sau      Epic sadface: Username and password do not match any user in this service
Library  SeleniumLibrary
Resource  ../../Resources/common.robot
Library  DataDriver  ../../TestData/TestData.csv

Suite Setup  common.Start testCase
Suite Teardown  common.Finish testCase
Test Template  Invalid Login Scenarios



*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
    Input Text  ${textbox_username}  ${username}
    Input Text  ${textbox_password}  ${password}
    Click Button  ${login_btn}
    Sleep  2s
    Element Should Contain  ${txt_error}  ${error_msg}



