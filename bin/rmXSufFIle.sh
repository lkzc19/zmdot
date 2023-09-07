#!/bin/bash

# 该脚本用于删除指定目录下指定后缀的文件
# 比如删除maven参数没下载成功成功的依赖 .lastUpdate文件
# 必须传入2个参数
# - 指定的目录
# - 指定的后缀

if [ $# -lt 2 ]
then
  echo Not Enough Argument!
  exit;
fi

target=`find $1 -name "*.$2"`

for item in $target; do
	rm $item;
done
