---
title: ARTS第五十六周（2020年10月12日~18日）
date: 2020-10-18T22:12:39+08:00
slug: week-056
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|
| 349 | 简单 | [两个数组的交集](https://leetcode-cn.com/problems/intersection-of-two-arrays/) | [201019-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00349_intersection-of-two-arrays/201019-1.cpp) | 12 ms | 10.8 MB | 75.36% | 7.32% | [查看结果](https://leetcode-cn.com/submissions/detail/116785108/) |
| 350 | 简单 | [两个数组的交集 II](https://leetcode-cn.com/problems/intersection-of-two-arrays-ii/) | [201019-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00350_intersection-of-two-arrays-ii/201019-1.cpp) | 12 ms | 11 MB | 73.31% | 5.01% | [查看结果](https://leetcode-cn.com/submissions/detail/116785638/) |
| 352 | 困难 | [将数据流变为多个不相交区间](https://leetcode-cn.com/problems/data-stream-as-disjoint-intervals/) | [201019-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00352_data-stream-as-disjoint-intervals/201019-1.cpp) | 84 ms | 29.5 MB | 100.00% | 88.94% | [查看结果](https://leetcode-cn.com/submissions/detail/116786734/) |

## Review {{<permalink "review">}}

### 1. 如何确保互联网的可连通性 {{<permalink "review-1">}}

分享链接：[A Legislative Path to an Interoperable Internet](https://www.eff.org/deeplinks/2020/07/legislative-path-interoperable-internet)

本文提到，随着大公司的发展壮大，具有越来越多话语权的同时，其为了自身生存和利益，往往希望通过技术手段，限制用户访问竞争对手的服务，从而导致互联网服务之间的不连通。这有悖于互联网的初衷。而本文提到通过政府干预、立法等手段，反对大公司的垄断行为，从而让互联网得以保持连通性。

## Tip {{<permalink "tip">}}

### 1. Linux的帮助命令`man`的使用 {{<permalink "tip-1">}}

参考：[man(1) - Linux manual page](https://man7.org/linux/man-pages/man1/man.1.html)

Linux帮助可以分为如下9个类别：

1. Executable programs or shell commands
2. System calls (functions provided by the kernel)
3. Library calls (functions within program libraries)
4. Special files (usually found in /dev)
5. File formats and conventions, e.g. /etc/passwd
6. Games
7. Miscellaneous (including macro packages and conventions), e.g. man(7), groff(7)
8. System administration commands (usually only for root)
9. Kernel routines [Non standard]

不同类别可以有相同的命令名（或者说主题名），可以通过`man <编号> <命令名>`中的编号来指定查询具体内容。

例如：

```sh
man 1 printf
man 3 printf
```

上述两个命令，就分别查询shell命令和C语言中的printf。

此外，可以通过参数`-f`或`-k`来进行命令描述的搜索：

```sh
man -f printf
man -k printf
```

这对于查询C语言函数或内核函数是非常方便的。

## Share {{<permalink "share">}}

### 1. 数据工程师进阶路径 {{<permalink "share-1">}}

分享链接：[Awesome Data Engineering](https://awesomedataengineering.com/)

这个网页展示了从事数据工作所需要的一系列技术，串起来形成一条路径，路径的每个环节，都包括可选的书籍、课程、免费资源等。
