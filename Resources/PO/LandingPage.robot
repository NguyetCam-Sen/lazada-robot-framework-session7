*** Settings ***
Documentation       Keywords for Loading Page and Verifying
Library             SeleniumLibrary

*** Variables ***

*** Keywords ***
Load Lazada Web
    [Arguments]     ${web_link}
    go to           ${web_link}

Verify Page Loaded
    [Arguments]                     ${verify_web_keys}
    wait until page contains        ${verify_web_keys}