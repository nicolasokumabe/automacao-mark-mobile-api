*** Settings ***
Documentation        Testes de Login

Resource        ../resources/base.resource

Test Setup       Start Session
Test Teardown    Finish Session

*** Test Cases ***
Deve logar com sucesso

  Input Text       xpath=//*[@resource-id="apiIp"]       192.168.15.124
  # Input Text     class name=android.widget.EditText    192.168.15.124

  Click Element    xpath=//*[@resource-id="signInButton"]

  Wait Until Page Contains    Minhas tarefas    5

