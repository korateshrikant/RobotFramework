*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate browser window operations in robot FW
    [Documentation]  TC to demonstrate web eleemtns operations in robot FW
    Open Browser  https://google.com  Chrome  alias=ChromeRCV
    Maximize Browser Window
    Sleep  4s
    ${attr}=  Get Element Attribute  xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']  class
    ${count}=  Get Element Count  xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
    ${width}  ${height}=  Get Element Size  xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
    Get WebElement  xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
    @{webelements}=  Get WebElements  xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
    Capture Element Screenshot  xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
    Assign Id to Element  name:btnK  RCVid
    Page Should Contain Element  RCVid
    Element Should Be Focused  xpath://textarea[@id='APjFqb']
    Element Should Be Visible  xpath://textarea[@id='APjFqb']
    Input Text  xpath://textarea[@id='APjFqb']  RCVAcademy
    Clear Element Text  xpath://textarea[@id='APjFqb']
    Cover Element  xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnI']
    Element Attribute Value Should Be  name:btnK  value  Google Search
    Element Should Be Enabled  name:btnK
    Element Should Not Be Visible  name:btnKgf
    Element Should Contain  xpath://a[normalize-space()='How Search works']  How Search
    Element Should Not Contain  xpath://a[normalize-space()='How Search works']  Google Search
    Element Text Should Be  xpath://a[normalize-space()='How Search works']  How Search works
    Element Text Should Not Be  xpath://a[normalize-space()='How Search works']  How Search
    Double Click Element  xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
    Click Element At Coordinates  xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']  15  10
    #Element Should Be Disabled  xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
    Close Browser








