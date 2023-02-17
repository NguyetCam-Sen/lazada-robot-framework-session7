*** Settings ***
Documentation           Keywords for Loading Product Page
Library                 SeleniumLibrary

*** Keywords ***
Choose Product from Search Results Page
    click link          xpath=//*[@id="root"]/div/div[2]/div[1]/div/div[1]/div[2]/div[1]/div/div/div[2]/div[2]/a

Verify Product Page Loaded
    wait until page contains        Ratings
