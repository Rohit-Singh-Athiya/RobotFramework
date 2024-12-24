*** Settings ***
Library    Collections
Resource   ../PageObjects/urls.robot
Resource   ../Resources/generalKeywords.robot
Resource    ../Resources/registrationKeywords.robot
Library    ../helperMethods/emailGeneration.py
Resource    ../PageObjects/locators.robot
Resource    ../Resources/createPaymentKeywords.robot

*** Variables ***


*** Test Cases ***
End To End Flow For Buying
    [Tags]    P1        Regression
    ${myDict}=     create dictionary    fnamedata=Rohit    lnamedata=Singh    emailData=testEmail    phone=9998887772    faxNum=123456    companyInfo=Test Company     add1=address1     add2=address2     cityData=Ujjain    inputState=Bihar    zipCode=456001   selectCountry=India    loginNameData=Rohit    passwordData=Rohit@123
    launch browser and open url    ${petStore}  Chrome     JPetStore Demo
    click element       ${signIn}
    page should contain     Please enter your username and password.
    login       Rohit123        Rohit123
    select menu and type    ${dogsMenu}     ${goldenRetriever}
    page should contain      Golden Retriever
    click element    ${addToCart}
    update shopping cart    5       Madhya Pradesh     456001
    enter payment details    MasterCard     123 3333 4444 6666      12/34
    enter billing details        ${myDict['fnamedata']}     ${myDict['lnamedata']}     ${myDict['add1']}    ${myDict['add2']}    ${myDict['cityData']}   ${myDict['inputState']}     ${myDict['zipCode']}     ${myDict['selectCountry']}
    submit and verify order status







*** Keywords ***
