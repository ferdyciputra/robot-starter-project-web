*** Settings ***
Library     GetWebDriver.py
Library    SeleniumLibrary

*** Variables ***
${valid_username}     Admin
${valid_password}     admin123
${invalid_username}     invalid_username_value
${invalid_password}     invalid_password_value
${HOST}     https://opensource-demo.orangehrmlive.com/web/index.php
${BROWSER}    Chrome
${IMPLICIT_WAIT_IN_SECOND}    20

*** Keywords ***
Setup WebDriver
    Set Selenium Implicit Wait    ${IMPLICIT_WAIT_IN_SECOND}
    ${webdriver_path} =     GetWebDriver.Get Webdriver Path    ${BROWSER}
    Open Browser     browser=${BROWSER}    executable_path=${webdriver_path}
    Maximize Browser Window