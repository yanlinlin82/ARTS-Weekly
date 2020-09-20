---
title: ARTS第五十二周（2020年9月14日~20日）
date: 2020-09-19T07:20:46+08:00
slug: week-052
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|
| 332 | 中等 | [重新安排行程](https://leetcode-cn.com/problems/reconstruct-itinerary/) | [200919-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00332_reconstruct-itinerary/200919-1.cpp) | 52 ms | 13.7 MB | 86.04% | 93.79% | [查看结果](https://leetcode-cn.com/submissions/detail/109399307/) |
| 334 | 中等 | [递增的三元子序列](https://leetcode-cn.com/problems/increasing-triplet-subsequence/) | [200919-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00334_increasing-triplet-subsequence/200919-1.cpp) | 8 ms | 9.5 MB | 90.57% | 74.48% | [查看结果](https://leetcode-cn.com/submissions/detail/109399752/) |

## Review {{<permalink "review">}}

### 1. 关于计算规模与安全性 {{<permalink "review-1">}}

参考链接：[Small Computing and the Security Mindset](http://www.lord-enki.net/medium-backup/2020-09-18_Small-Computing-and-the-Security-Mindset-821dfb512aa7.html)

本文提出了一个“小计算（Small Computing）”的概念，认为现今主流的计算发展趋势都是“大计算（Big Computing）”。后者带来了很多复杂性，和安全性上的缺陷，而小计算因其相对单一或简单，在安全上会更有优势。

## Tip {{<permalink "tip">}}

### 1. 更改Pandas中的列名 {{<permalink "tip-1">}}

参考链接：[How to rename columns in pandas dataframe](https://www.listendata.com/2020/09/How-to-rename-columns-in-Pandas.html)

```python
import pandas as pd
df = pd.read_csv("https://raw.githubusercontent.com/JackyP/testing/master/datasets/nycflights.csv", usecols=range(1,17))

df2 = df.rename(columns={'year':'years'})

df.rename(columns={'year':'years'}, inplace = True)
```

## Share {{<permalink "share">}}

### 1. GitHub Repo: TidyTuesday {{<permalink "share-1">}}

链接：[TidyTuesday: A weekly social data project in R](https://github.com/rfordatascience/tidytuesday)

提供了一些公开的数据集，用于数据处理相关练习。

此外，还提供了一些不错的电子书、数据源等链接。
