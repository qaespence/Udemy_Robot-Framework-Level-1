*** Settings ***
Documentation  PO file for the Top Navigation Bar of robotframeworktutorial.com/front-office
Library  SeleniumLibrary

*** Variables ***
${TOPNAV_TEAM_LINK}  //a[contains(text(),'Team')]

*** Keywords ***
Click Team Link
    wait until element is visible  ${TOPNAV_TEAM_LINK}
    click element  ${TOPNAV_TEAM_LINK}
    sleep  2

