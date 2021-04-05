
*** Settings ***
Library     RequestsLibrary
Resource    Keywords.robot

*** Variables ***
${base_url}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Tc_05_use_keyword_1
    TC_05    userId    10
Tc_05_use_keyword_2
    TC_05    id    20
Tc_05_use_keyword_3
    TC_05    title    updated_title
Tc_05_use_keyword_4
    TC_05    completed    True
