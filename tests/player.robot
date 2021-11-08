***Settings***
Documentation   Testando o player de paródias

#Chamo os resources que eu fiz    |  com o '..' vou uma pasta atras. Ficaria na pasta "PARODIFY"
Resource            ../resources/base.robot

#Gancho para tirar screenshot apos a exceção de cada teste
Test Teardown       Take Screenshot

***Test Cases***
Reproduzir paródias Bug de Manha
    #Faz Log in
    Open Login Page
    Login With  papito@parodify.com  pwd123
    Logout Link Should Be Visible
    
    Go To Search Page
    Go To Sertanejo Category
    Open Album From             Marcus e Debug
    Play Song                   Bug de Manh 
    Song Should Be Playing      Bug de Manh