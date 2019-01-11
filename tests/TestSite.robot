*** Settings ***
Resource         ../resource/Resource.robot
#Configuração do projeto
Library          Selenium2Library
Test Setup       Abrir navegador  
#Test Teardown    Fechar navegador

*** Variables ***
#Variaveis globais
${url}      http://automationpractice.com
${browser}  chrome
*** Test Cases ***
Caso de Teste 01: Pesquisar Produtos Existentes
        [setup]
         Acessar pagina home do site      
         Digitar o nome de produto "Blouse" no campo de pesquisa
         Clicar no botao de pesquisa
         Conferir se o produto "Blouse" foi listado no site
        [Teardown]

Caso de Teste 02: Pesquisar Produtos não Existentes
         Acessar página home do site   
         Conferir se a página home foi exibida   
         Digitar o nome de produto "produtoNãoExistente" no campo de pesquisa
         Clicar no botão de pesquisa
         Conferir mensagem de erro "No results were foundfor your search "produtoNãoExistente""
*** Keywords ***