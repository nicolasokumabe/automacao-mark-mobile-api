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

    Sleep    10