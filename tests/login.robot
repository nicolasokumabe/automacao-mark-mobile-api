*** Settings ***
Documentation        Testes de Login

Resource        ../resources/base.resource

*** Test Cases ***
Deve logar com sucesso

    Open Application    http://localhost:4723
    ...     automationName=uiautomator2
    ...     platformName=Android
    ...     deviceName=Emulator
    ...    udid=emulator-5554
    ...    autoGrantPermissions=true
    ...    app=${EXECDIR}/apps/markx.apk

    Wait Until Page Contains    Endereço IP da Api    10

    Input Text    xpath=//*[@resource-id="apiIp"]     192.168.15.124
    # Input Text    class name=android.widget.EditText    192.168.15.124

    Click Element    xpath=//*[@resource-id="signInButton"]

    Wait Until Page Contains    Minhas tarefas    5

    Close Application