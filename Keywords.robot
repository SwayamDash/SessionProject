*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}    https://jsonplaceholder.typicode.com

*** Keywords ***
TC_05
    [Arguments]    ${key}    ${value}    
    create session    Put_api_Request    ${base_url}
    
    ${body}=    create dictionary    id=1    ${key}=${value}    
    #${header}=    create dictionary    Content-Type=application/json    
      
    ${resp}=    Put on Session    Put_api_Request    todos/1    data=${body}    #header
    
    status should be     200    ${resp} 
    log to console    ${resp.content}

