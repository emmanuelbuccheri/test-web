***Settings***
Documentation       Arquivo base para o projeto de automaçao

#Chamo a Library "Browser"
Library     Browser

#Chamo os resource que eu fiz

# Page Object
#Resource    pages/album.robot
#Resource    pages/categories.robot
#Resource    pages/login.robot
#Resource    pages/home_logada.robot
#Resource    pages/search.robot

# App Actions
Resource    actions/auth.robot
Resource    actions/nav.robot
Resource    actions/song.robot