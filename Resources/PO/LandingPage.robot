*** Settings ***
Documentation       Keywords for Loading Page and Verifying
Library             SeleniumLibrary

*** Variables ***
${web_link}         http://lazada.vn
${verify_keys}      LazMall

*** Keywords ***
Load Lazada Web
    go to           ${web_link}

Verify Page Loaded
    wait until page contains        ${verify_keys}