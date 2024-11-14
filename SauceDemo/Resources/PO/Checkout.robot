*** Settings ***
Library     SeleniumLibrary
Resource    ..//Variables.robot

*** Keywords ***
Scroll to view Checkout     #Scroll to view Checkout button
    Scroll Element Into View    id=checkout
    Sleep    2s

Proceed to Checkout     #Click Checkout button
    Click Button    id=checkout
    Sleep    2s
    
Check Checkout Page     #Check navigated page that is redirectd after clicking Checkout button
    Wait Until Page Contains    Checkout: Your Information
    Sleep    1s

Apply User Information  #Fill information to checkout
    Input Text    id=first-name    ${firstName}
    Input Text    id=last-name     ${lastName}
    Input Text    id=postal-code   ${postalCode}
    Click Button    id=continue
    Sleep    3s

Check Checkout Overview page is loaded      #Checkout Checkout overview page after applying user information
    Wait Until Page Contains    Checkout: Overview
    Sleep    1s

Scroll to see Finish    #Scroll to visible Finish button
    Scroll Element Into View    id=finish
    Sleep    3s

Check Payment Information       #Check payment information
    ${PaymentInfo} =    Get Text    xpath=//div[@class='summary_value_label']
    Should Be Equal As Strings    ${PaymentInfo}    SauceCard #31337

Check Shipping Information      #Check shipping information
    ${ShipInfo}=    Get Text    xpath://*[@id="checkout_summary_container"]/div/div[2]/div[4]
    Should Be Equal As Strings    ${ShipInfo}    Free Pony Express Delivery!

Check Price Total       #Check total price
    ${totalValue}=  Get Text    xpath=//div[@class='summary_total_label']
    Should Be Equal As Strings    ${totalValue}    Total: $43.18

Click Finish        #Click Finish button
    Click Button    id=finish
    Sleep    3s

Check Order Success     #Check checkout success
    Wait Until Page Contains    Thank you for your order!
    Sleep    3s

Check Checkout button Exists        #Check checkout button is having
    Element Should Be Visible   id=checkout

Check Checkout Button Not Exists      #Check checkout button is not having
    Element Should Not Be Visible   id=checkout
