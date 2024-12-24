*** Settings ***
Library    Collections
Resource   ../PageObjects/urls.robot
Resource   ../Resources/generalKeywords.robot
Resource    ../Resources/registrationKeywords.robot
Library    ../helperMethods/emailGeneration.py
Resource    ../PageObjects/locators.robot

*** Variables ***


*** Test Cases ***
User Registration
    [Tags]      P1      UserCreation    Regression
    ${myDict}=     create dictionary    fnamedata=Rohit    lnamedata=Singh    emailData=testEmail    phone=9998887772    faxNum=123456    companyInfo=Test Company     add1=address1     add2=address2     cityData=Ujjain    inputState=Bihar    zipCode=456001   selectCountry=India    loginNameData=Rohit    passwordData=Rohit@123
    launch browser and open url   ${petStore}      Chrome     JPetStore Demo
    click element    ${signIn}
    wait until element is visible       ${login}
    click element    ${register}
    ${email}=     generate email
    enter user details   ${email}      Test1234!
    enter account info   ${myDict['fnamedata']}     ${myDict['lnamedata']}      ${email}     ${myDict['phone']}      ${myDict['add1']}       ${myDict['add2']}    ${myDict['cityData']}   ${myDict['inputState']}     ${myDict['zipCode']}     ${myDict['selectCountry']}
    select profile details    english   REPTILES
    click element    ${submitNewAccount}


*** Keywords ***
