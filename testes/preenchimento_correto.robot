*** Settings ***
Resource          ../resources/main.robot
Test Setup        Dado que eu acesse o Organo
Test Teardown     Fechar o navegador

*** Test Cases ***
Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo card é criado no time escolhido  
     Dado que eu preencha os campos do formulário
     E clique no botão "Criar Card"
     Então identificar o card no time esperado

Verificar se é possivel criar mais de um card se preenchermos os campos corretamente
    Dado que eu preencha os campos do formulário
    E clique no botão "Criar Card"
    Então identificar 3 cards no time esperado