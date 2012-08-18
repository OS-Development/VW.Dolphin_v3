set CONFIGURATION=Release
set MSVC_REDIST_PATH=c:\Windows\System32
rem patch -p1 < ..\flickr_api_keys.patch

autobuild edit configure platform=windows name=ReleaseOS options=-DFMOD=TRUE,'"-DROOT_PROJECT_NAME:STRING=Dolphin Viewer 3"','"-DVIEWER_CHANNEL:STRING=Dolphin Viewer 3"','"-DVIEWER_LOGIN_CHANNEL:STRING=Dolphin Viewer 3"',-DPACKAGE:BOOL=ON,-DUNATTENDED:BOOL=ON,-DLL_TESTS:BOOL=OFF,'-G','"Visual Studio 10"','-DINSTALL_PROPIETARY=TRUE','-DUSE_KDU=FALSE'
autobuild configure -c ReleaseOS -- -DLL_TESTS=OFF -DMSVC_REDIST_PATH=C:\Windows\System32

rem copy build-vc100/newview/kvflickrkeys.h indra/newview/
rem md build-vc100/newview/icons/test/
rem autobuild build -c ReleaseOS --no-configure
