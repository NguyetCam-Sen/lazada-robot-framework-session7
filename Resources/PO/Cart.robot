*** Settings ***
Documentation           Keywords for Adding Product to Cart
Library                 SeleniumLibrary

*** Keywords ***
Click on Add To Cart Button
    [Arguments]             ${cart_button_xpath}
    click button            ${cart_button_xpath}

#User must login to add item to cart
#    [Arguments]             ${verify_cart_login_page}
#    wait until page contains        ${verify_cart_login_page}
