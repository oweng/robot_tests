*** Settings ***
Documentation     A resource file with reusable keywords and variables.
Library           SeleniumLibrary

*** Variables ***
${SELENIUM}          http://hub:4444/wd/hub
${APPLICATION}       https://www.google.com/
${BROWSER}           Firefox
${DELAY}             0

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${APPLICATION}    browser=${BROWSER}    remote_url=${SELENIUM}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Google

Welcome Page Should Be Open
    Location Should Be    ${APPLICATION}
    Title Should Be    Google
