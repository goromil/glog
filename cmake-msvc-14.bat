pushd ^"%1^"
mkdir build32 & pushd build32
cmake -G "Visual Studio 14 2015" ..
popd
mkdir build64 & pushd build64
cmake -G "Visual Studio 14 2015 Win64" ..
popd
rem cmake --build build32 --config Release
cmake --build build64 --config Release
rem cmake --build build64
popd
