*** Settings ***
Documentation       This is checkout process at SauceDemo
Resource    ..//Resources/PO/LoginPage.robot
Resource    ..//Resources/PO/Products.robot
Resource    ..//Resources/PO/Cart.robot
Resource    ..//Resources/PO/Checkout.robot
Suite Setup     Insert Testing Data
Test Setup      Open Sauce Demo page
Test Teardown   Close Browser Session
Suite Teardown  Cleanup Testing Data

#Run the Script
# robot -d Results Tests/saucedemo.robot

*** Test Cases ***
Check Purchase products with valid data
    [Documentation]     This is testing to checkout products from SuaceDemo
    [Tags]      Smoke
    LoginPage.Sauce Demo Login   #Open Sauce Demo page and fill valid username and password
    LoginPage.Verify Login Success  #Check SauceDemo page is loaded well
    Cart.Add to Cart    #Add 1 st and 2nd products into Cart
    Cart.Verify Cart Badge   #Check added products count on Cart icon
    Cart.Open Cart  #Open Cart
    Products.Check Products in Cart  #Check products in Cart page
    Checkout.Scroll to view Checkout    #Scroll to view Checkout button
    Checkout.Check Checkout button Exists   #Check checkout button exists
    Checkout.Proceed to Checkout    #Click Checkout button
    Checkout.Check Checkout Page    #Check navigated page that is redirectd after clicking Checkout button
    Checkout.Apply User Information     #Fill information FirstName,LastName and postalcode
    Checkout.Check Checkout Overview page is loaded     #Checkout Checkout overview page after applying user information
    Checkout.Scroll to see Finish       #Scroll to visible Finish button
    Checkout.Check Payment Information      #Check payment information
    Checkout.Check Shipping Information      #Check shipping information
    Checkout.Check Price Total      #Check total price
    Checkout.Click Finish       #Click Finish button
    Checkout.Check Order Success     #Check checkout success

Check Checkout with no products selection
    [Documentation]     This is testing without chosing products
    [Tags]      Smoke
    LoginPage.Sauce Demo Login   #Open Sauce Demo page and fill valid username and password
    LoginPage.Verify Login Success  #Check SauceDemo page is loaded well
    Cart.Open Cart  #Open Cart
    Checkout.Check Checkout Button Not Exists   #Check checkout button is not having



