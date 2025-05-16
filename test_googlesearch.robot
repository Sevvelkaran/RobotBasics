*** Settings ***

Library    SeleniumLibrary

*** Variables ***



*** Test Cases ***

Search Selenium In Google
    Open Browser    https://www.google.in/    browser=firefox    
    Input Text      name=q    Selenium
    Click Button    name=btnK
    Page Should Contain    Selenium
    Close Browser

Search RobotFramework in Google
    Open Browser    https://www.google.in/    browser=firefox
    Input Text      name=q    RobotFramework
    Click Button    name=btnK
    Page Should Contain    Robot Framework
    Close Browser