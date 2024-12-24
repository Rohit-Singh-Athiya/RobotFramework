*** Variables ***
# HomePage
${signIn}                   //div[@id="MenuContent"]//a[2]
${fishMenu}                 //*[@id="SidebarContent"]/a[1]
${dogsMenu}                 //*[@id="SidebarContent"]/a[2]
${catsMenu}                 //*[@id="SidebarContent"]/a[3]
${reptilesMenu}             //*[@id="SidebarContent"]/a[4]
${birdsMenu}                //*[@id="SidebarContent"]/a[5]

# Type
${goldenRetriever}          //*[@id="Catalog"]/table/tbody/tr[5]/td[1]/a

#Checkout
${addToCart}                //*[@id="Catalog"]/table/tbody/tr[2]/td[5]/a
${quantity}                 name:EST-28
${updateCart}               name:updateCartQuantities
${proceedToCheckout}        //*[@id="Cart"]/a

# Sign In Page
${register}                 //*[@id="Catalog"]/a
${login}                    name:signon

# Login Page
${loginUserName}        name:username
${loginPassword}        name:password
${loginSubmit}          name:signon

# Registration Page
${userId}               name:username
${firstName}            name:account.firstName
${lastName}             name:account.lastName
${email}                name:account.email
${telephone}            name:account.phone
${addressline1}         name:account.address1
${addressline2}         name:account.address2
${city}                 name:account.city
${regState}             name:account.state
${postalCode}           name:account.zip
${regCountry}           name:account.country
${regPassword}        name:password
${loginPasswordConfirm}    name:repeatedPassword
${submitNewAccount}     name:newAccount

# Profile Info
${language}             name:account.languagePreference
${productCategory}      name:account.favouriteCategoryId
${enableMyList}         name:account.listOption
${enableMyBanner}       name:account.bannerOption

# Payment Details
${cardType}             name:order.cardType
${cardNumber}           name:order.creditCard
${expiryDate}           name:order.expiryDate

# Billing Details
${orderFirstName}       name:order.billToFirstName
${orderLastName}        name:order.billToLastName
${orderAdd1}            name:order.billAddress1
${orderAdd2}            name:order.billAddress2
${orderCity}            name:order.billCity
${orderState}           name:order.billState
${orderZip}             name:order.billZip
${orderCountry}         name:order.billCountry
${submitOrder}          name:newOrder
${orderConfirm}         //*[@id="Catalog"]/a
