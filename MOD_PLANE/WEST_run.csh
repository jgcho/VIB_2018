#!/bin/csh

source /home/vibrio/MOD_PLANE/SHL/01_READDIR.csh

csh $DSHL/02_DATE.csh $PHOME

set Tday=`cat $PHOME/ymd.dat`
echo $Tday > $DLOG/Log_WEST_$Tday.txt

echo "======================" >>& $DLOG/Log_WEST_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_WEST_$Tday.txt
echo "START Compile WEST to VIBRIO" >>& $DLOG/Log_WEST_$Tday.txt
echo "----------------------" >>& $DLOG/Log_WEST_$Tday.txt
gfortran -o $DEXE/40_WEST.x $DSRC/40_WEST.f90 >>& $DLOG/Log_WEST_$Tday.txt
echo "----------------------" >>& $DLOG/Log_WEST_$Tday.txt
echo "END Compile WEST to VIBRIO" >>& $DLOG/Log_WEST_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_WEST_$Tday.txt
echo "======================" >>& $DLOG/Log_WEST_$Tday.txt
echo " " >>& $DLOG/Log_WEST_$Tday.txt

echo "======================" >>& $DLOG/Log_WEST_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_WEST_$Tday.txt
echo "START Compile WEST HD" >>& $DLOG/Log_WEST_$Tday.txt
echo "----------------------" >>& $DLOG/Log_WEST_$Tday.txt
gfortran -o $DEXE/41_RELOC_W.x $DSRC/41_RELOC_W.f90 >>& $DLOG/Log_WEST_$Tday.txt
echo "----------------------" >>& $DLOG/Log_WEST_$Tday.txt
echo "END Compile WEST HD" >>& $DLOG/Log_WEST_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_WEST_$Tday.txt
echo "======================" >>& $DLOG/Log_WEST_$Tday.txt
echo " " >>& $DLOG/Log_WEST_$Tday.txt

echo "======================" >>& $DLOG/Log_WEST_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_WEST_$Tday.txt
echo "Start PLANE Modeling" >>& $DLOG/Log_WEST_$Tday.txt
echo "----------------------" >>& $DLOG/Log_WEST_$Tday.txt
(csh $DSHL/WEST.csh $PHOME > /dev/null) >>& $DLOG/Log_WEST_$Tday.txt
echo "----------------------" >>& $DLOG/Log_WEST_$Tday.txt
echo "END PLANE Modeling" >>& $DLOG/Log_WEST_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_WEST_$Tday.txt
echo "======================" >>& $DLOG/Log_WEST_$Tday.txt
echo " " >>& $DLOG/Log_WEST_$Tday.txt

echo "======================" >>& $DLOG/Log_WEST_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_WEST_$Tday.txt
echo "START Convert euckr to utf-8, use /usr/bin/iconv" >>& $DLOG/Log_WEST_$Tday.txt
echo "----------------------" >>& $DLOG/Log_WEST_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/WEST_${Tday}_1_euckr.xml -o $DXML/$Tday/WEST_${Tday}_1.xml >>& $DLOG/Log_WEST_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/WEST_${Tday}_2_euckr.xml -o $DXML/$Tday/WEST_${Tday}_2.xml >>& $DLOG/Log_WEST_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/WEST_${Tday}_3_euckr.xml -o $DXML/$Tday/WEST_${Tday}_3.xml >>& $DLOG/Log_WEST_$Tday.txt

/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/WEST_${Tday}_1_HD_euckr.xml -o $DXML/$Tday/WEST_${Tday}_1_HD.xml >>& $DLOG/Log_WEST_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/WEST_${Tday}_2_HD_euckr.xml -o $DXML/$Tday/WEST_${Tday}_2_HD.xml >>& $DLOG/Log_WEST_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/WEST_${Tday}_3_HD_euckr.xml -o $DXML/$Tday/WEST_${Tday}_3_HD.xml >>& $DLOG/Log_WEST_$Tday.txt
echo "----------------------" >>& $DLOG/Log_WEST_$Tday.txt
echo "END Convert euckr to utf-8, use /usr/bin/iconv" >>& $DLOG/Log_WEST_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_WEST_$Tday.txt
echo "======================" >>& $DLOG/Log_WEST_$Tday.txt
echo " " >>& $DLOG/Log_WEST_$Tday.txt
