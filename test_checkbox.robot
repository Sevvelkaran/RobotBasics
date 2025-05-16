*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Validate Elements on Login
    Open the Browser with URL
    Verify the page contains checkbox
    Select Checkbox Options Cricket and Hockey
    Unselet Hockey
    Verify that Cricket is selected
    Verify that Hockey is not selected

*** Keywords ***
Open the Browser with URL-
    Open Browser    browser=headlessfirefox
    Go To    https://demo.automationtesting.in/Register.html
    Maximize Browser Window
    Set Selenium Implicit Wait    5s

Verify the page contains checkbox
    Page Should Contain Checkbox    id:checkbox1
    Page Should Contain Checkbox    id:checkbox2
    Page Should not Contain Checkbox    name:radiooptions

Select Checkbox Options Cricket and Hockey
    Select Checkbox    id:checkbox1
    Select Checkbox    id:checkbox3

Unselet Hockey
    Unselect Checkbox    id:checkbox3

Verify that Cricket is selected
    Checkbox Should be Selected    id:checkbox1
    
Verify that Hockey is not selected
    Checkbox Should not be Selected    id:checkbox3
    