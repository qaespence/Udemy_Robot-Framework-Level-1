*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR}  id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON}  xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Search for Products
    input text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}
    click button  ${TOPNAV_SEARCH_BUTTON}