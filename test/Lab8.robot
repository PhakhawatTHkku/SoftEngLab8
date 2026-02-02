*** Settings ***
Library    SeleniumLibrary

Suite Setup    Open Browser To Website
Suite Teardown    Close Browser

*** Variables ***
${URL}    https://computing.kku.ac.th
${BROWSER}    Chrome

*** Test Cases ***
Open Website Successfully
    Title Should Contain    KKU

*** Keywords ***
Open Browser To Website
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    ${URL}    ${BROWSER}    options=${options}
    Maximize Browser Window
