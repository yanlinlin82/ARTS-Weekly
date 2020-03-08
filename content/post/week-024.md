---
title: ARTS第二十四周（2020年3月2日~8日）
date: 2020-03-06T12:18:59+08:00
slug: week-024
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 187 | 中等 | [重复的DNA序列](https://leetcode-cn.com/problems/repeated-dna-sequences/) | [200227-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00187_repeated-dna-sequences/200227-1.cpp) | 116 ms | 24.8 MB | [35.91%](https://leetcode-cn.com/submissions/detail/49787908/) |
| 188 | 困难 | [买卖股票的最佳时机 IV](https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-iv/) | [200306-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00188_best-time-to-buy-and-sell-stock-iv/200306-2.cpp) | 1556 ms | 14.4 MB | [5.09%](https://leetcode-cn.com/submissions/detail/51572168/) |
| 189 | 简单 | [旋转数组](https://leetcode-cn.com/problems/rotate-array/) | [200308-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00189_rotate-array/200308-1.cpp) | 12 ms | 12.3 MB | [46.47%](https://leetcode-cn.com/submissions/detail/52047964/) |
| 190 | 简单 | [颠倒二进制位](https://leetcode-cn.com/problems/reverse-bits/) | [200308-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00190_reverse-bits/200308-1.cpp) | 4 ms | 8.2 MB | [81.88%](https://leetcode-cn.com/submissions/detail/52050003/) |
| 191 | 简单 | [位1的个数](https://leetcode-cn.com/problems/number-of-1-bits/) | [200308-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00191_number-of-1-bits/200308-1.cpp) | 8 ms | 8.3 MB | [29.45%](https://leetcode-cn.com/submissions/detail/52051284/) |

## Review {{<permalink "review">}}

### 1. 用FPGA加速压缩算法 {{<permalink "review-1">}}

分享链接：[Accelerating Compression with FPGAs](https://www.codeproject.com/Articles/5260032/Accelerating-Compression-with-FPGAs)

这是来自Intel公司的文章。Intel提供了一个名为“DPC++”的编译工具，能够生成oneAPI生成各种硬件平台上的相应代码，包括FPGA平台。这篇文章介绍了GZIP压缩算法，并用FPGA实现了其中的“Look in our history”、“Pick the best match”、“Write the result”、“Store the string”步骤，能够在单个时钟周期内完成，实测达到3.5GB/s的处理速度，压缩比34.2%。

### 2. 开源协议的未来 {{<permalink "review-2">}}

分享链接：[Computer Weekly: The future of open source licences is changing](https://www.computerweekly.com/feature/The-future-of-open-source-licences-is-changing)

这是《计算机周刊》上的一篇社论，主要谈论开源协议的一些发展趋势和未来。由于越来越多开源项目的开发者围绕其项目运营公司，而他们维护的项目，被云平台服务商直接使用，却得不到相应的回馈支持，这使得很多开源项目不得不修改其使用条款，从而变得不再“开源”。也因此，现在使用最多的软件许可协议，已经不再是开源GPL，而更多是MIT或Apache。

## Tip {{<permalink "tip">}}

### 1. 当`gnome-open`不能使用时 {{<permalink "tip-1">}}

最近重新安装gnome系统后，发现之前常用的`gnome-open`命令消失了。

该命令可用于在命令行下，根据文件的特定MIME类型，使用相应的程序打开该文件。

更一般的命令是：

```sh
$ xdg-open <文件>
```

**XDG**是“Cross-Desktop Group”的缩写。

参考：

* <https://askubuntu.com/questions/101965/what-is-the-replacement-for-gnome-open-in-gnome>
* <https://www.freedesktop.org/wiki/>

## Share {{<permalink "share">}}

### 1. 理解Bash中的协程 {{<permalink "share-1">}}

过去做并发编程的开发时，接触得比较多的概念，就是“进程（procedure）”和“线程（thread）”。然而，不知道从什么时候起，“协程（co-processes）”这个概念突然就遍布整个世界了。偶然翻看bash的man帮助信息时，发现竟然连bash都已经自带了关键词coproc的支持，于是抽空做了点研究学习。

链接：<https://yanlinlin.cn/tip/bash-coproc/>
