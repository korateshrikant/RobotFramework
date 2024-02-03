*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Vefiy Search Results
    Input Text  xpath://input[@id='gh-ac']  mobile
    Press Keys  xpath://input[@id='gh-btn']  [Return]
    Page Should Contain  results for mobile

Filter results by Condtion
    Mouse Over  xpath://span[@class='btn__cell']//span[contains(text(),'Condition')]
    Press Keys  xpath://span[@class='btn__cell']//span[contains(text(),'Condition')]  [Return]
    Sleep  3s
    Mouse Down  xpath://span[normalize-space()='New']//span[@class='checkbox__icon']
    Click Element  xpath://span[normalize-space()='New']//span[@class='checkbox__icon']

Verify filter results
    Element Should Contain  //li[@class='carousel__snap-point srp-carousel-list__item srp-carousel-list__item--group-has-title srp-multi-aspect__item--applied']//a[@class='srp-carousel-list__item-link']  New
