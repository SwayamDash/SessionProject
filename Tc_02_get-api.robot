*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Tc_02_get_api
    create session    Get_Request    ${base_url}    
    ${resp}=    Get on Session    Get_Request    todos/1
    ${status}=  status should be    200    ${resp}  
       
    log to console    ${resp.status_code}