@echo off

rem +++++++++++++++++++++++++
rem 홈디렉토리 설정
echo %cd%> ".\HOME.INP"

rem 기본 디렉토리 설정
call .\INTDIR.bat
rem -------------------------

rem +++++++++++++++++++++++++
rem 오늘날짜 설정
for /F "tokens=1" %%a in ('date /t') do set DATE_TODAY=%%a
rem [Date Format = yyyy-mm-dd]
set yyyy=%DATE_TODAY:~0,4%
set mm=%DATE_TODAY:~5,2%
set dd=%DATE_TODAY:~8,2%
set logDate=%yyyy%%mm%%dd%
rem 수동 모의시 날짜 입력 #############################
set logDate=20181008
echo %logDate%> ".\YMD.dat"
rem -------------------------

rem +++++++++++++++++++++++++
rem 로그파일 생성
md .\%dLOG%\%logDate%
echo "++++++++++++++++++++++++++++++++++++++"> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "--------------------------------------">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo.>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem -------------------------

md %dXML%\%logDate%
md %dRST%\%logDate%

rem +++++++++++++++++++++++++
rem 34_ROMS.exe
echo "++++++++++++++++++++++++++++++++++++++">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "34_ROMS.exe START">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem ifort -o .\EXE\34_ROMS.exe .\SRC\34_ROMS.f90 >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
.\%dEXE%\34_ROMS.exe >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "--------------------------------------">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "34_ROMS.exe END">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo.>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem -------------------------

rem +++++++++++++++++++++++++
rem 35_RELOC.exe
echo "++++++++++++++++++++++++++++++++++++++">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "35_RELOC.exe START">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem ifort -o .\EXE\35_RELOC.exe .\SRC\35_RELOC.f90 >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
.\%dEXE%\35_RELOC.exe >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "--------------------------------------">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "35_RELOC.exe END">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo.>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem -------------------------

echo "++++++++++++++++++++++++++++++++++++++">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "START Convert euckr to utf-8, iconv" >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "----------------------" >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\ROMS_%logDate%_1_HD_euckr.xml > %dXML%\%logDate%\ROMS_%logDate%_1_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\ROMS_%logDate%_2_HD_euckr.xml > %dXML%\%logDate%\ROMS_%logDate%_2_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\ROMS_%logDate%_3_HD_euckr.xml > %dXML%\%logDate%\ROMS_%logDate%_3_HD.xml

iconv -f euc-kr -t utf-8 %dXML%\%logDate%\ROMS_%logDate%_1_euckr.xml > %dXML%\%logDate%\ROMS_%logDate%_1.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\ROMS_%logDate%_2_euckr.xml > %dXML%\%logDate%\ROMS_%logDate%_2.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\ROMS_%logDate%_3_euckr.xml > %dXML%\%logDate%\ROMS_%logDate%_3.xml
echo "----------------------" >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "END Convert euckr to utf-8, use iconv" >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "--------------------------------------">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo.>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
