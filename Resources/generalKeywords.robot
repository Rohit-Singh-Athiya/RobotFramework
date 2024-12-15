*** Settings ***
Library    SeleniumLibrary
Resource   ../PageObjects/locators.robot
Resource   ../PageObjects/urls.robot

*** Keywords ***
Launch Browser And Open URL
    [Arguments]    ${URL}     ${webBrowser}      ${title}
    open browser   ${URL}     ${webBrowser}
    maximize browser window
    title should be    ${title}