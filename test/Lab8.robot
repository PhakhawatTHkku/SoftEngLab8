*** Settings ***
Library    SeleniumLibrary

Suite Setup    Open Browser To Website
Suite Teardown    Close Browser

*** Variables ***
${URL}        https://computing.kku.ac.th
${BROWSER}    chrome

*** Keywords ***
Open Browser To Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

*** Test Cases ***
Open Website Successfully
    Title Should Contain    KKU
