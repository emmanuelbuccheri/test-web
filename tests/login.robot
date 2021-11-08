***Settings***
#Aqui coloco a instruçao para que faça a documentqçao. Como argumento recebe o nome que quero dar ao arquivo
Documentation       Testes da página login

Library             Browser

#Chamo os resources que eu fiz    |  com o '..' vou uma pasta atras. Ficaria na pasta "PARODIFY"
Resource            ../resources/base.robot

#Gancho para tirar screenshot apos a exceção de cada teste
Test Teardown       Take Screenshot

***Test Cases***
Login com sucesso
    [tags]      smoke
    Open Login Page
    Login With          papito@parodify.com     pwd123
    Logout Link Should Be Visible

Senha incorreta
    Open Login Page
    Login With          papito@parodify.com     123
    Alert Should Be     Opps! Dados de acesso incorretos!

Email não existe
    Open Login Page
    Login With          404@parodify.com    ${EMPTY}
    Alert Should Be     Opps! Dados de acesso incorretos!

Email não informado
    Open Login Page
    Login With          ${EMPTY}    123
    Alert Should Be     Opps! Dados de acesso incorretos!

Senha não informada
    Open Login Page
    Login With          papito@parodify.com     ${EMPTY}
    Alert Should Be     Opps! Dados de acesso incorretos!