#mkdir -p libraries/include
#mkdir -p libraries/universal-darwin/lib_debug
#mkdir -p libraries/universal-darwin/lib_release
#cp -p ../fmodapi375mac/api/inc/*.h libraries/include
#lipo -create ../fmodapi375mac/api/lib/libfmod.a  ../fmodapi375mac/api/lib/libfmodx86.a  -output libraries/universal-darwin/lib_debug/libfmod.a
#touch -r ../fmodapi375mac/api/lib/libfmodx86.a libraries/universal-darwin/lib_debug/libfmod.a
#cp -p libraries/universal-darwin/lib_debug/libfmod.a libraries/universal-darwin/lib_release/libfmod.a
#

export CONFIGURATION=Release

rm -rf build-darwin-i386

patch -p1 < ../flickr_api_keys.patch

autobuild edit configure platform=darwin name=ReleaseOS options=-DFMOD=TRUE,'-G','Xcode','"-DROOT_PROJECT_NAME:STRING=Dolphin Viewer 3"','"-DVIEWER_CHANNEL:STRING=Dolphin Viewer 3"','"-DVIEWER_LOGIN_CHANNEL:STRING=Dolphin Viewer 3"',-DPACKAGE:BOOL=ON,-DGCC_DISABLE_FATAL_WARNINGS:BOOL=ON,-DLL_TESTS:BOOL=OFF arguments="../indra"

autobuild configure -c ReleaseOS -- -DLL_TESTS=OFF 

cp build-darwin-i386/newview/kvflickrkeys.h indra/newview/
mkdir -p build-darwin-i386/newview/icons/test/
cp indra/newview/dolphinviewer_icon.icns build-darwin-i386/newview/icons/test/

autobuild build -c ReleaseOS --no-configure


#cd build-darwin-i386

#xcodebuild -sdk macosx10.5 -target ALL_BUILD -configuration Release GCC_VERSION=4.2

