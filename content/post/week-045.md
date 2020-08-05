---
title: ARTS第四十五周（2020年7月27日~8月2日）
date: 2020-08-03T00:39:16+08:00
slug: week-045
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 303 | 简单 | [区域和检索 - 数组不可变](https://leetcode-cn.com/problems/range-sum-query-immutable/) | [200803-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00303_range-sum-query-immutable/200803-1.cpp) | 340 ms | 17.2 MB | [18.38%](https://leetcode-cn.com/submissions/detail/94041874/) |  |
| 304 | 中等 | [二维区域和检索 - 矩阵不可变](https://leetcode-cn.com/problems/range-sum-query-2d-immutable/) | [200803-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00304_range-sum-query-2d-immutable/200803-2.cpp) | 40 ms | 14.6 MB | [82.02%](https://leetcode-cn.com/submissions/detail/94322720/) |  |

## Review {{<permalink "review">}}

### 1. 网页前端视觉呈现方面应注意的问题 {{<permalink "review-1">}}

分享链接：[The 6 Most Common Accessibility Problems (and How to Fix Them)](https://blog.scottlogic.com/2020/07/02/6-most-common-accessibility-problems.html)

这是由WebAIM在百万个网站上统计得到的最常见的视觉呈现问题，包括：

* 低对比度文字（Low Contrast Text）
* 图片没有缺省文字（Missing Alternative Text for Images）
* 空链接或空按钮（Empty Links and Empty Buttons）
* 输入框缺少标示说明（Missing Form Input Labels）
* 缺少HTML页面语言定义（Missing Document Language）

在介绍这些常见问题的同时，本文也给出了相应的解决方法建议。

## Tip {{<permalink "tip">}}

### 1. 在命令行中处理日期 {{<permalink "tip-1">}}

具体操作如下所示：

```
$ date                         # 获取当前时间
$ date +%F                     # 获取当天日期，格式为YYYY-MM-DD
$ date +%s                     # 获取当前时间戳
$ date -d @$(date +%s)         # 见时间戳还原为日期
$ date "+%Y-%m-%d %H:%M:%S%z"  # 按特定格式显示完整详细时间（带时区）
```

## Share {{<permalink "share">}}

### 1. 用GO语言构建Web应用的教程 {{<permalink "share-1">}}

分享链接：[Build web application with golang](https://github.com/astaxie/build-web-application-with-golang)

这个GitHub仓库，提供了一份详尽的用GO语言构建Web应用的教程，而且提供了包括中文在内的多语言版本。
