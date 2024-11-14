*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Resource    ../Resources/Variables.robot

#Run the Script
# robot -d Results Tests/PutProduct.robot

*** Test Cases ***
Test Update Product
    [Documentation]    Test PUT request to update an existing product
    Create Session    products    ${BASE_URL}
    ${UPDATE_PRODUCT_DATA}=  Load Json From File    Resources/TestData/UpdateProduct.json
    ${response}=    PUT On Session    products    ${PRODUCTS_ENDPOINT}/${VALID_PRODUCT_ID}    json=${UPDATE_PRODUCT_DATA}
    Should Be Equal As Integers    ${response.status_code}    200
    Log    Product updated successfully. Response: ${response.text}

Test Update Invalid Product
    [Documentation]    Test PUT request with an invalid product ID for non existing product
    Create Session    products    ${BASE_URL}
    ${UPDATE_PRODUCT_DATA}=  Load Json From File    Resources/TestData/UpdateProduct.json
    ${response}=    PUT On Session    products    ${PRODUCTS_ENDPOINT}/${INVALID_PRODUCT_ID}    json=${UPDATE_PRODUCT_DATA}
    Should Be Equal As Integers    ${response.status_code}    404
    Log    Invalid product update attempt. Response: ${response.text}