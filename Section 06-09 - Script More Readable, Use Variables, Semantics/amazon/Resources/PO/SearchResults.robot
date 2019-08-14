*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Search Completed
    wait until page contains  results for "${SEARCH_TERM}"

Click Product Link
    click link  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[47]/div/div/div/div[2]/div[1]/div/div/span/a