*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Tc_03_get_api
    create session    Put_api_Request    ${base_url}
    
    ${body}=    create dictionary    title=updated_title
    #${header}=    create dictionary    Content-Type=application/json    
      
    ${resp}=    Put on Session    Put_api_Request    todos/1    data=${body}    #header=${header}
    
    status should be     200    ${resp}   
    log to console    ${resp.content}