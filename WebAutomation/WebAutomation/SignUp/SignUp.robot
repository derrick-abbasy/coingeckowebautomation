*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SignUpButton}    //button[@type='button' and @class='tw-bg-primary-500 dark:tw-bg-primary-400 tw-shadow-primaryShadow !tw-mb-1 hover:tw-bg-primary-600 dark:hover:tw-bg-primary-300 hover:tw-shadow-primaryHover active:!tw-shadow-primaryActive tw-transition-all tw-duration-150 active:tw-translate-y-2 tw-items-center tw-justify-center tw-font-semibold tw-text-inline tw-rounded-lg tw-select-none focus:tw-outline-none tw-px-2.5 tw-py-1.5 tw-inline-flex']
${PopUpBoxHomepAge}    //*[@id="auth-modal"]
${EmailFieldBox}    //*[@id="user_email" and @name="user[email]" and @autocomplete="email"]
${PasswordFieldBox}    //*[@id="user_password" and @name="user[password]" and @autocomplete="new-password"]
${recaptcha}        //*[@id="checkbox"]
${recpatchasuccess}    //*[@id="anchor-state"]/div[3]
${iframecaptcha}    //*[@id="sign-up-captcha"]/iframe
${ContinueWithGoogle}    //*[@id="new_user"]/div[1]/a[1]/button
${SignInGoogleFieldBox}    //*[@id="identifierId"]
${SignInGoogleNext}    "//*[@id="identifierNext"]/div/button/div[1]"
${PasswordSection}    //*[@id="initialView"]/div[2]/div/div[1]/div
${PasswordInputBox}    //*[@id="password"]/div[1]/div/div[1]/input
${Continue}    //button[contains(@class, 'VfPpkd-LgbsSe') and contains(@jscontroller, 'soHxf') and contains(@jsname, 'LgbsSe') and contains(@data-idom-class, 'Rj2Mlf OLiIxf PDpWxe P62QJc LQeN7 xYnMae TrZEUc lw1w4b')]
${VerfiyPhoneNumber}    //div[@class='lCoei YZVTmd SmR8' and @role='link' and @jsname='EBHGs' and @data-challengeid='8' and @data-action='selectchallenge' and @data-accountrecovery='false' and @data-challengetype='13']



*** Keywords ***


*** Test Cases ***
Open & Verify CoinGecko
    Open Browser    https://www.coingecko.com    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //div[contains(@class, 'tw-flex-1')]//h1[contains(@class, 'tw-text-gray-900') and normalize-space(text())='Cryptocurrency Prices by Market Cap']    20
    
Click Sign Up Button    
    Click Element    ${SignUpButton}
    Sleep    2s 
    Wait Until Page Contains Element    ${PopUpBoxHomepAge}    50

Click Continue With Google 
    Wait Until Page Contains Element    //*[@id="new_user"]/div[1]/a[1]/button    20
    Click Element    xpath= //*[@id="new_user"]/div[1]/a[1]/button

Input Sign In Field
    Wait Until Element Is Visible    ${SignInGoogleFieldBox}    10
    Click Element    ${SignInGoogleFieldBox}
    Clear Element Text    ${SignInGoogleFieldBox}
    Input Text    ${SignInGoogleFieldBox}    derricktester12@gmail.com
    Click Element   xpath= //button[contains(@class, 'VfPpkd-LgbsSe') and span[text()='Next']]
    Wait Until Page Contains Element    ${PasswordSection}    70
    Page Should Contain Element    ${PasswordSection}
    

Input Password Field
    Wait Until Element Is Visible    ${PasswordInputBox}    10
    Click Element    ${PasswordInputBox}
    Clear Element Text    ${PasswordInputBox}
    Input Text    ${PasswordInputBox}    Password@123
    Click Element   //button[contains(@class, 'VfPpkd-LgbsSe') and span[text()='Next']]
    Wait Until Element Contains    xpath= //button[contains(@class, 'tw-shadow-secondaryClicked') and contains(@class, 'dark:!tw-shadow-secondaryClickedDark') and contains(@class, '!tw-bg-slate-100') and contains(@class, 'dark:!tw-bg-moon-700')]    10
    Close Browser

# Click Continue
#     Click Element    ${Continue}
#     Sleep    2s

# 
    # Wait Until Page Contains Element     xpath= //div[@class='lCoei YZVTmd SmR8' and @role='link' and @jsname='EBHGs' and @data-challengeid='8' and @data-action='selectchallenge' and @data-accountrecovery='false' and @data-challengetype='13']
    # Click Element    ${VerfiyPhoneNumber}
    # Wait Until Page Contains Element    text
    # Sleep    3s
    # Page should co





#Via Sign In Sign Up Form  
# Click Email Field Box
#     Click Element    ${EmailFieldBox}
#     Input Text    ${EmailFieldBox}    derricktester12@gmail.com
#     Sleep    2s

# Click Password Field Box
#     Click Element    ${PasswordFieldBox}
#     Input Password    ${PasswordFieldBox}    Password@123
#     Sleep    2s  
    

# Click recaptcha
#     Select Frame    xpath= //*[@id="sign-up-captcha"]/iframe 
#     Wait Until Element Is Visible    xpath=//*[@id="label"]   timeout=20s
#     Click Element    xpath= //*[@id="label"]
#     sleep    2s
#     Wait Until Page Contains Element    xpath=//*[@id="anchor-state"]/div[3]    20s
#     Sleep    20s


