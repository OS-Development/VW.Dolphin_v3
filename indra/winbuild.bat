rem Creating the Win32 libraries and headers directory tree:
md ..\libraries
md ..\libraries\include
md...\libraries\i686-win32
md ..\libraries\i686-win32\lib
md ..\libraries\i686-win32\lib\release
md ..\libraries\i686-win32\lib\debug
md ..\libraries\i686-win32\lib_release
md ..\libraries\i686-win32\lib_debug
md ..\libraries\i686-win32\include
md ..\libraries\i686-win32\include\GL
md ..\libraries\i686-win32\include\quicktime

rem Copying fmod headers and libs:
xcopy /y "c:\Program Files\fmodapi375win\api\inc\*" ..\libraries\include\
copy /y "c:\Program Files\fmodapi375win\api\lib\fmodvc.lib" ..\libraries\i686-win32\lib\release\fmod.lib
copy /y "c:\Program Files\fmodapi375win\api\lib\fmodvc.lib" ..\libraries\i686-win32\lib\debug\fmod.lib
copy /y "c:\Program Files\fmodapi375win\api\lib\fmodvc.lib" ..\libraries\i686-win32\lib_release\fmod.lib
copy /y "c:\Program Files\fmodapi375win\api\lib\fmodvc.lib" ..\libraries\i686-win32\lib_debug\fmod.lib
copy /y "c:\Program Files\fmodapi375win\api\fmod.dll" newview\
copy /y "c:\Program Files\fmodapi375win\api\fmod.dll" ..\libraries\i686-win32\lib\release\
copy /y "c:\Program Files\fmodapi375win\api\fmod.dll" ..\libraries\i686-win32\lib\debug\
copy /y "c:\Program Files\fmodapi375win\api\fmod.dll" ..\libraries\i686-win32\lib_release\
copy /y "c:\Program Files\fmodapi375win\api\fmod.dll" ..\libraries\i686-win32\lib_debug\

rem Copying Quicktime headers and libs:
xcopy /y /s "c:\Program Files\QuickTime SDK\CIncludes\*" ..\libraries\i686-win32\include\quicktime\
copy /y "c:\Program Files\QuickTime SDK\Libraries\QTMLClient.lib" ..\libraries\i686-win32\lib\release\
copy /y "c:\Program Files\QuickTime SDK\Libraries\QTMLClient.lib" ..\libraries\i686-win32\lib\debug\
copy /y "c:\Program Files\QuickTime SDK\Libraries\QTMLClient.lib" ..\libraries\i686-win32\lib_release\
copy /y "c:\Program Files\QuickTime SDK\Libraries\QTMLClient.lib" ..\libraries\i686-win32\lib_debug\

rem Copy the default settings.xml file:
rem copy /y newview\app_settings\settings.xml newview\app_settings\settings_dolphinviewer.xml

python develop.py --unattended -t Release -m32 -N  configure -DPACKAGE:BOOL=ON -DVIEWER_CHANNEL:STRING="Dolphin Viewer 3" -DVIEWER_LOGIN_CHANNEL:STRING="Dolphin Viewer 3" -DLL_TESTS:BOOL=OFF -DMSVC_REDIST_PATH:PATH=C:/vcredist
