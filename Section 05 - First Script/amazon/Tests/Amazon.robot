*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    open browser  http://www.amazon.com  chrome
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains  results for "Ferrari 458"
    sleep  2
    click link  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[47]/div/div/div/div[2]/div[1]/div/div/span/a
    wait until page contains  Back to results
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart
    click link  Proceed to checkout (1 item)
    page should contain element  id=authportal-main-section
    sleep  2
    close browser

*** Keywords ***