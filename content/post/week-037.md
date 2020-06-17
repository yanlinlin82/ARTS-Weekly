---
title: ARTS第三十七周（2020年6月1日~7日）
date: 2020-06-09T23:52:40+08:00
slug: week-037
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 242 | 简单 | [有效的字母异位词](https://leetcode-cn.com/problems/valid-anagram/) | [200609-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00242_valid-anagram/200609-1.cpp) | 8 ms | 7.3 MB | [92.66%](https://leetcode-cn.com/submissions/detail/77675882/) |  |
| 257 | 简单 | [二叉树的所有路径](https://leetcode-cn.com/problems/binary-tree-paths/) | [200609-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00257_binary-tree-paths/200609-1.cpp) | 4 ms | 13.9 MB | [87.97%](https://leetcode-cn.com/submissions/detail/77682369/) |  |
| 258 | 简单 | [各位相加](https://leetcode-cn.com/problems/add-digits/) | [200609-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00258_add-digits/200609-1.cpp) | 0 ms | 5.9 MB | [100.00%](https://leetcode-cn.com/submissions/detail/77683344/) |  |
| 260 | 中等 | [只出现一次的数字 III](https://leetcode-cn.com/problems/single-number-iii/) | [200609-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00260_single-number-iii/200609-1.cpp) | 32 ms | 11.8 MB | [9.67%](https://leetcode-cn.com/submissions/detail/77685185/) |  |

## Review {{<permalink "review">}}

### 1. 基于C++20实现类型安全的SQL {{<permalink "review-1">}}

分享链接：[C++20 and SQL - A Thin, Typesafe SQL Wrapper in C++20](https://www.codeproject.com/Articles/5269118/Cplusplus20-and-SQL-A-Thin-Typesafe-SQL-Wrapper-in)

SQL语言虽然简单易上手，但它在类型上不安全的特性，也常常被人诟病。过去在C++中，也有不同的实现，来确保相应的类型安全性。

现在在C++20标准支持下，也推出了更便利的使用方法。C++20中，允许对字符串追加一个后缀，来实现特定的功能（函数调用），这个特性可以帮助直接把某个SQL语句字符串，转化成相应的代码逻辑及其实例对象，还同时保证类型安全性。

## Tip {{<permalink "tip">}}

### 1. 如何对已经安装的R包进行地毯式地学习 {{<permalink "tip-1">}}

```r
library()             # 列出已经安装的所有R包
library(help = alr4)  # 列出某个R包的所有函数及帮助文档
browseVignettes()     # 列出所有R包的长篇教程文档
```

## Share {{<permalink "share">}}

### 1. 使用Pandas清洗数据 {{<permalink "share-1">}}

分享链接：

* [Part 1 - Introducing Jupyter and Pandas](https://www.codeproject.com/Articles/5269215/Introducing-Jupyter-and-Pandas)
* [Part 2 - Loading CSV and SQL Data into Pandas](https://www.codeproject.com/Articles/5269218/Loading-CSV-and-SQL-Data-into-Pandas)
* [Part 3 - Correcting Missing Data in Pandas](https://www.codeproject.com/Articles/5269222/Correcting-Missing-Data-in-Pandas)
* [Part 4 - Combining Multiple Datasets in Pandas](https://www.codeproject.com/Articles/5269226/Combining-Multiple-Datasets-in-Pandas)
* [Part 5 - Cleaning Data in a Pandas DataFrame](https://www.codeproject.com/Articles/5269227/Cleaning-Data-in-a-Pandas-DataFrame)
* [Part 6 - Reshaping Data in a Pandas DataFrame](https://www.codeproject.com/Articles/5269229/Reshaping-Data-in-a-Pandas-DataFrame)
* [Part 7 - Data Visualization using Seaborn and Pandas](https://www.codeproject.com/Articles/5269230/Data-Visualization-using-Seaborn-and-Pandas)

这是一个文章系列，可逐步带领读者熟悉Pandas包，并使用它实现常见的数据清洗及可视化操作。
