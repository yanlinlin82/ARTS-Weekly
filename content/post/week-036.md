---
title: ARTS第三十六周（2020年5月25日~31日）
date: 2020-05-31T11:27:25+08:00
slug: week-036
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 240 | 中等 | [搜索二维矩阵 II](https://leetcode-cn.com/problems/search-a-2d-matrix-ii/) | [200531-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00240_search-a-2d-matrix-ii/200531-1.cpp) | 168 ms | 10.8 MB | [37.77%](https://leetcode-cn.com/submissions/detail/75074761/) |  |
| 241 | 中等 | [为运算表达式设计优先级](https://leetcode-cn.com/problems/different-ways-to-add-parentheses/) | [200531-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00241_different-ways-to-add-parentheses/200531-1.cpp) | 8 ms | 11.8 MB | [56.05%](https://leetcode-cn.com/submissions/detail/75089162/) |  |

## Review {{<permalink "review">}}

### 1. 从编译角度去理解一个C++程序 {{<permalink "review-1">}}

分享链接：[Analyzing the Simplest C++ Program](https://oneraynyday.github.io/dev/2020/05/03/Analyzing-The-Simplest-C++-Program/)

通常我们在学习C++语言时，都把它当作一门高级语言来使用，虽然C++经常与C并列讨论，但其实我们很少像C语言般去考虑C++程序怎么跟对应的可执行文件组成部分相对应的。正因为如此，这篇文章显得很独特且有价值，它使用一个很简单的C++程序，深度解析其编译过程及结果，涉及到编译器和链接器背后，隐含加入的各种标识和相应代码。跟随该文章学习（并实际操作一遍），对于理解编译基本原理，以及C++语言的实现过程，是非常有帮助的。

## Tip {{<permalink "tip">}}

### 1. 管理并使用不同版本的R包 {{<permalink "tip-1">}}

分享链接：[Introduction to renv](https://rstudio.github.io/renv/articles/renv.html)

R语言的发展非常迅速，得益于大量R包的涌现和不断更新，但这也带来问题：有时候，R包之间并不能总是保持和谐，遇到冲突时，就得考虑分别使用某个包的不同版本。

在过去，有一个`packrat`包，尝试用互相隔离的技术手段，让同一系统下，能够安装不同版本的R包，在彼此隔离的环境中，分别安装不同的R包。在遇到（依赖）R包很多时，其下载安装过程相当耗时。目前最新的`renv`包，则能比较好地解决这个问题，让不同版本的R包在管理和使用起来变得更加方便。

## Share {{<permalink "share">}}

### 1. 两行JS代码实现的迷宫 {{<permalink "share-1">}}

分享链接：<https://github.com/nickyreinert/maze/blob/master/pseudo_maze.mini.html>

这两行代码的运行效果比较神奇，是一个关于随机数的不错的应用示例。与之相应的，有一篇文章：

[How to create a maze algorithm with JavaScript](https://medium.com/swlh/how-to-create-a-maze-with-javascript-36f3ad8eebc1)

几乎手把手地讲解怎么实现一个生成真正迷宫的程序。
