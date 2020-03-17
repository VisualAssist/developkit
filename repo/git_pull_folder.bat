@echo off
setlocal enabledelayedexpansion

set root=%CD%
echo git fetch: %root%

call:enumerator %root%

PAUSE

:pull
cd /d %1
if exist .git (
    echo.
    echo ------------fetch %1------------
    git fetch --all

    if exist .gitmodules (
    echo.
    echo submodules: %1
    git submodule update --init --force 
    call:enumerator %1
    echo ----------------------------------------------------------------
    )
)
goto:eof

:enumerator
cd /d %1
for /d %%i in (*) do (
    call:pull %1/%%i
)
goto:eof

PAUSE
