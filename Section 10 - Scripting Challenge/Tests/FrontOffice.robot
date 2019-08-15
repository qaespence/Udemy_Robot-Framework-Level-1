*** Settings ***
Documentation  Automation for robotframeworktutorial.com/front-office
Resource  ../Resources/FrontOfficeSite.robot
Resource  ../Resources/Common.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER}  chrome
${START_URL}  http://www.robotframeworktutorial.com/front-office/

*** Test Cases ***
User can access the Team page
    [Documentation]  Test that the team page is accessable
    FrontOfficeSite.Load Landing Page
    FrontOfficeSite.Verify Page Loaded
    FrontOfficeSite.Click Team Page Link
    FrontOfficeSite.Verify Team Page

Team page has the correct header
    [Documentation]  Test that the team page has the correct header
    FrontOfficeSite.Load Landing Page
    FrontOfficeSite.Verify Page Loaded
    FrontOfficeSite.Click Team Page Link
    FrontOfficeSite.Verify Team Page
    FrontOfficeSite.Verify Team Page Header

*** Keywords ***



