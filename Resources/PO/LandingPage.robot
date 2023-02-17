*** Settings ***
Documentation       Keywords for Loading Page and Verifying
Library             SeleniumLibrary

*** Keywords ***
Load Lazada Web
    go to           http://lazada.vn

Verify Page Loaded
    wait until page contains        LazMall