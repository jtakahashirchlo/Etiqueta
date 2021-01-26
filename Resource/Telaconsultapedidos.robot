*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Botao_gestaocomercial}        xpath=//*[contains(text(), "GestaoComercial")]
${Botao_etiquetas}              xpath=//*[contains(text(), "Etiquetas")]
${Cabecalho_etiquetas}          xpath=//*[@class="title"]

*** Keywords ***

Quando clico em gestão comercial
    Click Element       ${Botao_gestaocomercial}

 
E clico em etiquetas
    Click Element       ${Botao_etiquetas} 


Então é apresentado a tela de pedidos
    Wait Until Element Is Visible        ${Cabecalho_etiquetas}      5
    Element Text Should Be               ${Cabecalho_etiquetas}      