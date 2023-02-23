*** Settings ***
Documentation           Keywords for Searching Products
Library                 SeleniumLibrary

*** Variables ***

*** Keywords ***
Search Product on Lazada
    [Arguments]                     ${search_input_id}      ${search_text}      ${search_button_xpath}
    input text                      ${search_input_id}      ${search_text}
    click button                    ${search_button_xpath}

Verify Product Searched
    [Arguments]                     ${verify_product_searched_keys}
    wait until page contains        ${verify_product_searched_keys}
