*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Resource    ../Resources/Variables.robot

#Run the Script
# robot -d Results Tests/GetCategories.robot

*** Test Cases ***
Test Get Categories
    [Documentation]    Test GET request to retrieve product categories
    Create Session    products    ${BASE_URL}
    ${response}=    GET On Session    products    ${CATEGORIES_ENDPOINT}
    Should Be Equal As Integers    ${response.status_code}    200
    Should Not Be Empty    ${response.json()}
    Log    Categories retrieved successfully. Response: ${response.text}

Test Get Categories Invalid Endpoint
    [Documentation]    Test GET request with an invalid endpoint for categories
    Create Session    products    ${BASE_URL}
    ${response}=    GET On Session    products    ${CATEGORIES_Invalid_ENDPOINT}
    Should Be Equal As Integers    ${response.status_code}    404
    Log    Invalid endpoint for categories. Response: ${response.text}