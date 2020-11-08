---
title: ARTS第五十八周（2020年10月26日~11月1日）
date: 2020-11-08T18:29:28+08:00
slug: week-058
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|
| 367 | 简单 | [有效的完全平方数](https://leetcode-cn.com/problems/valid-perfect-square/) | [201108-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00367_valid-perfect-square/201108-1.cpp) | 0 ms | 6.2 MB | 100.00% | 5.15% | [查看结果](https://leetcode-cn.com/submissions/detail/121928015/) |
| 371 | 简单 | [两整数之和](https://leetcode-cn.com/problems/sum-of-two-integers/) | [201108-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00371_sum-of-two-integers/201108-1.cpp) | 0 ms | 6.2 MB | 100.00% | 5.10% | [查看结果](https://leetcode-cn.com/submissions/detail/121934354/) |

## Review {{<permalink "review">}}

### 1. 停止使用RSA {{<permalink "review-1">}}

分享链接：[Seriously, stop using RSA](https://blog.trailofbits.com/2019/07/08/fuck-rsa/)

基于大质数分解的RSA算法，曾经被大量应用于各种密钥系统。而如今，该算法已经成为一个非常脆弱的系统，不仅其弱参数很难甚至不可能被检查，其性能低下迫使开发人员采用危险的捷径。这篇文章详细解释了这些缺陷，并呼吁改用更加安全且已经成熟的椭圆曲线算法。

## Tip {{<permalink "tip">}}

### 1. 图形展示人数比例 {{<permalink "tip-1">}}

使用R包`personograph`：

```r
personograph(list(first = 0.93, second = 0.07),
             colors = list(first = "red", second = "blue"))
```

参考链接：[Lying with Statistics: One Beer a Day will Kill you!](https://blog.ephorie.de/lying-with-statistics-one-beer-a-day-will-kill-you)

上面这个链接本身，也值得阅读，展示了绝对比例和相对比值之间的差异，以及如何用这样的统计方法进行“欺骗”。

## Share {{<permalink "share">}}

### 1. 来自R语言的格言金句 {{<permalink "share-1">}}

分享链接：[R Fortunes: Collected Wisdom (PDF)](https://cloud.r-project.org/web/packages/fortunes/vignettes/fortunes.pdf)

上述链接来自R包`fortunes`，运行如下命令，将随机抽取并显示这些金句：

```r
library(fortunes)
fortune()
```
