*** Settings ***
Documentation           Keywords for Opening and Closing Browser
Library                 SeleniumLibrary

*** Variables ***

*** Keywords ***
Selenium General Settings
    set selenium speed             .2
    set selenium timeout           10s

Start Web Test
    [Arguments]             ${browser}
    open browser            about:blank         ${browser}

End Web Test
    close browser
