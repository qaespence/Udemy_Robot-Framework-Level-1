*** Settings ***
Documentation  Main site automation file for robotframeworktutorial.com/front-office
Library  SeleniumLibrary
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/TeamPage.robot
Resource  ../Resources/PO/Landing.robot

*** Keywords ***
Load Landing Page
    Landing.Navigate To

Verify Page Loaded
    wait until page contains  Welcome To Our Studio!

Click Team Page Link
    TopNav.Click Team Link

Verify Team Page
    TeamPage.Verify Page Loaded

Verify Team Page Header
    TeamPage.Verify Team Header

