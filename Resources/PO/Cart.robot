*** Settings ***
Documentation           Keywords for Adding Product to Cart
Library                 SeleniumLibrary

*** Keywords ***
Click on Add To Cart Button
    click button            xpath=//*[@id="module_add_to_cart"]/div/button[2]

User must login to add item to cart
    wait until page contains        Welcome! Please Login to continue.
