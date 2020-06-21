---
title: ARTS第三十九周（2020年6月15日~21日）
date: 2020-06-21T07:50:12+08:00
slug: week-039
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 268 | 简单 | [缺失数字](https://leetcode-cn.com/problems/missing-number/) | [200620-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00268_missing-number/200620-1.cpp) | 36 ms | 17.2 MB | [84.64%](https://leetcode-cn.com/submissions/detail/80641889/) |  |
| 273 | 困难 | [整数转换英文表示](https://leetcode-cn.com/problems/integer-to-english-words/) | [200621-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00273_integer-to-english-words/200621-2.cpp) | 0 ms | 6.4 MB | [100.00%](https://leetcode-cn.com/submissions/detail/80677589/) |  |
| 274 | 中等 | [H 指数](https://leetcode-cn.com/problems/h-index/) | [200621-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00274_h-index/200621-1.cpp) | 4 ms | 8.9 MB | [89.97%](https://leetcode-cn.com/submissions/detail/80679028/) |  |
| 275 | 中等 | [H指数 II](https://leetcode-cn.com/problems/h-index-ii/) | [200621-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00275_h-index-ii/200621-1.cpp) | 40 ms | 17.9 MB | [68.90%](https://leetcode-cn.com/submissions/detail/80679098/) |  |

## Review {{<permalink "review">}}

### 1. 如何正确使用注释 {{<permalink "review-1">}}

分享链接：[Code Health: To Comment or Not to Comment?](https://testing.googleblog.com/2017/07/code-health-to-comment-or-not-to-comment.html)

有的地方不应该使用注释，注释暗示了代码需要更好地进行重构；有的地方，合理的注释，则有助于更清晰地表达出代码这么写的原因。

好的注释如：

```
// Compute once because it’s expensive.
```

```
// Create a new Foo instance because Foo is not thread-safe.
```

```
// Note that order matters because...
```

```
@SuppressWarnings("unchecked") // The cast is safe because...
```

## Tip {{<permalink "tip">}}

### 1. 带超时时间地运行命令 {{<permalink "tip-1">}}

分享链接：[Linux run a command with a time limit (timeout)](https://www.cyberciti.biz/faq/linux-run-a-command-with-a-time-limit/)

```sh
date
timeout 3s ping 192.168.1.1
date
```

第二个参数表示时间，可以用“s”、“m”、“h”或“d”后缀。到时间后，若程序没有执行完成，会接到KILL信号。

## Share {{<permalink "share">}}

### 1. 微软云上基于R语言的机器学习资源 {{<permalink "share-1">}}

分享链接：[Resources for Machine Learning Operations with R](https://github.com/revodavid/mlops-r)

该分享来自2020年RStudioConf，提供了微软Azure云上关于机器学习资源的介绍，并给出了详尽的文档和教程示例的链接。
