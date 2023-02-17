*** Settings ***
Resource            ../Resources/Common.robot
Resource            ../Resources/PO/LandingPage.robot
Resource            ../Resources/Lazada.robot

*** Test Cases ***
Should open Lazada shopping website and search product
    Common.Selenium General Settings
    Common.Start Web Test

    LandingPage.Load Lazada Web
    LandingPage.Verify Page Loaded

    Lazada.Search Product
    Lazada.View Product Page
    Lazada.Add to Cart

    Common.End Web Test
