*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${HOME_URL}                     http://comercial-uat.riachuelo.net/portal/#/login    
${HOME_TITLE_TEXT}              Portal Login Unificado
${LOGIN_FIELD_USUARIO}          xpath=//*[@name="user"]
${LOGIN_FIELD_SENHA}            xpath=//*[@name="pass"]
${LOGIN_BUTTON_ENTRAR}          xpath=//*[@type="submit"]
${Sign-IN_ALERTA_SUCESSO}       xpath=//html/body/app-root/app-main/div/div/app-topbar/div/div/span/u
${Botao_gestaocomercial}        xpath=//*[contains(text(), "GestaoComercial")]
${Botao_etiquetas}              xpath=//*[contains(text(), "Etiquetas")]
${Cabecalho_etiquetas}          xpath=//*[@class="title"]

*** Keywords ***

Dado que estou na pagina de Login
    Go to              ${HOME_URL}
    SET SELENIUM IMPLICIT WAIT   1
    Title Should Be    ${HOME_TITLE_TEXT}


Quando preencho os campos usuario e senha
    Input Text       ${LOGIN_FIELD_USUARIO}         4021691
    Input password   ${LOGIN_FIELD_SENHA}           Riachu@21         
    Click Element    ${LOGIN_BUTTON_ENTRAR}
 


Então é exibido o nome do usuário no cabeçalho "${nomeCabecalho}"
    Wait Until Element Is Visible        ${Sign-IN_ALERTA_SUCESSO}      15
    Element Text Should Be               ${Sign-IN_ALERTA_SUCESSO}      ${nomeCabecalho}
    

Quando clico em gestão comercial
    Click Element       ${Botao_gestaocomercial}

 
E clico em etiquetas
    Click Element       ${Botao_etiquetas} 


Então é apresentado a tela de pedidos
    Wait Until Element Is Visible        ${Cabecalho_etiquetas}      5
    Element Text Should Be               ${Cabecalho_etiquetas}      