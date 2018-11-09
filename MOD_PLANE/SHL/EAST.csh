#!/bin/csh

set PHOME=$argv[1]
source $PHOME/SHL/01_READDIR.csh
set Tday=`cat $PHOME/ymd.dat`

mkdir -p $DRST/$Tday
mkdir -p $DXML/$Tday

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_EAST_$Tday.txt
echo "========36_EAST=========================" >>& $DLOG/Log_EAST_$Tday.txt
$DEXE/36_EAST.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_EAST_$Tday.txt

echo "++++++++++++++++++++++++++++++++++++++++" >>& $DLOG/Log_EAST_$Tday.txt
echo "========37_RELOC EAST ==================" >>& $DLOG/Log_EAST_$Tday.txt
$DEXE/37_RELOC_E.x < $PHOME/HOME.inp
echo "----------------------------------------" >>& $DLOG/Log_EAST_$Tday.txt
