Start 181107
Clone from remote 181107
Linux test account : 192.168.2.163 / vibrio 0x8 181107
Directory setting files : HOME.inp, dir.inp, 00_MODP_run.csh, 01_READDIR.csh

면기반 코드 수정 181108

+++++++++++++++++++++++
임창빈과장 의견
csv 파일명은
남해 = ROMS_348423
동해 = EAST_232323
서해 = WEST_232323
제주 = JEJU_232323
로 파일 생성되게 했습니다.

xml 파일명은
남해 = ROMS_20181008 ~
동해 = EAST_20181008 ~
서해 = WEST_20181008 ~
제주 = JEJU_20181008 ~
------------------------

로그파일 줄인 모델셋 전달 181114

--------------------------
점, 면 디렉토리 변경
점기반 : 
모델링 홈 : /data/vibrio/modeling/MOD_POINT
csv 경로 : /data/vibrio/csv/point
xml 경로 : /data/vibrio/xml/point

면기반 : 
모델링 홈 : /data/vibrio/modeling/MOD_PLANE
csv 경로 : /data/vibrio/csv/range
xml 경로 : /data/vibrio/xml/range

--------------------------------------------

점기반 수정 2019-01-31

면기반 수정 2019-02-01
--------------------------------------------

점기반, 면기반 계수 조정 2019-02-12

---------------------------
2019-05-07
POINT : 구간 조정. 단계별 점수 일치화
PLANE : 조간대 구간 계수 변경
