*** Settings ***
Library    SeleniumLibrary
Resource   ../PageObjects/locators.robot
Resource   ../PageObjects/urls.robot


*** Variables ***

*** Keywords ***

Enter User Details
      [Documentation]       Enter User details for creating account
      [Arguments]    ${userIdData}       ${password}
       input text    ${userId}       ${userIdData}
       input text    ${regPassword}   ${password}
       input text    ${loginPasswordConfirm}      ${password}

Enter Account Info
      [Documentation]       Enter company details for creating account
      [Arguments]    ${fnameData}     ${lNameData}     ${emailData}     ${phoneData}    ${add1Data}    ${add2Data}    ${cityData}    ${stateData}      ${zipData}    ${countryData}
       input text    ${firstName}       ${fnameData}
       input text    ${lastName}        ${lNameData}
       input text    ${email}           ${emailData}
       input text    ${telephone}       ${phoneData}
       input text    ${addressline1}          ${add1Data}
       input text    ${addressline2}          ${add2Data}
       input text    ${city}            ${cityData}
       input text    ${regState}        ${stateData}
       input text    ${postalCode}      ${zipData}
       input text    ${regCountry}      ${countryData}


Enter Login Details
      [Documentation]       Enter login details for creating account
      [Arguments]    ${loginNameData}    ${passwordData}    ${confirmPassData}
       input text    ${loginName}        ${loginNameData}
       input text    ${loginPassword}    ${passwordData}
       input text    ${loginPasswordConfirm}    ${confirmPassData}

Select Profile Details
      [Documentation]       Select Profile options
      [Arguments]          ${langData}      ${categoryData}
       select from list by value    ${language}         ${langData}
       select from list by value    ${productCategory}  ${categoryData}
       select checkbox    ${enableMyList}
       select checkbox    ${enableMyBanner}
