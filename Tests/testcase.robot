*** Settings ***
Library    SeleniumLibrary
# Library Selenium2Library

*** Test Case ***
Observe user is able to test sanity flow
    # [Tags] sanity 
    Given User Launch browser for flipkart
    When User enters Mobile number 
    And User enters Password
    And User clicks on Login
    And User clicks on search box and search for Mobiles
    And User selects the product and add to cart
    And User goes to cart and veryfy if product is added
    # And User Verify WebPage title

*** Keywords ***
User Launch browser for flipkart
    Open Browser    https://www.flipkart.com/   gc
    Maximize Browser window

User enters Mobile number 
    input Text  ${id}  8050755929

User enters Password
    input Text  ${Pa}  1234567890
    capture page screenshot

User clicks on Login
    Click Element  ${login}
    sleep  3s
    capture page screenshot

User clicks on search box and search for Mobiles
    Click Element    ${Search-box}  
    Input Text    ${Search_mobile}    Mobiles
    Click Element    class:L0Z3Pu
    sleep  2s
    capture page screenshot

User selects the product and add to cart
    Click Element    ${select_mobile}
    sleep  3s
    Switch window   ${handle}
    Click Button     ${add_btn}
    sleep  5s

User goes to cart and veryfy if product is added
    Click Element  ${Home_page}
    sleep  2s
    Click Element  ${Cart}
    sleep  5s
    capture page screenshot
    Verify WebPage title  ${Expected_product_name1} 

Verify WebPage title
    [Arguments]  ${title_n}
    Wait Until Page Contains  ${title_n} 
    Log to Console  Final step passed Realme is added to cart

*** Variables ***
${id}=  xpath= /html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
${pa}=  xpath= /html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input
${login}=  xpath= /html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
${Search-box}=  xpath= //*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input
${Search_mobile}=    xpath= //*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input
${select_mobile}=    xpath= //*[@id="container"]/div/div[3]/div[1]/div[2]/div[3]/div/div/div/a/div[2]/div[1]/div[1]
${add_btn}=    xpath= //*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
${handle}  NEW
${Home_page}=    xpath= //*[@id="container"]/div/div[1]/div[1]/div[2]/div[1]/div/a[1]/img
${Cart}=    xpath= //*[@id="container"]/div/div[1]/div[1]/div[2]/div[5]/div/div/a
${Expected_product_name1}=  realme
