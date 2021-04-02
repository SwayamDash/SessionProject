*** Settings ***
Library     DateTime

*** Test Cases ***
Tc_01_get_current_date
    ${date}=     Get Current Date    
    log to console    ${date}
    ${back_date}=     Subtract Time From Date     ${date}    5 days
    log to console    ${back_date}