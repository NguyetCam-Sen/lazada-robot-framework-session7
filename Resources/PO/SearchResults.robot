*** Settings ***
Documentation           Keywords for Searching Products
Library                 SeleniumLibrary

*** Keywords ***
Search Product on Lazada
    input text          id=q        Airpod pro
    click button        xpath=//*[@id="topActionHeader"]/div/div[2]/div/div[2]/div/form/div/div[2]/button

Verify Product Searched
    wait until page contains        Tai Nghe Bluetooth
