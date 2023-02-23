*** Settings ***
Resource            ../Resources/Common.robot
Resource            ../Resources/PO/LandingPage.robot
Resource            ../Resources/Lazada.robot

*** Variables ***
# Launching Web Driver
${browser}                          safari

# Launch Testing Website
#${web_link}                         http://lazada.vn
#${verify_web_keys}                  LazMall
@{url_and_verify_keys}              http://lazada.vn        LazMall

# Search Variables
${search_input_id}                  q
${search_text}                      Airpod pro
${search_button_xpath}              xpath=//*[@id="topActionHeader"]/div/div[2]/div/div[2]/div/form/div/div[2]/button
${verify_product_searched_keys}     Tai Nghe Bluetooth

# View Product Variables
${product_xpath}                    xpath=//*[@id="root"]/div/div[2]/div[1]/div/div[1]/div[2]/div[1]/div/div/div[2]/div[2]/a
${verify_product_page_loaded_keys}  Ratings

# Add Cart Variables
${cart_button_xpath}                xpath=//*[@id="module_add_to_cart"]/div/button[2]
${verify_cart_login_page}           Welcome! Please Login to continue.

*** Test Cases ***
Should open Lazada shopping website and search product
    Common.Selenium General Settings
    Common.Start Web Test                   ${browser}

    LandingPage.Load Lazada Web             ${url_and_verify_keys}[0]
    LandingPage.Verify Page Loaded          ${url_and_verify_keys}[1]

    Lazada.Search Product                   ${search_input_id}      ${search_text}      ${search_button_xpath}      ${verify_product_searched_keys}
    Lazada.View Product Page                ${product_xpath}        ${verify_product_page_loaded_keys}
    Lazada.Add to Cart                      ${cart_button_xpath}    ${verify_cart_login_page}

    Common.End Web Test
