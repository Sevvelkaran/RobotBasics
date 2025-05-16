*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
Validate Elements on Login
    Open the Browser with URL
    Select impressive option from 3 radio buttons
    Select the Radio Button
    Verify that the radio button is selected

*** Keywords ***
Open the Browser with URL
    Open Browser    browser=firefox
    Go To    https://demo.automationtesting.in/Register.html
    Maximize Browser Window
    Set Selenium Implicit Wait    5s

Select impressive option from 3 radio buttons
    Page Should Contain Radio Button    name:radiooptions
    Page Should not Contain Radio Button    id:checkbox1
    Select Radio Button    radiooptions    Male
    # Click Element    name:radiooptions   


Verify that the radio button is selected
    Radio Button Should be Set To    radiooptions    Male

