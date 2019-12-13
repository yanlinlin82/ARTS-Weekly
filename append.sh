#!/bin/bash

if [ -z "$3" ]; then
	echo "Usage:   $0 <周数> <日期范围> <文件名>"
	echo "Example: $0 \"第十三周\" \"2019年12月16日~22日\" \"week-013.md\""
	exit 1
fi
if [ -e "$3" ]; then
	echo "Error: '$3' have existed!"
	exit 1
fi

echo "* [$1（$2）]($3)" >> README.md

cat<<END>$3
# 左耳听风ARTS$1（$2）

[返回目录](README.md#打卡记录)

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:-----|---------:|---------:|-----:|

## Review

## Tip

## Share

END
