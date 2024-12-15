*** Settings ***
Library    Collections
Resource   ../PageObjects/urls.robot
Resource   ../Resources/generalKeywords.robot
Resource    ../Resources/registrationKeywords.robot
Library    ../helperMethods/emailGeneration.py
Library    ../PageObjects/locators.robot
Resource    ../Resources/createPaymentKeywords.robot

*** Variables ***


*** Test Cases ***
End To End Flow For Buying A Product
    [Tags]    P1        Regression
    ${myDict}=     create dictionary    fnamedata=Rohit    lnamedata=Singh    emailData=testEmail    phone=9998887772    faxNum=123456    companyInfo=Test Company     add1=address1     add2=address2     cityData=Ujjain    inputState=Bihar    zipCode=456001   selectCountry=India    loginNameData=Rohit    passwordData=Rohit@123
    launch browser and open url    ${AutomationTestStore}    Chrome     A place to practice your automation skills!
    select product and price    ${product1}      ${price1}      $38.00
    wait until element is visible       ${cart}
    click element     ${cart}
    complete country details        India       Bihar     456001
    check product amount        $38.00
    check shipping amount      $2.00
    check total amount    $40.00




*** Keywords ***
