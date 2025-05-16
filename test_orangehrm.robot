*** Settings ***
Documentation    Test cases for OrangeHRM login functionality
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${Valid_username}    Admin
${Valid_password}    admin123
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
&{Visible_Element}    Forgot your password?=xpath://p[@class="oxd-text oxd-text--p orangehrm-login-forgot-header"]
&{Dashboard}    Dashboard=xpath://h6[@class="oxd-text oxd-text--h6 oxd-topbar-header-breadcrumb-module"]

*** Test Cases ***

Validate Elements on Login
    Open the Browser with URL
    Verify Element on Login Page

Validate Sucessfull Login
    Open the Browser with URL
    Fill the Login Form
    Verify the Dashboard Page
    Verify item on the Dashboard Page
    

*** Keywords ***

Open the Browser with URL
    Open Browser    browser=headlessfirefox
    Go To    ${url}
    Maximize Browser Window
    Set Selenium Implicit Wait    5s

Verify Element on Login Page
    Element Should Be Visible    ${Visible_Element}[Forgot your password?]

Fill the Login Form
    Input Text    name=username    ${Valid_username}
    Input Text    name=password    ${Valid_password}
    Click Button    //button[@type="submit"]

Verify the Dashboard Page
    Sleep    5s
    Element Should be Visible    ${Dashboard}[Dashboard]

Verify item on the Dashboard Page
    @{expectedList}=    Create List    Admin    PIM    Leave    Time    Recruitment    My Info    Performance    Dashboard    Directory    Maintenance    Claim    Buzz
    @{elements}=    Get WebElements    css:.oxd-main-menu-item
    @{actualList}=    Create List
    FOR    ${element}    IN    @{elements}
        Log    ${element.text}
        Append To List    ${actualList}    ${element.text}
    END

    Lists Should Be Equal   ${expectedList}    ${actualList}
    