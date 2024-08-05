$currdir = Get-Location
try {
    & 'C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\Launch-VsDevShell.ps1'
    cd C:\Software\neovim
    cmake -S cmake.deps -B .deps -G Ninja -D CMAKE_BUILD_TYPE=Release
    cmake --build .deps --config Release
    cmake -B build -G Ninja -D CMAKE_BUILD_TYPE=Release
    cmake --build build --config Release
    cp .\build\runtime\doc\tags runtime\doc\tags
} finally {
    cd $currdir
}

