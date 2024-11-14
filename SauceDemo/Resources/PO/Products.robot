*** Settings ***
Library     SeleniumLibrary
Library    XML
Resource    ..//Variables.robot

*** Keywords ***
Check Products in Cart  #Check products in Cart
    Wait Until Page Contains    Your Cart
    Sleep    2s
    Element Should Contain    xpath://*[@id="item_4_title_link"]/div    Sauce Labs Backpack
    ${Sauce Labs Backpack Price}=   Get Text    xpath://*[@id="cart_contents_container"]/div/div[1]/div[3]/div[2]/div[2]/div
    Should Be Equal As Strings    ${Sauce Labs Backpack Price}    $29.99
    Element Should Contain    xpath://*[@id="item_0_title_link"]/div    Sauce Labs Bike Light
    ${Sauce Labs Bike Light Price}=     Get Text    xpath://*[@id="cart_contents_container"]/div/div[1]/div[4]/div[2]/div[2]/div
    Should Be Equal As Strings    ${Sauce Labs Bike Light Price}    $9.99