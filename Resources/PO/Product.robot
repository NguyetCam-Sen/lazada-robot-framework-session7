*** Settings ***
Documentation           Keywords for Loading Product Page
Library                 SeleniumLibrary

*** Variables ***

*** Keywords ***
Choose Product from Search Results Page
    [Arguments]                     ${product_xpath}
    click link                      ${product_xpath}

Verify Product Page Loaded
    [Arguments]                     ${verify_product_page_loaded_keys}
    wait until page contains        ${verify_product_page_loaded_keys}
