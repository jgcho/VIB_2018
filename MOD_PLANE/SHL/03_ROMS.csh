#!/bin/csh

set PHOME=$argv[1]
source $PHOME/SHL/01_READDIR.csh
set Tday=`cat $PHOME/ymd.dat`

mkdir -p $DRST/$Tday
mkdir -p $DXML/$Tday

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_$Tday.txt
echo "========34_ROMS (WEST) ==========" >>& $DLOG/Log_$Tday.txt
$DEXE/34_ROMS.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_$Tday.txt

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_$Tday.txt
echo "========35_RELOC ROMS (WEST) ==========" >>& $DLOG/Log_$Tday.txt
$DEXE/35_RELOC.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_$Tday.txt

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_$Tday.txt
echo "========36_EAST=========================" >>& $DLOG/Log_$Tday.txt
$DEXE/36_EAST.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_$Tday.txt

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_$Tday.txt
echo "========37_RELOC EAST ==================" >>& $DLOG/Log_$Tday.txt
$DEXE/37_RELOC_E.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_$Tday.txt

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_$Tday.txt
echo "========38_JEJU=========================" >>& $DLOG/Log_$Tday.txt
$DEXE/38_JEJU.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_$Tday.txt

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_$Tday.txt
echo "========39_RELOC JEJU ==================" >>& $DLOG/Log_$Tday.txt
$DEXE/39_RELOC_J.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_$Tday.txt

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_$Tday.txt
echo "========40_WEST=========================" >>& $DLOG/Log_$Tday.txt
$DEXE/40_WEST.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_$Tday.txt

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_$Tday.txt
echo "========41_RELOC WEST ==================" >>& $DLOG/Log_$Tday.txt
$DEXE/41_RELOC_W.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_$Tday.txt
