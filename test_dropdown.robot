*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Select Options in Dropdown
    Open the Browser With URL
    Select the dropdown options APIs with Value
    Select the dropdown options with Index
    Select the dropdown options with CSS by label

*** Keywords ***
Open the Browser With URL
    Create Webdriver    Firefox
    Go To    https://demo.automationtesting.in/Register.html
    Maximize Browser Window
    Set Selenium Implicit Wait     10s

Select the dropdown options APIs with Value
    Select From List By Value    id:Skills    APIs

Select the dropdown options with Index
    Select From List By Index    id:Skills    43

Select the dropdown options with CSS by label
    Select From List By Label    id:Skills    CSS

