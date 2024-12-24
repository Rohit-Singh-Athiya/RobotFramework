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

Check Element Is Accessible
    [Arguments]    ${locator}
    element should be visible        ${locator}

Login
    [Arguments]     ${loginUsernameData}        ${loginPasswordData}
    input text      ${loginUserName}        ${loginUsernameData}
    input text      ${loginPassword}        ${loginPasswordData}
    click element   ${loginSubmit}