; First is default
LoadLanguageFile "${NSISDIR}\Contrib\Language files\PortugueseBR.nlf"

; Language selection dialog
LangString InstallerLanguageTitle  ${LANG_PORTUGUESEBR} "Instalador Linguagem"
LangString SelectInstallerLanguage  ${LANG_PORTUGUESEBR} "Por favor seleccione a linguagem do instalador"

; subtitle on license text caption
LangString LicenseSubTitleUpdate ${LANG_PORTUGUESEBR} " Atualizar"
LangString LicenseSubTitleSetup ${LANG_PORTUGUESEBR} " Instalar"

; installation directory text
LangString DirectoryChooseTitle ${LANG_PORTUGUESEBR} "Diretório de Instalação" 
LangString DirectoryChooseUpdate ${LANG_PORTUGUESEBR} "Selecione o diretório do The Dolphin Viewer 3 para atualizar para a versão ${VERSION_LONG}.(XXX):"
LangString DirectoryChooseSetup ${LANG_PORTUGUESEBR} "Selecione o diretório para a instalação do The Dolphin Viewer 3 em:"

; CheckStartupParams message box
LangString CheckStartupParamsMB ${LANG_PORTUGUESEBR} "Não é possível encontrar o programa '$INSTPROG'. Ocorreu uma falha na atualização silenciosa."

; installation success dialog
LangString InstSuccesssQuestion ${LANG_PORTUGUESEBR} "Iniciar o The Dolphin Viewer 3 agora?"

; remove old NSIS version
LangString RemoveOldNSISVersion ${LANG_PORTUGUESEBR} "Verificando a versão anterior..."

; check windows version
LangString CheckWindowsVersionDP ${LANG_PORTUGUESEBR} "Verificando a versão do Windows..."
LangString CheckWindowsVersionMB ${LANG_PORTUGUESEBR} 'O The Dolphin Viewer 3 suporta apenas Windows XP, Windows 2000 e Mac OS X.$\n$\nA tentativa de instalar no Windows $R0 pode resultar em falhas e perda de dados.$\n$\nInstalar assim mesmo?'

; checkifadministrator function (install)
LangString CheckAdministratorInstDP ${LANG_PORTUGUESEBR} "Verificando a permissão para instalação..."
LangString CheckAdministratorInstMB ${LANG_PORTUGUESEBR} 'Você parece estar usando uma conta "limitada".$\nVocê deve ser um "administrador" para poder instalar o The Dolphin Viewer 3.'

; checkifadministrator function (uninstall)
LangString CheckAdministratorUnInstDP ${LANG_PORTUGUESEBR} "Verificando a permissão para desinstalação..."
LangString CheckAdministratorUnInstMB ${LANG_PORTUGUESEBR} 'Você parece estar usando uma conta "limitada".$\nVocê deve ser um "administrador" para poder desinstalar o The Dolphin Viewer 3.'

; checkifalreadycurrent
LangString CheckIfCurrentMB ${LANG_PORTUGUESEBR} "Parece que o The Dolphin Viewer 3 ${VERSION_LONG} já está instalado.$\n$\nDeseja instalar novamente?"

; closesecondlife function (install)
LangString CloseSecondLifeInstDP ${LANG_PORTUGUESEBR} "Esperando o encerramento do The Dolphin Viewer 3..."
LangString CloseSecondLifeInstMB ${LANG_PORTUGUESEBR} "O The Dolphin Viewer 3 não pode ser instalado enquanto ainda está sendo executado.$\n$\nTermine o que estava fazendo e selecione OK para fechar o The Dolphin Viewer 3 e continuar.$\nSelecione CANCELAR para cancelar a instalação."

; closesecondlife function (uninstall)
LangString CloseSecondLifeUnInstDP ${LANG_PORTUGUESEBR} "Esperando o encerramento do The Dolphin Viewer 3..."
LangString CloseSecondLifeUnInstMB ${LANG_PORTUGUESEBR} "O The Dolphin Viewer 3 não pode ser desinstalado enquanto ainda está sendo executado.$\n$\nTermine o que estava fazendo e selecione OK para fechar o The Dolphin Viewer 3 e continuar.$\nSelecione CANCELAR para cancelar."

; CheckNetworkConnection
LangString CheckNetworkConnectionDP ${LANG_PORTUGUESEBR} "Verificando a conexão de rede..."

; removecachefiles
LangString RemoveCacheFilesDP ${LANG_PORTUGUESEBR} "Excluindo arquivos de cache na pasta Documents and Settings"

; delete program files
LangString DeleteProgramFilesMB ${LANG_PORTUGUESEBR} "Ainda existem arquivos em seu diretório do programa The Dolphin Viewer 3.$\n$\nProvavelmente são arquivos que você criou ou moveu para:$\n$INSTDIR$\n$\nDeseja removê-los?"

; uninstall text
LangString UninstallTextMsg ${LANG_PORTUGUESEBR} "Isso desinstalará o The Dolphin Viewer 3 ${VERSION_LONG} do seu sistema."
