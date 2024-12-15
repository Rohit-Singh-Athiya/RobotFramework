*** Settings ***
Library    SeleniumLibrary
Resource   ../PageObjects/locators.robot
Resource   ../PageObjects/urls.robot


*** Variables ***

*** Keywords ***

Enter Personal Details
      [Documentation]       Enter personal details for creating account
      [Arguments]    ${fnamedata}    ${lnamedata}    ${emailData}    ${phone}    ${faxNum}
       input text    ${firstName}    ${fnamedata}
       input text    ${lastname}     ${lnamedata}
       input text    ${email}        ${emailData}
       input text    ${telephone}    ${phone}
       input text    ${fax}          ${faxNum}

Enter Company Info
      [Documentation]       Enter company details for creating account
      [Arguments]     ${companyInfo}     ${add1}     ${add2}     ${cityData}    ${selectCountry}    ${inputState}    ${zipCode}
       input text    ${company}      ${companyInfo}
       input text    ${addressline1}        ${add1}
       input text    ${addressline2}        ${add2}
       input text    ${city}          ${cityData}
       set selenium implicit wait    1s
       select from list by label    ${regCountry}     ${selectCountry}
       click element    ${regState}
       select from list by label    ${regState}      ${inputState}
       input text    ${postalCode}   ${zipCode}


Enter Login Details
      [Documentation]       Enter login details for creating account
      [Arguments]    ${loginNameData}    ${passwordData}    ${confirmPassData}
       input text    ${loginName}        ${loginNameData}
       input text    ${loginPassword}    ${passwordData}
       input text    ${loginPasswordConfirm}    ${confirmPassData}

Newsletter And Privacy
      [Documentation]       Opt Newletter details for creating account
      [Arguments]           ${newsSubs}
       click element     ${newsSubs}
       element should be visible    ${confirmPrivacy}
       select checkbox    ${confirmPrivacy}
