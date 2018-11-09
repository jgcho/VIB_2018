#!/bin/csh

set PHOME=$argv[1]
source $PHOME/SHL/01_READDIR.csh
set Tday=`cat $PHOME/ymd.dat`

mkdir -p $DRST/$Tday
mkdir -p $DXML/$Tday

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_JEJU_$Tday.txt
echo "========38_JEJU=========================" >>& $DLOG/Log_JEJU_$Tday.txt
$DEXE/38_JEJU.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_JEJU_$Tday.txt

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_JEJU_$Tday.txt
echo "========39_RELOC JEJU ==================" >>& $DLOG/Log_JEJU_$Tday.txt
$DEXE/39_RELOC_J.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_JEJU_$Tday.txt
