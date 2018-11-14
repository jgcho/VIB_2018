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

rem +++++++++++++++++++++++++
rem 36_EAST.exe
echo "++++++++++++++++++++++++++++++++++++++">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "36_EAST.exe START">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem ifort -o .\EXE\36_EAST.exe .\SRC\36_EAST.f90 >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
.\%dEXE%\36_EAST.exe >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "--------------------------------------">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "36_EAST.exe END">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo.>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem -------------------------

rem +++++++++++++++++++++++++
rem 37_RELOC_E.exe
echo "++++++++++++++++++++++++++++++++++++++">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "37_RELOC_E.exe START">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem ifort -o .\EXE\37_RELOC_E.exe .\SRC\37_RELOC_E.f90 >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
.\%dEXE%\37_RELOC_E.exe >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "--------------------------------------">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "37_RELOC_E.exe END">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo.>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem -------------------------

rem +++++++++++++++++++++++++
rem 38_JEJU.exe
echo "++++++++++++++++++++++++++++++++++++++">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "38_JEJU.exe START">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem ifort -o .\EXE\38_JEJU.exe .\SRC\38_JEJU.f90 >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
.\%dEXE%\38_JEJU.exe >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "--------------------------------------">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "38_JEJU.exe END">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo.>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem -------------------------

rem +++++++++++++++++++++++++
rem 39_RELOC_J.exe
echo "++++++++++++++++++++++++++++++++++++++">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "39_RELOC_J.exe START">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem ifort -o .\EXE\39_RELOC_J.exe .\SRC\39_RELOC_J.f90 >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
.\%dEXE%\39_RELOC_J.exe >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "--------------------------------------">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "39_RELOC_J.exe END">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo.>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem -------------------------

rem +++++++++++++++++++++++++
rem 40_WEST.exe
echo "++++++++++++++++++++++++++++++++++++++">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "40_WEST.exe START">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem ifort -o .\EXE\40_WEST.exe .\SRC\40_WEST.f90 >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
.\%dEXE%\40_WEST.exe >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "--------------------------------------">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "40_WEST.exe END">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo.>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem -------------------------

rem +++++++++++++++++++++++++
rem 41_RELOC_W.exe
echo "++++++++++++++++++++++++++++++++++++++">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "41_RELOC_W.exe START">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem ifort -o .\EXE\41_RELOC_W.exe .\SRC\41_RELOC_W.f90 >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
.\%dEXE%\41_RELOC_W.exe >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "--------------------------------------">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "41_RELOC_W.exe END">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo.>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
rem -------------------------

echo "++++++++++++++++++++++++++++++++++++++">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "START Convert euckr to utf-8, iconv" >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "----------------------" >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\ROMS_%logDate%_1_HD_euckr.xml > %dXML%\%logDate%\ROMS_%logDate%_1_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\ROMS_%logDate%_2_HD_euckr.xml > %dXML%\%logDate%\ROMS_%logDate%_2_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\ROMS_%logDate%_3_HD_euckr.xml > %dXML%\%logDate%\ROMS_%logDate%_3_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\EAST_%logDate%_1_HD_euckr.xml > %dXML%\%logDate%\EAST_%logDate%_1_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\EAST_%logDate%_2_HD_euckr.xml > %dXML%\%logDate%\EAST_%logDate%_2_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\EAST_%logDate%_3_HD_euckr.xml > %dXML%\%logDate%\EAST_%logDate%_3_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\JEJU_%logDate%_1_HD_euckr.xml > %dXML%\%logDate%\JEJU_%logDate%_1_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\JEJU_%logDate%_2_HD_euckr.xml > %dXML%\%logDate%\JEJU_%logDate%_2_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\JEJU_%logDate%_3_HD_euckr.xml > %dXML%\%logDate%\JEJU_%logDate%_3_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\WEST_%logDate%_1_HD_euckr.xml > %dXML%\%logDate%\WEST_%logDate%_1_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\WEST_%logDate%_2_HD_euckr.xml > %dXML%\%logDate%\WEST_%logDate%_2_HD.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\WEST_%logDate%_3_HD_euckr.xml > %dXML%\%logDate%\WEST_%logDate%_3_HD.xml

iconv -f euc-kr -t utf-8 %dXML%\%logDate%\ROMS_%logDate%_1_euckr.xml > %dXML%\%logDate%\ROMS_%logDate%_1.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\ROMS_%logDate%_2_euckr.xml > %dXML%\%logDate%\ROMS_%logDate%_2.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\ROMS_%logDate%_3_euckr.xml > %dXML%\%logDate%\ROMS_%logDate%_3.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\EAST_%logDate%_1_euckr.xml > %dXML%\%logDate%\EAST_%logDate%_1.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\EAST_%logDate%_2_euckr.xml > %dXML%\%logDate%\EAST_%logDate%_2.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\EAST_%logDate%_3_euckr.xml > %dXML%\%logDate%\EAST_%logDate%_3.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\JEJU_%logDate%_1_euckr.xml > %dXML%\%logDate%\JEJU_%logDate%_1.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\JEJU_%logDate%_2_euckr.xml > %dXML%\%logDate%\JEJU_%logDate%_2.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\JEJU_%logDate%_3_euckr.xml > %dXML%\%logDate%\JEJU_%logDate%_3.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\WEST_%logDate%_1_euckr.xml > %dXML%\%logDate%\WEST_%logDate%_1.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\WEST_%logDate%_2_euckr.xml > %dXML%\%logDate%\WEST_%logDate%_2.xml
iconv -f euc-kr -t utf-8 %dXML%\%logDate%\WEST_%logDate%_3_euckr.xml > %dXML%\%logDate%\WEST_%logDate%_3.xml

echo "----------------------" >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "END Convert euckr to utf-8, use iconv" >> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo %date% %time%>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo "--------------------------------------">> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
echo.>> .\%dLOG%\%logDate%\log_%logDate%.txt 2>&1
