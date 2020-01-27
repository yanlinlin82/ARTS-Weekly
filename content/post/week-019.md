---
title: ARTS第十九周（2020年1月27日~2月2日）
date: 2020-01-27T11:36:09+08:00
slug: week-019
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 84 | 困难 | [柱状图中最大的矩形](https://leetcode-cn.com/problems/largest-rectangle-in-histogram/) | [200127-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00084_largest-rectangle-in-histogram/200127-1.cpp) | 492 ms | 10.3 MB | [20.29%](https://leetcode-cn.com/submissions/detail/44588295/) |
| 85 | 困难 | [最大矩形](https://leetcode-cn.com/problems/maximal-rectangle/) | [200127-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00085_maximal-rectangle/200127-1.cpp) | 40 ms | 10.7 MB | [33.95%](https://leetcode-cn.com/submissions/detail/44597536/) |
| 86 | 中等 | [分隔链表](https://leetcode-cn.com/problems/partition-list/) | [200127-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00086_partition-list/200127-1.cpp) | 4 ms | 8.8 MB | [97.67%](https://leetcode-cn.com/submissions/detail/44599734/) |
| 87 | 困难 | [扰乱字符串](https://leetcode-cn.com/problems/scramble-string/) | [200128-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00087_scramble-string/200128-1.cpp) | 4 ms | 8.4 MB | [97.87%](https://leetcode-cn.com/submissions/detail/44677541/) |
| 88 | 简单 | [合并两个有序数组](https://leetcode-cn.com/problems/merge-sorted-array/) | [200128-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00088_merge-sorted-array/200128-1.cpp) | 4 ms | 8.8 MB | [92.24%](https://leetcode-cn.com/submissions/detail/44677609/) |
| 89 | 中等 | [格雷编码](https://leetcode-cn.com/problems/gray-code/) | [200128-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00089_gray-code/200128-1.cpp) | 8 ms | 9.4 MB | [55.37%](https://leetcode-cn.com/submissions/detail/44677854/) |

## Review {{<permalink "review">}}

### 1. 编程技术的变迁 {{<permalink "review-1">}}

文章链接：**[How is computer programming different today than 20 years ago?](https://medium.com/swlh/how-is-computer-programming-different-today-than-20-years-ago-9d0154d1b6ce)**

这篇文章的作者，对比了过去20年以来的编程技术变化，比如：

* 许多理论概念得以实现，甚至成为主流
* 对面向对象编程的追捧减少，涌现更多新的编程模式；实现上，人们更倾向于组合，而非继承
* 多线程等并行执行的技术成为普遍
* 垃圾回收机制成为许多语言的常规方法
* 软件包管理系统对于编程语言也变得重要，而非过去那种每个软件都需要手工下载编译安装
* 语言支持工具也变得丰富
* 程序可以运行在显卡上

### 2. 二次方程解的新推导方法 {{<permalink "review-2">}}

文章链接：**[A new way to make quadratic equations easy](https://www.technologyreview.com/s/614775/a-new-way-to-make-quadratic-equations-easy/)**

解二次方程，是个古老的问题，通常都是直接采用公式计算。然而这篇文章使用了一个新颖的方法，重新进行了推导，简化了推导过程。

## Tip {{<permalink "tip">}}

### 1. 命令行下列举所有隐藏文件 {{<permalink "tip-1">}}

如果使用通配符`.*`，会连同`.`和`..`一起被列出，想要排除它们，可以使用：

```sh
ls .[^.]*
```

文章链接：**[Linux / Unix Rsync Copy Hidden Dot Files and Directories Only](https://www.cyberciti.biz/faq/linux-unix-appleosx-bsd-rsync-copy-hidden-dot-files/)**

注：原文中还提供了另一种方式“`.??*`”，但这个会导致单字母文件名的隐藏文件不被包含进来。

### 2. 命令行管道的高级用法 {{<permalink "tip-2">}}

将标准输出和标准错误分别重定向到另外的命令：

```sh
some_command > >(/bin/cmd_for_stdout) 2> >(/bin/cmd_for_stderr)
```

将标准输出和标准错误分别写入文件，并且同时还在屏幕上展示：


```sh
(some_command 2>&1 1>&3 | tee errorlog ) 3>&1 1>&2 | tee stdoutlog
```

参考链接：<https://github.com/trimstray/the-book-of-secret-knowledge#pipe-stdout-and-stderr-to-separate-commands>

## Share {{<permalink "share">}}

### 1. Qt5 C++图形界面编程入门视频 {{<permalink "share-1">}}

视频链接：**[Qt5 C++ GUI Development Full Course For Beginners | C++ GUI](https://www.youtube.com/watch?v=Et_bgnJ_Hhg&feature=youtu.be)**

### 2. 精品资源汇集（the Book of Secret Knowledge） {{<permalink "share-2">}}

GitHub仓库地址：<https://github.com/trimstray/the-book-of-secret-knowledge>

提及的bash命令行相关的资源：

* <https://github.com/dylanaraps/pure-bash-bible>
* <https://github.com/jlevy/the-art-of-command-line>
