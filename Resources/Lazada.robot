*** Settings ***
Documentation           Keywords for Behaviors on Lazada Web
Resource                PO/SearchResults.robot
Resource                PO/Product.robot
Resource                PO/Cart.robot

*** Keywords ***
Search Product
    SearchResults.Search Product on Lazada
    SearchResults.Verify Product Searched

View Product Page
    Product.Choose Product from Search Results Page
    Product.Verify Product Page Loaded

Add to Cart
    Cart.Click on Add To Cart Button
    Cart.User must login to add item to cart

