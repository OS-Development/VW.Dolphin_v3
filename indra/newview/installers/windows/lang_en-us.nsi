; First is default
LoadLanguageFile "${NSISDIR}\Contrib\Language files\English.nlf"

; Language selection dialog
LangString InstallerLanguageTitle  ${LANG_ENGLISH} "Installer Language"
LangString SelectInstallerLanguage  ${LANG_ENGLISH} "Please select the language of the installer"

; subtitle on license text caption
LangString LicenseSubTitleUpdate ${LANG_ENGLISH} " Update"
LangString LicenseSubTitleSetup ${LANG_ENGLISH} " Setup"

; installation directory text
LangString DirectoryChooseTitle ${LANG_ENGLISH} "Installation Directory" 
LangString DirectoryChooseUpdate ${LANG_ENGLISH} "Select the Dolphin Viewer 3 directory to update to version ${VERSION_LONG}.(XXX):"
LangString DirectoryChooseSetup ${LANG_ENGLISH} "Select the directory to install The Dolphin Viewer 3 in:"

; CheckStartupParams message box
LangString CheckStartupParamsMB ${LANG_ENGLISH} "Could not find the program '$INSTPROG'. Silent update failed."

; installation success dialog
LangString InstSuccesssQuestion ${LANG_ENGLISH} "Start The Dolphin Viewer 3 now?"

; remove old NSIS version
LangString RemoveOldNSISVersion ${LANG_ENGLISH} "Checking for old version..."

; check windows version
LangString CheckWindowsVersionDP ${LANG_ENGLISH} "Checking Windows version..."
LangString CheckWindowsVersionMB ${LANG_ENGLISH} 'The Dolphin Viewer 3 only supports Windows XP, Windows 2000, and Mac OS X.$\n$\nAttempting to install on Windows $R0 can result in crashes and data loss.$\n$\nInstall anyway?'

; checkifadministrator function (install)
LangString CheckAdministratorInstDP ${LANG_ENGLISH} "Checking for permission to install..."
LangString CheckAdministratorInstMB ${LANG_ENGLISH} 'You appear to be using a "limited" account.$\nYou must be an "administrator" to install The Dolphin Viewer 3.'

; checkifadministrator function (uninstall)
LangString CheckAdministratorUnInstDP ${LANG_ENGLISH} "Checking for permission to uninstall..."
LangString CheckAdministratorUnInstMB ${LANG_ENGLISH} 'You appear to be using a "limited" account.$\nYou must be an "administrator" to uninstall The Dolphin Viewer 3.'

; checkifalreadycurrent
LangString CheckIfCurrentMB ${LANG_ENGLISH} "It appears that The Dolphin Viewer 3 ${VERSION_LONG} is already installed.$\n$\nWould you like to install it again?"

; checkcpuflags
LangString MissingSSE2 ${LANG_ENGLISH} "This machine may not have a CPU with SSE2 support, which is required to run SecondLife ${VERSION_LONG}. Do you want to continue?"

; closesecondlife function (install)
LangString CloseSecondLifeInstDP ${LANG_ENGLISH} "Waiting for The Dolphin Viewer 3 to shut down..."
LangString CloseSecondLifeInstMB ${LANG_ENGLISH} "The Dolphin Viewer 3 can't be installed while it is already running.$\n$\nFinish what you're doing then select OK to close The Dolphin Viewer 3 and continue.$\nSelect CANCEL to cancel installation."

; closesecondlife function (uninstall)
LangString CloseSecondLifeUnInstDP ${LANG_ENGLISH} "Waiting for The Dolphin Viewer 3 to shut down..."
LangString CloseSecondLifeUnInstMB ${LANG_ENGLISH} "The Dolphin Viewer 3 can't be uninstalled while it is already running.$\n$\nFinish what you're doing then select OK to close The Dolphin Viewer 3 and continue.$\nSelect CANCEL to cancel."

; CheckNetworkConnection
LangString CheckNetworkConnectionDP ${LANG_ENGLISH} "Checking network connection..."

; removecachefiles
LangString RemoveCacheFilesDP ${LANG_ENGLISH} "Deleting cache files in Documents and Settings folder"

; delete program files
LangString DeleteProgramFilesMB ${LANG_ENGLISH} "There are still files in your SecondLife program directory.$\n$\nThese are possibly files you created or moved to:$\n$INSTDIR$\n$\nDo you want to remove them?"

; uninstall text
LangString UninstallTextMsg ${LANG_ENGLISH} "This will uninstall The Dolphin Viewer 3 ${VERSION_LONG} from your system."
