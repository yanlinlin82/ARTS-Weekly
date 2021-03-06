---
title: ARTS第二十七周（2020年3月23日~29日）
date: 2020-03-23T07:15:32+08:00
slug: week-027
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 210 | 中等 | [课程表 II](https://leetcode-cn.com/problems/course-schedule-ii/) | [200323-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00210_course-schedule-ii/200323-1.cpp) | 40 ms | 16.6 MB | [33.96%](https://leetcode-cn.com/submissions/detail/56076919/) |  |
| 211 | 中等 | [添加与搜索单词 – 数据结构设计](https://leetcode-cn.com/problems/add-and-search-word-data-structure-design/) | [200323-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00211_add-and-search-word-data-structure-design/200323-1.cpp) | 288 ms | 106.8 MB | [5.44%](https://leetcode-cn.com/submissions/detail/56077086/) |  |
| 212 | 困难 | [单词搜索 II](https://leetcode-cn.com/problems/word-search-ii/) | [200324-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00212_word-search-ii/200324-1.cpp) | 908 ms | 203.5 MB | [13.92%](https://leetcode-cn.com/submissions/detail/56370332/) |  |
| 213 | 中等 | [打家劫舍 II](https://leetcode-cn.com/problems/house-robber-ii/) | [200324-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00213_house-robber-ii/200324-1.cpp) | 4 ms | 9.8 MB | [64.13%](https://leetcode-cn.com/submissions/detail/56375195/) |  |
| 214 | 困难 | [最短回文串](https://leetcode-cn.com/problems/shortest-palindrome/) | [200326-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00214_shortest-palindrome/200326-2.cpp) | 8 ms | 8.5 MB | [61.12%](https://leetcode-cn.com/submissions/detail/56998152/) |  |

## Review {{<permalink "review">}}

### 1. GCC-10中的代码静态分析功能 {{<permalink "review-1">}}

分享链接：[Static analysis in GCC 10](https://developers.redhat.com/blog/2020/03/26/static-analysis-in-gcc-10/)

在即将正式发布的GCC-10中，将会推出“-fanalyzer”选项，该选项能够通过对代码的静态分析，在编译器，对诸如重复释放、内存泄露、资源泄露等问题进行警告。这对于C/C++程序，无疑是具有巨大帮助的。

### 2. JIT的缺陷 {{<permalink "review-2">}}

分享链接：[JITs are un-ergonomic](https://abe-winter.github.io/2020/03/28/jitu-brutus.html)

这篇文章对现在被普遍使用的JS JIT（即时编译）技术进行了一系列的评价，认为JIT会导致基准测试（benchmark）的结果的可参考性有限，也因此提出了一些相应的改进方向。

## Tip {{<permalink "tip">}}

### 1. 加速R包安装 {{<permalink "tip-1">}}

分享链接：

* [Faster R package installation](https://www.jumpingrivers.com/blog/faster-r-package-installation-rstudio/)
* [(Much) Faster Package (Re-)Installation via Caching](http://dirk.eddelbuettel.com/blog/2017/11/27/)

主要涉及的方法：

1. 配置`.Rprofile`，加入：`options(Ncpus = 9)`
2. `install.packages(..., Ncpus = 6)`
3. 使用ccache
4. 使用binary包

## Share {{<permalink "share">}}

### 1. C++20标准的新变化 {{<permalink "share-1">}}

分享链接：[Changes between C++17 and C++20 DIS](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2020/p2131r0.html)

这是今年将要正式发布的C++20标准，将要引入或去掉的各种语言特性。其中诸如概念（Concepts）、协程（Coroutines）、模块（Modules）等概念，将进一步改善C++代码的表达能力，值得关注和学习。
