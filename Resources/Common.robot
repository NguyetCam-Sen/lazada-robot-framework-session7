*** Settings ***
Documentation           Keywords for Opening and Closing Browser
Library                 SeleniumLibrary

*** Variables ***
${browser}              chrome

*** Keywords ***
Selenium General Settings
    set selenium speed             .2
    set selenium timeout           10s

Start Web Test
    open browser            about:blank         ${browser}

End Web Test
    close browser
