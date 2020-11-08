---
title: ARTS第五十九周（2020年11月2日~8日）
date: 2020-11-08T18:29:30+08:00
slug: week-059
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|
| 383 | 简单 | [赎金信](https://leetcode-cn.com/problems/ransom-note/) | [201108-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00383_ransom-note/201108-1.cpp) | 40 ms | 9.2 MB | 55.84% | 5.04% | [查看结果](https://leetcode-cn.com/submissions/detail/121940016/) |
| 384 | 中等 | [打乱数组](https://leetcode-cn.com/problems/shuffle-an-array/) | [201108-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00384_shuffle-an-array/201108-1.cpp) | 228 ms | 88.8 MB | 19.48% | 5.23% | [查看结果](https://leetcode-cn.com/submissions/detail/121941505/) |

## Review {{<permalink "review">}}

### 1. CSV格式的优劣 {{<permalink "review-1">}}

分享链接：[CSVs: The good, the bad, and the ugly](https://alexgaynor.net/2020/sep/24/csv-good-bad-ugly/)

在日常工作中，CSV是我常用的格式之一（当然，相比而言，我个人更喜欢TSV些）。然而，不管哪种格式，都难免存在一些需要“特殊处理”的地方，产生又爱又恨的感觉。这篇文章列举了CSV格式的各种优缺点，并总结“其他任何格式都没能在保持CSV相应优点的同时解决了它的缺点”。也因此，这些格式势必会较长时间存在于我们的日常工作中。

## Tip {{<permalink "tip">}}

### 1. 使用R包`future`延迟计算 {{<permalink "tip-1">}}

分享链接：[[GitHub] future: Unified Parallel and Distributed Processing in R for Everyone](https://github.com/HenrikBengtsson/future)

在R语言中，大括号包含的语句块，通常是被直接执行的，如：

```r
> v <- {
+   cat("Hello world!\n")
+   3.14
+ }
Hello world!
> v
[1] 3.14
```

然而，通过引入`future`包的使用，可以将该计算延迟到真正需要时才执行，如（将`<-`替换为`%<-%`）：

```r
> library("future")
> v %<-% {
+   cat("Hello world!\n")
+   3.14
+ }
> v
Hello world!
[1] 3.14
```

R语言具备的如此灵活性，给R语言带来了极强的扩展性和强大的生命力。

## Share {{<permalink "share">}}

### 1. 快速学习PCA的教程资料 {{<permalink "share-1">}}

分享链接：[All you need to know on PCA …](https://francoishusson.wordpress.com/2020/02/28/all-you-need-to-know-on-pca/)

在高维数据处理中，主成分分析（PCA）是最常用的数据降维方法。在这篇文章中，推荐了一个名为“Factoshiny”的R包，并且通过三段视频，对PCA相关的理论知识和实践进行了介绍。
