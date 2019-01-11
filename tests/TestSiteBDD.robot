*** Settings ***
#Configuração do projeto
Library         Selenium
*** Variables ***
#Variaveis globais
${url}      http://automationpractice.com
${browser}  chrome
*** Test Cases ***
Caso de Teste 01: Pesquisar Produtos Existentes
        Dado que estou na página home do site
        Quando eu pesquisar pelo produto "Blouse"
        Então o produto "Blouse" deve ser listado na página de resultado da busca

Caso de Teste 02: Pesquisar Produtos não Existentes
         Dado que estou na página home do site
         Quando eu pesquisar pelo produto "produtoNãoExistente"
         Então a página deve exibir a mensagem "No results were found for your search "produtoNãoExistente""
*** Keywords ***