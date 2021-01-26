*** Settings ***
Library     SeleniumLibrary
Resource    ../resource/resource.robot
Resource    ../resource/loginetiqueta.robot    



Suite Setup           Abrir navegador
suite Teardown       Fechar navegador



*** Test Case ***
Cenário 1 - Consulta para a tela de pedidos
    Dado que estou na pagina de Login
    Quando clico em gestão comercial 
    E clico em etiquetas
    Então é apresentado a tela de pedidos
