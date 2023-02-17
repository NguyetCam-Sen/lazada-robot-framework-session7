*** Settings ***
Documentation           Keywords for Opening and Closing Browser
Library                 SeleniumLibrary

*** Keywords ***
Selenium General Settings
    set selenium speed             .2
    set selenium timeout           10s

Start Web Test
    open browser            about:blank         chrome

End Web Test
    close browser
