*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling multiple windows
    Open the browser with URL
    Select the Alert with OK Option
    Verify Alert text
    Select the Alert with ok and cancel
    Verify the text in the alert
    Select the Alert with Input
    # Verify the Alert
*** Keywords ***
Open the browser with URL
    Open Browser    browser=headlesschrome
    Go To    https://demo.automationtesting.in/Alerts.html
    Maximize Browser Window
    Set Browser Implicit Wait    10

Select the Alert with OK Option
    Click Element    xpath=//a[@href="#OKTab"]
    Click Button    xpath=//button[@class="btn btn-danger"]    

Verify Alert text
    Alert Should Be Present   I am an alert box!    ACCEPT

Select the Alert with ok and cancel
    Click Element    xpath=//a[@href="#CancelTab"]
    Click Button    xpath=//button[@class="btn btn-primary"]

Verify the text in the alert
    Alert Should Be Present   Press a Button !    ACCEPT

Select the Alert with Input
    Click Element    xpath://a[contains(text(),'Alert with Textbox ')]
    Sleep    4s
    Click Button    xpath=//button[contains(text(),'click the button to demonstrate the prompt box')]
    Sleep    2s
    # Input Text Into Alert    Divraj    
    Handle Alert    DISMISS

# Verify the Alert
#     Page Should Contain    Hello Divraj How are you today

    
