*** Settings ***
Library    SeleniumLibrary
Resource   ../PageObjects/urls.robot
Resource    ../Resources/generalKeywords.robot
*** Variables ***



*** Test Cases ***
Check If Webpage Is Accessible
     [Tags]         Sanity
     Launch Browser And Open URL    ${AutomationTestStore}    Chrome     A place to practice your automation skills!

