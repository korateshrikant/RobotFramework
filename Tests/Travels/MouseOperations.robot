*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate browser window operations in robot FW
    [Documentation]  TC to handel alerts in robot FW
    Open Browser  https://www.google.com  Chrome
    Maximize Browser Window
    Sleep  2s
    Mouse Down  xpath://textarea[@id='APjFqb']
    Sleep  2s
    Mouse Down  xpath://div[@class='uU7dJb']
    Sleep  2s
    #Scroll Element Into View  xpath://a[normalize-space()='About']
    #Sleep  2s
    Mouse Down On Link  xpath://a[normalize-space()='Images']
    Sleep  4s
    Mouse Over  xpath://textarea[@id='APjFqb']
    Sleep  2s
    Mouse Out  xpath://textarea[@id='APjFqb']
    Sleep  2s
    Mouse Down On Image  xpath://img[@alt='Google']
    Sleep  2s

    #Drag and Drop Example
    Go To  https://demoqa.com/droppable/
    Drag And Drop  xpath://div[@id='draggable']  xpath://div[@id='simpleDropContainer']//div[@id='droppable']
    Sleep  2s

    #Right Click On element
    Open Context Menu  xpath://a[@id='droppableExample-tab-accept']
    Sleep  2s

    Close Browser


