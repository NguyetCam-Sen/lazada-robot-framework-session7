*** Settings ***
Documentation           Keywords for Behaviors on Lazada Web
Resource                PO/SearchResults.robot
Resource                PO/Product.robot
Resource                PO/Cart.robot

*** Keywords ***
Search Product
    [Arguments]     ${search_input_id}      ${search_text}      ${search_button_xpath}      ${verify_product_searched_keys}
    SearchResults.Search Product on Lazada      ${search_input_id}      ${search_text}      ${search_button_xpath}
    SearchResults.Verify Product Searched       ${verify_product_searched_keys}

View Product Page
    [Arguments]     ${product_xpath}        ${verify_product_page_loaded_keys}
    Product.Choose Product from Search Results Page             ${product_xpath}
    Product.Verify Product Page Loaded                          ${verify_product_page_loaded_keys}

Add to Cart
    [Arguments]             ${cart_button_xpath}        ${verify_cart_login_page}
    Cart.Click on Add To Cart Button                    ${cart_button_xpath}
    #Cart.User must login to add item to cart            ${verify_cart_login_page}

