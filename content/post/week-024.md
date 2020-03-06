---
title: ARTS第二十四周（2020年3月2日~8日）
date: 2020-03-06T12:18:59+08:00
slug: week-024
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|

## Review {{<permalink "review">}}


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
