*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Username} =   standard_user
${Password} =   secret_sauce
${firstName}=   Yin Yin
${lastName}=  Mon
${postalCode}=  10240
${URL}      https://www.saucedemo.com/
${Browser}  chrome
${CHECKOUT_BUTTON}    id=checkout