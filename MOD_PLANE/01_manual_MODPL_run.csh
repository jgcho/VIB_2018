#!/bin/csh

source /data/vibrio/modeling/MOD_PLANE/SHL/01_READDIR.csh

csh $DSHL/02_DATE.csh $PHOME

#set Tday=`cat $PHOME/ymd.dat`
set Tday=20181008
echo $Tday> $PHOME/ymd.dat
echo $Tday > $DLOG/Log_$Tday.txt

echo "======================" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "START Compile ROMS to VIBRIO" >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
gfortran -o $DEXE/34_ROMS.x $DSRC/34_ROMS.f90 >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
echo "END Compile ROMS to VIBRIO" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "======================" >>& $DLOG/Log_$Tday.txt
echo " " >>& $DLOG/Log_$Tday.txt

echo "======================" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "START Compile ROMS to VIBRIO" >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
gfortran -o $DEXE/35_RELOC.x $DSRC/35_RELOC.f90 >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
echo "END Compile ROMS to VIBRIO" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "======================" >>& $DLOG/Log_$Tday.txt
echo " " >>& $DLOG/Log_$Tday.txt

echo "======================" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "START Compile EAST to VIBRIO" >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
gfortran -o $DEXE/36_EAST.x $DSRC/36_EAST.f90 >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
echo "END Compile EAST to VIBRIO" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "======================" >>& $DLOG/Log_$Tday.txt
echo " " >>& $DLOG/Log_$Tday.txt

echo "======================" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "START Compile EAST HD" >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
gfortran -o $DEXE/37_RELOC_E.x $DSRC/37_RELOC_E.f90 >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
echo "END Compile EAST HD" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "======================" >>& $DLOG/Log_$Tday.txt
echo " " >>& $DLOG/Log_$Tday.txt

echo "======================" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "START Compile JEJU to VIBRIO" >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
gfortran -o $DEXE/38_JEJU.x $DSRC/38_JEJU.f90 >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
echo "END Compile JEJU to VIBRIO" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "======================" >>& $DLOG/Log_$Tday.txt
echo " " >>& $DLOG/Log_$Tday.txt

echo "======================" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "START Compile JEJU HD" >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
gfortran -o $DEXE/39_RELOC_J.x $DSRC/39_RELOC_J.f90 >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
echo "END Compile JEJU HD" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "======================" >>& $DLOG/Log_$Tday.txt
echo " " >>& $DLOG/Log_$Tday.txt

echo "======================" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "START Compile WEST to VIBRIO" >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
gfortran -o $DEXE/40_WEST.x $DSRC/40_WEST.f90 >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
echo "END Compile WEST to VIBRIO" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "======================" >>& $DLOG/Log_$Tday.txt
echo " " >>& $DLOG/Log_$Tday.txt

echo "======================" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "START Compile WEST HD" >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
gfortran -o $DEXE/41_RELOC_W.x $DSRC/41_RELOC_W.f90 >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
echo "END Compile WEST HD" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "======================" >>& $DLOG/Log_$Tday.txt
echo " " >>& $DLOG/Log_$Tday.txt

echo "======================" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "Start PLANE Modeling" >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
(csh $DSHL/03_ROMS.csh $PHOME > /dev/null) >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
echo "END PLANE Modeling" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "======================" >>& $DLOG/Log_$Tday.txt
echo " " >>& $DLOG/Log_$Tday.txt

echo "======================" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "START Convert euckr to utf-8, use /usr/bin/iconv" >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/ROMS_${Tday}_1_euckr.xml -o $DXML/$Tday/ROMS_${Tday}_1.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/ROMS_${Tday}_2_euckr.xml -o $DXML/$Tday/ROMS_${Tday}_2.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/ROMS_${Tday}_3_euckr.xml -o $DXML/$Tday/ROMS_${Tday}_3.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/EAST_${Tday}_1_euckr.xml -o $DXML/$Tday/EAST_${Tday}_1.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/EAST_${Tday}_2_euckr.xml -o $DXML/$Tday/EAST_${Tday}_2.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/EAST_${Tday}_3_euckr.xml -o $DXML/$Tday/EAST_${Tday}_3.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/JEJU_${Tday}_1_euckr.xml -o $DXML/$Tday/JEJU_${Tday}_1.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/JEJU_${Tday}_2_euckr.xml -o $DXML/$Tday/JEJU_${Tday}_2.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/JEJU_${Tday}_3_euckr.xml -o $DXML/$Tday/JEJU_${Tday}_3.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/WEST_${Tday}_1_euckr.xml -o $DXML/$Tday/WEST_${Tday}_1.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/WEST_${Tday}_2_euckr.xml -o $DXML/$Tday/WEST_${Tday}_2.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/WEST_${Tday}_3_euckr.xml -o $DXML/$Tday/WEST_${Tday}_3.xml >>& $DLOG/Log_$Tday.txt

/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/ROMS_${Tday}_1_HD_euckr.xml -o $DXML/$Tday/ROMS_${Tday}_1_HD.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/ROMS_${Tday}_2_HD_euckr.xml -o $DXML/$Tday/ROMS_${Tday}_2_HD.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/ROMS_${Tday}_3_HD_euckr.xml -o $DXML/$Tday/ROMS_${Tday}_3_HD.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/EAST_${Tday}_1_HD_euckr.xml -o $DXML/$Tday/EAST_${Tday}_1_HD.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/EAST_${Tday}_2_HD_euckr.xml -o $DXML/$Tday/EAST_${Tday}_2_HD.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/EAST_${Tday}_3_HD_euckr.xml -o $DXML/$Tday/EAST_${Tday}_3_HD.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/JEJU_${Tday}_1_HD_euckr.xml -o $DXML/$Tday/JEJU_${Tday}_1_HD.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/JEJU_${Tday}_2_HD_euckr.xml -o $DXML/$Tday/JEJU_${Tday}_2_HD.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/JEJU_${Tday}_3_HD_euckr.xml -o $DXML/$Tday/JEJU_${Tday}_3_HD.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/WEST_${Tday}_1_HD_euckr.xml -o $DXML/$Tday/WEST_${Tday}_1_HD.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/WEST_${Tday}_2_HD_euckr.xml -o $DXML/$Tday/WEST_${Tday}_2_HD.xml >>& $DLOG/Log_$Tday.txt
/usr/bin/iconv -f euc-kr -t utf-8 $DXML/$Tday/WEST_${Tday}_3_HD_euckr.xml -o $DXML/$Tday/WEST_${Tday}_3_HD.xml >>& $DLOG/Log_$Tday.txt
echo "----------------------" >>& $DLOG/Log_$Tday.txt
echo "END Convert euckr to utf-8, use /usr/bin/iconv" >>& $DLOG/Log_$Tday.txt
echo `date '+%Y-%m-%d %H:%M:%S'` >>& $DLOG/Log_$Tday.txt
echo "======================" >>& $DLOG/Log_$Tday.txt
echo " " >>& $DLOG/Log_$Tday.txt
