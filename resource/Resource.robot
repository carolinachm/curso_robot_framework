*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      firefox
${URL}          http://automationpractice.com

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser     ${browser} 

Fechar navegador
    Close Browser

#### Ações
Acessar a página home do site
    Go To               http://automationpractice.com
    Title Should Be     My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text         id=search_query_top    ${PRODUTO}

Clicar no botão pesquisar
    Click Element       name=submit_search

Conferir se o produto ${PRODUTO} foi listado no site
    wait unit Element is visible    xpath = //*[@id="layered_block_left"]/p
    Title Should Be                 xpath = //*[@id="center_column"]/h1/span[1]
    Page Should Contain             xpath = //*[@id="center_column"]//*[@src="http://automationpractice.com/img/p/8/8-home_default.jpg"]
    Page Should Contain Link        xpath = //*[@id="center_column"]/ul/li/div/div[2]/h5/a
    Page Should Contain             xpath = //*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]/span
    Page Should Contain             xpath = //*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[2]/span