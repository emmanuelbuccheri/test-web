***Settings***
Documentation   Açoes de navegaçao no parodify

***Keywords***
#Faz click em "Buscar"
Go To Search Page
                
    Click       css=a[href*=search]
    Get Text    css=h2      equal       Buscar

#Faz click no artista do argumento
Open Album From
    [Arguments]     ${artist_name}

    Click       xpath=//p[contains(text(), "${artist_name}")]/..
    Get Text    css=h2      equal       Músicas

#Faz Click na categoria "Sertanejo"
Go To Sertanejo Category
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Get Text    css=h2      equal       Sertanejo