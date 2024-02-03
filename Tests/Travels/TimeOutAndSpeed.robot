*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate timeout and Speed in robot FW
    [Documentation]  TC to handel timeout and Speed in robot FW
    ${default_selenium_timeout}=  Get Selenium Timeout
    ${default_selenium_speed}=  Get Selenium Speed
    Set Selenium Speed  4s
    Open Browser  https://www.google.com  Chrome

    Maximize Browser Window

    Mouse Down  xpath://textarea[@id='APjFqb']

    Mouse Down  xpath://div[@class='uU7dJb']

    #Scroll Element Into View  xpath://a[normalize-space()='About']
    #Sleep  2s
    Mouse Down On Link  xpath://a[normalize-space()='Images']

    Mouse Over  xpath://textarea[@id='APjFqb']

    Mouse Out  xpath://textarea[@id='APjFqb']

    Mouse Down On Image  xpath://img[@alt='Google']


    #Drag and Drop Example
    Go To  https://demoqa.com/droppable/
    Drag And Drop  xpath://div[@id='draggable']  xpath://div[@id='simpleDropContainer']//div[@id='droppable']


    #Right Click On element
    Open Context Menu  xpath://a[@id='droppableExample-tab-accept']


    Close Browser

