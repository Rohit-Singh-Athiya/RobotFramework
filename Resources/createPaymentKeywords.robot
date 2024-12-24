*** Settings ***
Library    SeleniumLibrary
Resource   ../PageObjects/locators.robot


*** Variables ***

*** Keywords ***

Select Menu and Type
    [Arguments]     ${Menu}       ${breed}
    click element   ${Menu}
    click element   ${breed}

Update Shopping Cart
    [Arguments]    ${cartQty}   ${cartState}    ${cartZipCode}
    clear element text    ${quantity}
    input text    ${quantity}       ${cartQty}
    click element   ${updateCart}
    reload page
    click element    ${proceedToCheckout}

Enter Payment Details
    [Arguments]    ${cardTypeValue}     ${cardNumberData}       ${expiryDateData}
    select from list by value    ${cardType}    ${cardTypeValue}
    input text    ${cardNumber}     ${cardNumberData}
    input text    ${expiryDate}     ${expiryDateData}

Enter Billing Details
    [Arguments]    ${fNameData}     ${lNameData}       ${add1Data}      ${add2Data}     ${cityData}     ${stateData}    ${zipData}   ${countryData}
    input text      ${orderFirstName}        ${fNameData}
    input text      ${orderLastName}        ${lNameData}
    input text      ${orderAdd1}        ${add1Data}
    input text      ${orderAdd2}        ${add2Data}
    input text      ${orderCity}        ${cityData}
    input text      ${orderState}        ${stateData}
    input text      ${orderZip}        ${zipData}
    input text      ${orderCountry}        ${countryData}

Submit and verify order status
    click element   ${submitOrder}
    click element   ${orderConfirm}
    page should contain      Thank you, your order has been submitted.
