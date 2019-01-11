*** Settings ***
Library         Selenium2Library

*** Variables ***
${BROWSER}          chrome
${URL}              http://automationpractice.com
${tituloHome}       My Store
${campoPesquisa}    id=search_query_top
${botaoPesquisar}   name=submit_search
*** Keywords ***
#### Setup e Teardown

### Passo a Passo 
Acessar pagina home do site   
        Open Browser        about:blank   ${BROWSER}
        Title Should Be      ${tituloHome}
Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
        Input Text          ${campoPesquisa} ${PRODUTO}
Clicar no botao de pesquisa
        Click Element      ${botaoPesquisar}
Fechar navegador
    Close Browser
