*** Settings ***
Library    Collections
Resource   ../PageObjects/urls.robot
Resource   ../Resources/generalKeywords.robot
Resource    ../Resources/registrationKeywords.robot
Library    ../helperMethods/emailGeneration.py
Library    ../PageObjects/locators.robot
*** Variables ***

*** Test Cases ***
User Registration
    [Tags]      P1      UserCreation    Regression
    ${myDict}=     create dictionary    fnamedata=Rohit    lnamedata=Singh    emailData=testEmail    phone=9998887772    faxNum=123456    companyInfo=Test Company     add1=address1     add2=address2     cityData=Ujjain    inputState=Bihar    zipCode=456001   selectCountry=India    loginNameData=Rohit    passwordData=Rohit@123
    launch browser and open url    ${AutomationTestStore}    Chrome     A place to practice your automation skills!
    click element    ${loginOrRegister}
    wait until element is visible       ${newRegistration}
    click element    ${newRegistration}
    ${email}=     generate email
    enter personal details      ${myDict['fnamedata']}   ${mydict['lnamedata']}   ${email}     ${mydict['phone']}     ${mydict['faxNum']}
    enter company info    ${myDict['companyInfo']}    ${myDict['add1']}    ${myDict['add2']}     ${myDict['cityData']}    ${myDict['selectCountry']}   ${myDict['inputState']}    ${myDict['zipCode']}
    enter login details     ${myDict['loginNameData']}     ${myDict['passwordData']}     ${myDict['passwordData']}
    Newsletter And Privacy      ${newsLetterYes}

*** Keywords ***
