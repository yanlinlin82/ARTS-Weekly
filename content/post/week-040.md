---
title: ARTS第四十周（2020年6月22日~28日）
date: 2020-06-27T01:53:30+08:00
slug: week-040
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 278 | 简单 | [第一个错误的版本](https://leetcode-cn.com/problems/first-bad-version/) | [200626-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00278_first-bad-version/200626-1.cpp) | 4 ms | 6 MB | [8.20%](https://leetcode-cn.com/submissions/detail/82223037/) |  |
| 279 | 中等 | [完全平方数](https://leetcode-cn.com/problems/perfect-squares/) | [200626-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00279_perfect-squares/200626-2.cpp) | 200 ms | 9 MB | [67.13%](https://leetcode-cn.com/submissions/detail/82252981/) |  |

## Review {{<permalink "review">}}

### 1. 匿名的好处 {{<permalink "review-1">}}

分享链接：[The value of Tor and anonymous contributions to Wikipedia](https://blog.torproject.org/the-value-of-anonymous-contributions-wikipedia)

近些年，越来越多人形成一种认识，我们需要通过逐步失去隐私，来换取生活的便利，也因此，似乎非匿名已是不可逆的大趋势。虽然隐私泄露造成的负面新闻至今仍未消除，并且经常发生，但我们出于安全等考虑，也会希望尽可能采取实名制，而非匿名方式。

然而，这篇文章所提及的，关于维基百科内容的统计结果，却讲述了另外的故事，基于匿名方式的条目撰写，却相比公开的撰写者，其内容质量更高，也似乎更中立。

## Tip {{<permalink "tip">}}

### 1. 远程传输文件 {{<permalink "tip-1">}}

分享链接：[SCP - Familiar, Simple, Insecure, and Slow](https://gravitational.com/blog/scp-familiar-simple-insecure-slow/)

这篇文章详细介绍了`scp`命令的原理、用法及缺点。指出了它虽然基于ssh协议，但其实并不安全。而应该使用`sftp`或`rsync`取代它。由于`sftp`需要学习相应的各个命令用法，所以`rsync`其实是一个更好的替代品，而且，`rsync`不仅安全，而且还能自适应地实现增量传输（同步），以确保性能最佳。

## Share {{<permalink "share">}}

### 1. 关于硬件性能测试及其调优的免费电子书 {{<permalink "share-1">}}

分享链接：[Draft of my perf book is ready!](https://easyperf.net/blog/2020/06/24/Draft-Of-Perf-Book)

这是Denis Bakhvalov即将发布的新书，作者前几天在其博客中宣布，将会以PDF形式，将该书完全免费地分发出来。该书从系统底层开发的角度，介绍了如何有针对性地进行性能分析和代码调优，非常值得关注高性能计算的开发者阅读。
