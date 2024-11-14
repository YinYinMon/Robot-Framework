*** Settings ***
Library     RequestsLibrary
Resource    ../Resources/Variables.robot

#Run the Script
# robot -d Results Tests/DeleteProduct.robot

*** Test Cases ***
Test Delete Product
    [Documentation]    Test DELETE request to remove an existing product
    Create Session    products    ${BASE_URL}
    ${response}=    DELETE On Session    products    ${PRODUCTS_ENDPOINT}/${VALID_PRODUCT_ID}
    Should Be Equal As Integers    ${response.status_code}    200
    Log    Product deleted successfully. Response: ${response.text}

Test Delete Invalid Product
    [Documentation]    Test DELETE request with an invalid product ID (non existing product)
    Create Session    products    ${BASE_URL}
    ${response}=    DELETE On Session    products    ${PRODUCTS_ENDPOINT}/${INVALID_PRODUCT_ID}
    Should Be Equal As Integers    ${response.status_code}    404
    Log    Invalid product deletion attempt. Response: ${response.text}