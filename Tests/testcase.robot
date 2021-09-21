*** Settings ***
Library    SeleniumLibrary
# Library Selenium2Library

*** Test Case ***
Observe user is able to test sanity flow
    # [Tags] sanity 
    Open moolya career page
    Click on Enter a Todo and add to the list
    Delete milk from todo list
    Search todo list with buy 
    
*** Keywords ***
Open moolya career page
    Open Browser    ${url}   gc
    Maximize Browser window

Click on Enter a Todo and add to the list
    Input Text   ${todo1}    buy eggs
    click Element    ${add_item}
    sleep  3s
    Input Text   ${todo1}    buy milk
    click Element    ${add_item}
    sleep  3s

Delete milk from todo list
    Click Element   ${Delete}
    Log to Console  milk deleted
    
Search todo list with buy 
    Input Text    ${search}    buy
    sleep  5s
    Verify WebPage title    ${expected_todo_name}

Verify WebPage title
    [Arguments]  ${title_n}
    Wait Until Page Contains  ${title_n} 
    sleep  5s
    Close Browser
<<<<<<< HEAD
    Log to Console  Final step passed Realme is added to cart, Browser closed
    
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
=======
    Log to Console  Final step passed milk is added


*** Variables ***
${url}=  https://todo-webapp-1.herokuapp.com/
${enter_todo}=  xpath= /html/body/div/form[2]/div[2]/input
${todo1}=  xpath= /html/body/div/form[2]/div[2]/input
${add_item}=  xpath= /html/body/div/form[2]/div[3]/button
${search}=  xpath= /html/body/div/form[1]/div/input
${Delete}=  xpath= /html/body/div/ul/li[4]/img
${expected_todo_name}=  eggs
>>>>>>> ee05940cf31a431c77eb6ee3979a9208ab877a77
