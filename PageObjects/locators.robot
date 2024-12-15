*** Variables ***
# HomePage
${loginOrRegister}          //*[@id="customer_menu_top"]/li/a
${cart}                     //*[@id="main_menu_top"]/li[3]


# Product 1
${product1}                 //a[@data-id="66"]
${price1}                   //*[@id="block_frame_latest_1770"]//div[3]/div[2]/div[3]/div/div
${country}                  id:estimate_country
${state}                    id:estimate_country_zones
${cartPostalCode}           id:estimate_postcode

# Cart
${productPrice}               //*[@id="cart"]//div//tbody//td[6]
${shipmentPrice}              //*[@id="totals_table"]//tr[2]//td[2]/span
${totalPrice}                 //*[@id="totals_table"]//tr[3]/td[2]/span
${cartCheckout2}              id:cart_checkout2

# Login Or Registration
${newRegistration}         //*[@id="accountFrm"]/fieldset/button


# Registration Form
${firstName}            id:AccountFrm_firstname
${lastName}             id:AccountFrm_lastname
${email}                id:AccountFrm_email
${telephone}            id:AccountFrm_telephone
${fax}                  id:AccountFrm_fax
${company}              id:AccountFrm_company
${addressline1}         id:AccountFrm_address_1
${addressline2}         id:AccountFrm_address_2
${city}                 id:AccountFrm_city
${regState}                id:AccountFrm_zone_id
${postalCode}           id:AccountFrm_postcode
${regCountry}              id:AccountFrm_country_id
${loginName}            id:AccountFrm_loginname
${loginPassword}        id:AccountFrm_password
${loginPasswordConfirm}    id:AccountFrm_confirm
${newsLetterYes}        id:AccountFrm_newsletter1
${confirmPrivacy}       id:AccountFrm_agree
${continueRegistration}   xpath://button[@title='Continue']
