#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}

# copy sql
#echo "begin copy sql "
#cp ../sql/ry_20231130.sql ./mysql/db
#cp ../sql/quartz.sql ./mysql/db

# copy html
echo "begin copy html "
rm -rf ./nginx/html/dist/**
cp -r ../../RuoYi-Vue3/dist/** ./nginx/html/dist

# copy jar
echo "begin copy ruoyi "
cp ../target/ruoyi.jar ./ruoyi/jar
