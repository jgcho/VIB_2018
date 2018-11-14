@echo off

set /A irr=0
for /f "usebackq tokens=1,2 delims= " %%i in ("dir_batch.inp") do (
set array[%%j]=%%i
)

rem set /A irr=0
rem for /F "usebackq delims= " %%a in ("dir.inp") do (
rem set /A irr+=1
rem echo !irr! %%a
rem set array[!irr!]=%%a
rem )


set dINP=%array[1]%
set dLOG=%array[2]%
set dSRC=%array[3]%
set dEXE=%array[4]%
set dSHL=%array[5]%
set dPRE0=%array[6]%
set dRST=%array[7]%
set dXML=%array[8]%

echo %dXML%
