*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Product Added
    wait until page contains  Added to Cart

Click Checkout
    click link  Proceed to checkout (1 item)
