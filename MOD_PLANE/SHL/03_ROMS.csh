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
