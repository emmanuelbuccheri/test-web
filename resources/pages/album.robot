***Settings***
Documentation       Açoes da pagina de album

***Keywords***
#Faz clik no botom "Play" da musica "Bug de Manha"
Play Song
    [Arguments]     ${song_name}

    Click       xpath=//h2[contains(text(), "${song_name}")]/../..//div[contains(@class, "play")]//a

#Valida se esta reproducendo
Song Should Be Playing
    [Arguments]     ${song_name}

        Get Style   xpath=//h2[contains(text(), "${song_name}")]/../../..        color       equal       rgb(225, 0, 180)