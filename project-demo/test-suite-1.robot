*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            http://localhost/web_spk_mohamad_ilman_huda
${Browser}        Chrome
${Username}       admin
${Password}       admin
${InvalidUsername}       invalid_admin
${InvalidPassword}       invalid_password
*** Test Cases ***
Login Failed Test
    [Tags]    login
    Open Browser    ${URL}    ${Browser}
    Input Text      id=username    ${InvalidUsername}
    Input Password  id=password    ${InvalidPassword}
    Click Button    xpath=//button[@type='submit']
    Element Should Be Visible    xpath=//div[contains(@class,'alert-danger')]

Login and Access Alternative Page Test
    [Tags]    login
    Open Browser    ${URL}    ${Browser}
    Input Text      id=username    ${Username}
    Input Password  id=password    ${Password}
    Click Button    xpath=//button[@type='submit']
    Go To           asdasd

Perform Alternative Actions
    [Tags]    alternative
    Click Element    xpath=//a[@data-target='#addModal']
    Wait Until Page Contains Element    xpath=//div[@id='addModal' and contains(@class, 'show')]
    Input Text      xpath=//input[@id='namepost']    Ilman Huda Ganteng
    Click Button    xpath=//button[@type='submit']
    Sleep    5s

Logout Test
    [Tags]    logout
    Click Element    xpath=//a[contains(text(),'Logout')]
    Element Should Be Visible    xpath=//button[@type='submit']
