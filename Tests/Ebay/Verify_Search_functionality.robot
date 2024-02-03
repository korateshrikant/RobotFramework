*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start testCase
Test Teardown  CommonFunctionality.End testCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality
    [Documentation]  This test case verifies basic functionality
    [Tags]  Functional
    HeaderPage.Input Search Text and Click Search  robot
    SearchResultsPage.Verify Search Results  robot

