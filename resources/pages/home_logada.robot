***Settings***
Documentation       Açoes da home logada

***Variables***
${LOGOUT_LINK}      css=a[href$=sign_out]
                            #Cuando usa $= busca en el final / *= que contenga / ^= que comience 

***Keywords***
Logout Link Should Be Visible
    Wait For Elements State     ${LOGOUT_LINK}   visible     10
                                
Do Logout
    Click       ${LOGOUT_LINK}

#Faz click em "Buscar"
Go To Search Page
                
    Click       css=a[href*=search]
    Get Text    css=h2      equal       Buscar