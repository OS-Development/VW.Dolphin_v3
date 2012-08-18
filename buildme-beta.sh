_OS=$(uname | tr [:upper:] [:lower:] )
_CPU=$(uname -m| tr [:upper:] [:lower:] )
_BUILD=build-${_OS}-${_CPU}

export CONFIGURATION=Release

#rm -rf $_BUILD

hg revert --all
hg fetch
test -f ~/flickr_api_keys.patch && patch -p1 < ~/flickr_api_keys.patch

autobuild edit configure platform=linux name=ReleaseOS options=-DFMOD=TRUE,'"-DROOT_PROJECT_NAME:STRING=Dolphin Viewer 3 BETA"','"-DVIEWER_CHANNEL:STRING=Dolphin Viewer 3 BETA"','"-DVIEWER_LOGIN_CHANNEL:STRING=Dolphin Viewer 3 BETA"',-DPACKAGE:BOOL=ON,-DGCC_DISABLE_FATAL_WARNINGS:BOOL=ON,-DLL_TESTS:BOOL=OFF arguments="../indra"
autobuild configure -c ReleaseOS

cp ${_BUILD}/newview/kvflickrkeys.h indra/newview/
mkdir -p ${_BUILD}/newview/icons/test/
cp indra/newview/dolphinviewer_icon.icns ${_BUILD}/newview/icons/test/

autobuild build -c ReleaseOS --no-configure

