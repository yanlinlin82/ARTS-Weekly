---
title: ARTS第四十九周（2020年8月24日~30日）
date: 2020-08-27T22:04:11+08:00
slug: week-049
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|
| 318 | 中等 | [最大单词长度乘积](https://leetcode-cn.com/problems/maximum-product-of-word-lengths/) | [200827-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00318_maximum-product-of-word-lengths/200827-1.cpp) | 624 ms | 33.2 MB | 12.12% | 5.24% | [查看结果](https://leetcode-cn.com/submissions/detail/102312759/) |
| 319 | 中等 | [灯泡开关](https://leetcode-cn.com/problems/bulb-switcher/) | [200827-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00319_bulb-switcher/200827-2.cpp) | 0 ms | 5.9 MB | 100.00% | 85.02% | [查看结果](https://leetcode-cn.com/submissions/detail/102319565/) |

## Review {{<permalink "review">}}

### 1. 网络安全团队建设 {{<permalink "review-1">}}

分享链接：[How to organize your security team: The evolution of cybersecurity roles and responsibilities](https://www.microsoft.com/security/blog/2020/08/06/organize-security-team-evolution-cybersecurity-roles-responsibilities/)

这篇文章来自微软公司的博客，介绍了当今世界面临的网络威胁，以及在安全团队建设方面，应该考虑的主要方面，包括政策标准制定、安全体系架构、人员安全管理、应用开发、数据安全、认证识别、威胁事件监控等诸多方面。为安全团队建设提供了一个主体框架的概览。

## Tip {{<permalink "tip">}}

### 1. 文件查找命令 {{<permalink "tip-1">}}

分享链接：[Find command Exclude or Ignore Files (e.g. Ignore All Hidden .dot Files )](https://www.cyberciti.biz/faq/find-command-exclude-ignore-files/)

选择两类文件（逻辑或的关系）：

```sh
$ find . -type f \( -iname "*.c" -or -iname "*.asm" \)
```

排除某些文件（逻辑否）：

```sh
$ find . -type f \( -iname "*.txt" ! -iname ".*" \)
```

逻辑写法总结：

* 表达式：`( expr )`
* 逻辑“否”：`expr -not expr` 或 `! expr`
* 逻辑“与”：`expr1 -and expr2`
* 逻辑“或”：`expr1 -or expr2`

### 2. 将命令结果写入文件 {{<permalink "tip-2">}}

分享链接：[How to write the output into the file in Linux](https://www.cyberciti.biz/faq/how-to-write-the-output-into-the-file-in-linux/)

管道操作：

```sh
command > filename   # 新建（或覆盖）文件
command >> filename  # 追加文件
```

使用tee命令：

```sh
command | tee file.txt     # 新建（或覆盖）文件
command | tee -a file.txt  # 追加文件
```

原文中还给出了一个详尽的表格《I/O redirection summary for bash and POSIX shell》，列举了各类相关操作。

## Share {{<permalink "share">}}

### 1. Azure SQL学习教程 {{<permalink "share-1">}}

分享链接：

* [New Azure SQL Learning Tools help reduce the global technology skills gap](https://azure.microsoft.com/en-us/blog/new-azure-sql-learning-tools-help-reduce-the-global-technology-skills-gap/)
* [Azure fundamentals](https://docs.microsoft.com/en-us/learn/paths/azure-fundamentals/)

SQL Server升级到云的版本，Azure SQL，采用了同样的引擎，并提供了详细的学习路径的教程。
