*** Settings ***
Documentation  Basic Search functionality
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/ebay_User_Definedkeywords.robot
Test Setup  CommonFunctionality.Start testCase
Test Teardown  CommonFunctionality.End testCase



*** Variables ***

*** Test Cases ***
Verify basic search functionality for ebay
    [documentation]  this test case verifys basic search functionality of ebay
    [tags]  Functional


    ebay_User_Definedkeywords.Vefiy Search Results
    ebay_User_Definedkeywords.Filter results by Condtion
    ebay_User_Definedkeywords.Verify filter results









