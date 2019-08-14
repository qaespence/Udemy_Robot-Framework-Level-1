*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Login
    [Arguments]  ${Username}  ${Password}
    SignIn.Login With Valid Credentials  ${Username}  ${Password}

Login with Invalid Credentials
    SignIn.Fill Email Field  BadEmail@Email.com
    SignIn.Fill Password Field  BadPassword
    SignIn.Click Sign In Button

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Click Checkout
    SignIn.Verify Page Loaded
