*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Resource   ../Resources/Variables.robot

#Run the Script
# robot -d Results Tests/GetProducts.robot

*** Test Cases ***
Test Get One Product
    [Documentation]     Verify GET request for one product returns success
    Create Session    api_session    ${BASE_URL}
    ${response}=    GET On Session    api_session    ${One_PRODUCTS_ENDPOINT}
    Should Be Equal As Numbers    ${response.status_code}    200
    ${response_body}=   To Json    ${response.text}
    Log    ${response_body}

Test Get All Products
    [Documentation]     Verify GET request for products returns status code 200 and response body
    Create Session    api_session    ${BASE_URL}
    ${response}=    GET On Session    api_session    ${PRODUCTS_ENDPOINT}
    Should Be Equal As Numbers    ${response.status_code}    200
    ${response_body}=   To Json    ${response.text}
    Log    ${response_body}

Test Invalid Endpoint
    [Documentation]     Verify Invalid Endpoint
    Create Session    api_session    ${BASE_URL}
    ${response}=    GET   ${BASE_URL}    ${Invalid_PRODUCTS_ENDPOINT}
    Should Be Equal As Numbers    ${response.status_code}    404
    Log    Received status code: ${response.status_code}
