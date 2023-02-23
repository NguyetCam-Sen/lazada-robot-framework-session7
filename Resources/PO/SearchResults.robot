*** Settings ***
Documentation           Keywords for Searching Products
Library                 SeleniumLibrary

*** Variables ***
${search_input_id}                  q
${search_text}                      Airpod pro
${search_button_xpath}              xpath=//*[@id="topActionHeader"]/div/div[2]/div/div[2]/div/form/div/div[2]/button
${verify_product_searched_keys}     Tai Nghe Bluetooth

*** Keywords ***
Search Product on Lazada
    input text                      ${search_input_id}        ${search_text}
    click button                    ${search_button_xpath}

Verify Product Searched
    wait until page contains        ${verify_product_searched_keys}
