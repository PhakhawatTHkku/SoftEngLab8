*** Settings ***
Library    SeleniumLibrary

Suite Setup    Open Browser To Website
Suite Teardown    Close Browser

*** Keywords ***
Open Browser To Login Page
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --headless

    Create Webdriver    Chrome    options=${chrome_options}
    Go To    https://computing.kku.ac.th/

*** Test Cases ***
Open Website Successfully
    [Documentation]    ทดสอบการเปิดหน้าเว็บคณะฯ
    Open Browser To Login Page
    [Teardown]    Close Browser
