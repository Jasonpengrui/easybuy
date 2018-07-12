#!/bin/bash
##########################################################################################################
#Target Table : dwb.dwb_pg_buffer_rdht__top_vocabulary_day
#Source Table : sdf.sdf_pg_buffer_rdht__top_vocabulary_day             
#Interface Name : 词包表
#Refresh Frequency : per_day 每天处理
#Refresh Mode : 增量
#修改人       修改时间     修改原因  
#-------     -----------   -------------------
#peng.rui    2018-06-06    新建
###########################################################################################################

if [ $# == 2 ] ; then
  date="$1"  #处理数据的日期
  DWBDB="$2"   #目标表数据库
else
  date=`date -d -1days +%Y%m%d`
  DWBDB=dwb
fi
echo "date:${date},DWBDB=${DWBDB}"

#User Varriable Section
TARGET_TABLE=dwb_pg_buffer_rdht__top_vocabulary_day
#脚本运行开始时间
START_DATE=`date +"%Y-%m-%d %H:%M:%S"`

############################表结构定义################################
#hive -e"
#use ${DWBDB};
#create table if not exists ${DWBDB}.${TARGET_TABLE} 
#(
#	database_name string,
#	id string,
#	vocabulary_id string,
#	vocabulary_name string,
#	bid_date string,
#	base_price string,
#	job_count string,
#	create_date string,
#	modify_date string,
#	baseprice_job_no string
#) 
#partitioned by (dt string)
#stored as orc;"


echo "创建目标表"
hive -e"
use ${DWBDB};
create table if not exists ${DWBDB}.${TARGET_TABLE} 
(
	database_name string,
	id string,
	vocabulary_id string,
	vocabulary_name string,
	bid_date string,
	base_price string,
	job_count string,
	create_date string,
	modify_date string,
	baseprice_job_no string
) 
partitioned by (dt string)
stored as orc;"

if [ $? -ne 0 ];then
      echo "创建表模型${DWBDB}.${TARGET_TABLE} error"
    exit 1
fi


#################################数据处理,每日增量#################################
echo "加载${TARGET_TABLE} 每日增量"

hive -e"
use ${DWBDB};
insert overwrite table ${DWBDB}.${TARGET_TABLE} partition (dt='$date')
select 
	database_name,
	id,
	vocabularyid,
	vocabularyname,
	biddate,
	baseprice,
	jobcount,
	createdate,
	modifydate,
	basepricejobnumber
from
	sdf.sdf_pg_buffer_rdht__top_vocabulary_day
where dt='${date}'
"

if [ $? -ne 0 ];then
      echo "加载 ${DWBDB}.${TARGET_TABLE} error"
    exit 1
fi

###############################监控处理################################
#脚本运行结束时间
END_DATE=`date +"%Y-%m-%d %H:%M:%S"`
START_DATE_SECONDS=$(date --date="$START_DATE" +%s)
END_DATE_SECONDES=$(date --date="$END_DATE" +%s)

echo "开始时间:$START_DATE|结束时间:$END_DATE"
echo "运行时长:$(($END_DATE_SECONDES-$START_DATE_SECONDS))"