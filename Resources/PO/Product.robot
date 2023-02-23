*** Settings ***
Documentation           Keywords for Loading Product Page
Library                 SeleniumLibrary

*** Variables ***
${product_xpath}                    xpath=//*[@id="root"]/div/div[2]/div[1]/div/div[1]/div[2]/div[1]/div/div/div[2]/div[2]/a
${verify_page_loaded_keys}          Ratings

*** Keywords ***
Choose Product from Search Results Page
    click link                      ${product_xpath}

Verify Product Page Loaded
    wait until page contains        ${verify_page_loaded_keys}
