***Settings***
Documentation       Açoes da funcionalidade de autorizaçao/auntenticaçao

***Variables***
${LOGOUT_LINK}      css=a[href$=sign_out]
                            #Cuando usa $= busca en el final / *= que contenga / ^= que comience 

***Keywords***
#Entra no site de log in da "Parodify"
Open Login Page                 #mostrar a janela do browser (no headless)
    New Browser     chromium    true
    #New Browser     ${browser}  ${headless}
    New Page        https://parodify.herokuapp.com/users/sign_in

#Recebe email e password como argumento para fazer o login e faz click no botom "Log in"
Login With
    [Arguments]     ${email_arg}    ${password_arg}

    Fill Text       css=input[name*=email]      ${email_arg}
    Fill Text       css=#user_password          ${password_arg}

    Click           css=input[value="Log in"]

#Comprueba se o alert message emitido é igual ao argumento recebedo
Alert Should Be
    [Arguments]     ${expect_arg}

    Get Text        css=.is-danger .message-body    ==      ${expect_arg}

Logout Link Should Be Visible
    Wait For Elements State     ${LOGOUT_LINK}   visible     10
                                
Do Logout
    Click       ${LOGOUT_LINK}