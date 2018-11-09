#!/bin/csh

set PHOME=$argv[1]
source $PHOME/SHL/01_READDIR.csh
set Tday=`cat $PHOME/ymd.dat`

mkdir -p $DRST/$Tday
mkdir -p $DXML/$Tday

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_WEST_$Tday.txt
echo "========40_WEST=========================" >>& $DLOG/Log_WEST_$Tday.txt
$DEXE/40_WEST.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_WEST_$Tday.txt

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_WEST_$Tday.txt
echo "========41_RELOC WEST ==================" >>& $DLOG/Log_WEST_$Tday.txt
$DEXE/41_RELOC_W.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_WEST_$Tday.txt
