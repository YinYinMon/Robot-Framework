*** Settings ***
Library     SeleniumLibrary
Resource    ..//Variables.robot

*** Keywords ***
Add to Cart     #Add 1 st and 2nd products into Cart
    Click Button    id=add-to-cart-sauce-labs-backpack
    Click Button    id=add-to-cart-sauce-labs-bike-light
    Sleep    2s

Verify Cart Badge   #Check added products count on Cart
    Element Text Should Be    class=shopping_cart_badge    2

Open Cart   #Open Cart
    Click Link    xpath://*[@id="shopping_cart_container"]/a
    Sleep    2s