*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}   https://fakestoreapi.com
${PRODUCTS_ENDPOINT}   /products
${One_PRODUCTS_ENDPOINT}   /products/1
${Invalid_PRODUCTS_ENDPOINT}    /invalidproducts
${PRODUCT_DATA}            {"title": "New Product"}
${INVALID_PRODUCT_ID}      99999
${VALID_PRODUCT_ID}        1
${CATEGORIES_ENDPOINT}     /products/categories
${CATEGORIES_Invalid_ENDPOINT}     /products/categories

