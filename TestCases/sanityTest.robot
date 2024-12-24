*** Settings ***
Library    SeleniumLibrary
Resource   ../PageObjects/urls.robot
Resource    ../Resources/generalKeywords.robot
*** Variables ***



*** Test Cases ***
Check If Webpage Is Accessible
     [Tags]         Sanity
     Launch Browser And Open URL    ${petStore}    Chrome     JPetStore Demo

Check Elements Loaded Successfully
     [Tags]         Sanity
     check element is accessible     ${fishMenu}
     check element is accessible     ${dogsMenu}
     check element is accessible     ${catsMenu}
     check element is accessible     ${reptilesMenu}
     check element is accessible     ${birdsMenu}

