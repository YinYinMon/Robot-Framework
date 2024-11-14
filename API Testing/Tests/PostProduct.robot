*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library    Collections
Resource   ../Resources/Variables.robot

#Run the Script
# robot -d Results Tests/PostProduct.robot

*** Test Cases ***
Test Create New product
    [Documentation]     Check POST https://fakestoreapi.com/products (ensure that post data is well structured
    Create Session    product    ${BASE_URL}
    ${data}=    Load Json From File    Resources/TestData/NewProduct.json
    ${response}=    POST On Session    product     ${PRODUCTS_ENDPOINT}    json=${data}
    Should Be Equal As Numbers    ${response.status_code}    201
    Log    Product created successfully. Response: ${response.text}

Test Invalid product
    [Documentation]    Test POST with invalid product data
    Create Session    product    ${BASE_URL}
    ${data}=    Create Dictionary    title=Missing Description
    ${response}=    POST On Session    product    ${PRODUCTS_ENDPOINT}   json=${data}
    Should Be Equal As Integers    ${response.status_code}    400