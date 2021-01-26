*** Settings ***
Library     SeleniumLibrary
Resource    ../resource/resource.robot
Resource    ../resource/loginetiqueta.robot    



Suite Setup           Abrir navegador
Suite Teardown       Fechar navegador



*** Test Case ***
Cenário 1 - Login unificado nova ferramenta de etiqueta
    Dado que estou na pagina de Login
    Quando preencho os campos usuario e senha
    Então é exibido o nome do usuário no cabeçalho "JULLI CAROLINE EMY TAKAHASHI"



