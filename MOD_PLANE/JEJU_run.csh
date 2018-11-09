#!/bin/csh

source /home/vibrio/MOD_PLANE/SHL/01_READDIR.csh

csh $DSHL/02_DATE.csh $PHOME

set Tday=`cat $PHOME/ymd.dat`
echo $Tday > $DLOG/Log_JEJU_$Tday.txt

echo "======================" >>& $DLOG/Log_JEJU_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_JEJU_$Tday.txt
echo "START Compile JEJU to VIBRIO" >>& $DLOG/Log_JEJU_$Tday.txt
echo "----------------------" >>& $DLOG/Log_JEJU_$Tday.txt
gfortran -o $DEXE/38_JEJU.x $DSRC/38_JEJU.f90 >>& $DLOG/Log_JEJU_$Tday.txt
echo "----------------------" >>& $DLOG/Log_JEJU_$Tday.txt
echo "END Compile JEJU to VIBRIO" >>& $DLOG/Log_JEJU_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_JEJU_$Tday.txt
echo "======================" >>& $DLOG/Log_JEJU_$Tday.txt
echo " " >>& $DLOG/Log_JEJU_$Tday.txt

echo "======================" >>& $DLOG/Log_JEJU_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_JEJU_$Tday.txt
echo "START Compile JEJU HD" >>& $DLOG/Log_JEJU_$Tday.txt
echo "----------------------" >>& $DLOG/Log_JEJU_$Tday.txt
gfortran -o $DEXE/39_RELOC_J.x $DSRC/39_RELOC_J.f90 >>& $DLOG/Log_JEJU_$Tday.txt
echo "----------------------" >>& $DLOG/Log_JEJU_$Tday.txt
echo "END Compile JEJU HD" >>& $DLOG/Log_JEJU_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_JEJU_$Tday.txt
echo "======================" >>& $DLOG/Log_JEJU_$Tday.txt
echo " " >>& $DLOG/Log_JEJU_$Tday.txt

echo "======================" >>& $DLOG/Log_JEJU_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_JEJU_$Tday.txt
echo "Start PLANE Modeling" >>& $DLOG/Log_JEJU_$Tday.txt
echo "----------------------" >>& $DLOG/Log_JEJU_$Tday.txt
csh $DSHL/JEJU.csh $PHOME >>& $DLOG/Log_JEJU_$Tday.txt
echo "----------------------" >>& $DLOG/Log_JEJU_$Tday.txt
echo "END PLANE Modeling" >>& $DLOG/Log_JEJU_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_JEJU_$Tday.txt
echo "======================" >>& $DLOG/Log_JEJU_$Tday.txt
echo " " >>& $DLOG/Log_JEJU_$Tday.txt

echo "======================" >>& $DLOG/Log_JEJU_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_JEJU_$Tday.txt
echo "START Convert euckr to utf-8, use /usr/bin/iconv" >>& $DLOG/Log_JEJU_$Tday.txt
echo "----------------------" >>& $DLOG/Log_JEJU_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/JEJU_${Tday}_1_euckr.xml -o $DXML/$Tday/JEJU_${Tday}_1.xml >>& $DLOG/Log_JEJU_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/JEJU_${Tday}_2_euckr.xml -o $DXML/$Tday/JEJU_${Tday}_2.xml >>& $DLOG/Log_JEJU_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/JEJU_${Tday}_3_euckr.xml -o $DXML/$Tday/JEJU_${Tday}_3.xml >>& $DLOG/Log_JEJU_$Tday.txt

/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/JEJU_${Tday}_1_HD_euckr.xml -o $DXML/$Tday/JEJU_${Tday}_1_HD.xml >>& $DLOG/Log_JEJU_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/JEJU_${Tday}_2_HD_euckr.xml -o $DXML/$Tday/JEJU_${Tday}_2_HD.xml >>& $DLOG/Log_JEJU_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/JEJU_${Tday}_3_HD_euckr.xml -o $DXML/$Tday/JEJU_${Tday}_3_HD.xml >>& $DLOG/Log_JEJU_$Tday.txt

echo "----------------------" >>& $DLOG/Log_JEJU_$Tday.txt
echo "END Convert euckr to utf-8, use /usr/bin/iconv" >>& $DLOG/Log_JEJU_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_JEJU_$Tday.txt
echo "======================" >>& $DLOG/Log_JEJU_$Tday.txt
echo " " >>& $DLOG/Log_JEJU_$Tday.txt
