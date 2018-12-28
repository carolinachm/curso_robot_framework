*** Settings ***
Resource            ../resource/Resource.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

### SETUP: ele roda keyword antes da suite ou antes de um teste
### TEARDOWN: ele roda keyword depois de uma suite ou um teste

*** Test Case ***
Validar acesso ao blog robotzandotestes
    Acessar blog robotizandotestes
Validar pequisa de postagens
    Pesquisar a postagem "session premiere"
    Clicaar no post "Session Premiere: Introdução ao Robot Framework" encontrado
    