*** Settings ***
Library           SeleniumLibrary

*** variables ***


*** Test Cases ***

testcase-login-1
    Open Browser    http://localhost/spkwp/    chrome
    Page Should Contain Element   xpath://input[@name='username']
    input text        name:username       admin
    Input Text    name:password    admin
    Click Element     xpath://button[@type='submit']
    Page Should Contain Element    xpath://a[@href='profil.php']
    Close Browser


