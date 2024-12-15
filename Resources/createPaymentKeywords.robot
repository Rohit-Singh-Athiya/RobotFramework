*** Settings ***
Library    SeleniumLibrary
Resource   ../PageObjects/locators.robot


*** Variables ***

*** Keywords ***

Select Product and Price
    [Arguments]     ${productLocator}       ${priceLocator}         ${price}
    click element   ${productLocator}
    ${pricefromUI}=    get text    ${priceLocator}
    should be equal as strings     ${pricefromUI}     ${price}

Complete Country Details
    [Arguments]    ${cartCountry}   ${cartState}    ${cartZipCode}
    select from list by label     ${country}    ${cartCountry}
    click element   ${state}
    sleep    1s
    select from list by label     ${state}      ${cartState}
    input text      ${cartPostalCode}         ${cartZipCode}

Check Product Amount
    [Arguments]    ${proAmt}
    ${fetchProductAmt}=    get text    ${productPrice}
    should be equal as strings    ${fetchProductAmt}    ${proAmt}

Check Shipping Amount
    [Arguments]    ${shippingAmt}
    wait until element is visible        ${shipmentPrice}
    ${ship}=    get text    ${shipmentPrice}
    should be equal as strings    ${ship}    ${shippingAmt}

Check Total Amount
    [Arguments]    ${totalAmt}
    wait until element is visible        ${totalPrice}
    ${total}=    get text    ${totalPrice}
    should be equal as strings   ${total}         ${totalAmt}

