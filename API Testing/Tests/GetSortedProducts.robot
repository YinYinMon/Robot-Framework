*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Resource    ../Resources/Variables.robot

#Run the Script
# robot -d Results Tests/GetSortedProducts.robot

*** Test Cases ***
Test Get Sorted Products Ascending
    [Documentation]    Test GET request for retrieving products sorted in ascending order
    Create Session    products    ${BASE_URL}
    ${response}=    GET On Session    products    ${PRODUCTS_ENDPOINT}    params=sort=asc
    Should Be Equal As Integers    ${response.status_code}    200
    Should Not Be Empty    ${response.json()}
    Log    Products retrieved successfully in ascending order. Response: ${response.text}

Test Get Sorted Products Descending
    [Documentation]    Test GET request for retrieving products sorted in descending order
    Create Session    products    ${BASE_URL}
    ${response}=    GET On Session    products    ${PRODUCTS_ENDPOINT}    params=sort=asc
    Should Be Equal As Integers    ${response.status_code}    200
    Should Not Be Empty    ${response.json()}
    Log    Products retrieved successfully in descending order. Response: ${response.text}

Test Get Sorted Products Invalid Sort Parameter
    [Documentation]    Test GET request with an invalid sort parameter
    Create Session    products    ${BASE_URL}
    ${response}=    GET On Session    products    ${PRODUCTS_ENDPOINT}      params=sort=asc
    Should Be Equal As Integers    ${response.status_code}    400
    Log    Invalid sort parameter. Response: ${response.text}