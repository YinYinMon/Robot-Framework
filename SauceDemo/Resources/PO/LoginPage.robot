*** Settings ***
Library     SeleniumLibrary
Resource    ..//Variables.robot

*** Keywords ***
Open Sauce Demo page    #Open Sauce Demo page
    Open Browser     ${URL}     ${Browser}
    Maximize Browser Window

Verify page is loaded   #Check SauceDemo page is loaded
    Wait Until Page Contains    Swag Labs
    Sleep    1s

Sauce Demo Login    #Fill data to login
    Input Text    id=user-name  ${Username}
    Input Text    id=password    ${Password}
    Click Button    id=login-button
    Sleep    1s

Verify Login Success    #Check success login
    Wait Until Page Contains    Products
    Sleep    2s

Close Browser Session   #Close Browswer
        Close Browser

Insert Testing Data     #Start testing data
    Log     I am setting up the data...

Cleanup Testing Data    #Clean testing data
    Log     I am clearning up the data...
