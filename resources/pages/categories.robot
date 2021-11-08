***Settings***
Documentation       Açoes da pagina de categoria

***Keywords***
#Faz click no artista do argumento
Open Album From
    [Arguments]     ${artist_name}

    Click       xpath=//p[contains(text(), "${artist_name}")]/..
    Get Text    css=h2      equal       Músicas