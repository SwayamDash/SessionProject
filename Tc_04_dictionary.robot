*** Settings ***
Library     RequestsLibrary
LIbrary    Collections
*** Variables ***
${base_url}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Tc_04_dict
    #create session    api_Request    ${base_url}
    
    ${dict}=    create dictionary    Id=1    FirstName=Raju    LastName=sharma    Marks=60    Dept=CSE        
    
    ${list}=  Get Dictionary Values    ${dict}
    
    FOR    ${i}  IN    @{list}
        log to console    ${i}
    END
    
    
    ###
    #${key_list}=     Get Dictionary Keys   ${dict}
    
    #FOR    ${i}  IN    @{key_list}
    #    If    ${i}=="Id"
    #        ${Id}=    Evaluate    2
    #END