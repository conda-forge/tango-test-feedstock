setlocal EnableDelayedExpansion

mkdir build
cd build

cmake -G "NMake Makefiles" ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_CXX_FLAGS="-DLOG4TANGO_HAS_DLL -DTANGO_HAS_DLL" ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
      -DTANGO_PKG_LIBRARY_DIRS:PATH="%LIBRARY_LIB%" ^
      -DTANGO_PKG_INCLUDE_DIRS:PATH="%LIBRARY_INC%" ^
      -DTANGO_PKG_LIBRARIES="tango;omniORB4_rt;omniDynamic4_rt;COS4_rt;omnithread_rt;libzmq-mt-s-4_3_4;comctl32;wsock32;Ws2_32" ^
      ..
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit

nmake install
if errorlevel 1 exit
