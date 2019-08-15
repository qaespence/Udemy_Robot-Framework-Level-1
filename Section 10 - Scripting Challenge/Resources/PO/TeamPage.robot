*** Settings ***
Documentation  PO file for the Team Page of robotframeworktutorial.com/front-office
Library  SeleniumLibrary

*** Variables ***
${TEAM_PAGE_CONTENTS}  Lorem ipsum dolor sit amet consectetur.
${TEAM_PAGE_HEADER}  Our Amazing Team
${TEAM_PAGE_HEADER_LABEL}  css=#team > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > h2:nth-child(1)

*** Keywords ***
Verify Page Loaded
    wait until page contains  ${TEAM_PAGE_CONTENTS}
    sleep  2

Verify Team Header
    # wait until page contains  ${TEAM_PAGE_HEADER}
    sleep  2
    ${ElementText}  get text  ${TEAM_PAGE_HEADER_LABEL}
    should be equal as strings  ${ElementText}  ${TEAM_PAGE_HEADER}  ignore_case=true
