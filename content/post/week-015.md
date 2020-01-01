---
title: ARTS第十五周（2019年12月30日~2020年1月5日）
date: 2019-12-30T00:22:24+08:00
slug: week-015
---

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 51 | 困难 | [N皇后](https://leetcode-cn.com/problems/n-queens/) | [191230-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00051_n-queens/191230-1.cpp) | 8 ms | 10.4 MB | [91.93%](https://leetcode-cn.com/submissions/detail/41676707/) |
| 52 | 困难 | [N皇后 II](https://leetcode-cn.com/problems/n-queens-ii/) | [191230-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00052_n-queens-ii/191230-1.cpp) | 4 ms | 8.1 MB | [90.65%](https://leetcode-cn.com/submissions/detail/41676923/) |
| 53 | 简单 | [最大子序和](https://leetcode-cn.com/problems/maximum-subarray/) | [191230-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00053_maximum-subarray/191230-1.cpp) | 464 ms | 9.2 MB | [5.73%](https://leetcode-cn.com/submissions/detail/41677377/) |
| 54 | 中等 | [螺旋矩阵](https://leetcode-cn.com/problems/spiral-matrix/) | [191231-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00054_spiral-matrix/191231-1.cpp) | 0 ms | 8.6 MB | [100.00%](https://leetcode-cn.com/submissions/detail/41792810/) |
| 55 | 中等 | [跳跃游戏](https://leetcode-cn.com/problems/jump-game/) | [191231-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00055_jump-game/191231-1.cpp) | 8 ms | 9.8 MB | [96.68%](https://leetcode-cn.com/submissions/detail/41793717/) |
| 56 | 中等 | [合并区间](https://leetcode-cn.com/problems/merge-intervals/) | [191231-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00056_merge-intervals/191231-1.cpp) | 24 ms | 12.3 MB | [71.76%](https://leetcode-cn.com/submissions/detail/41880438/) |
| 57 | 困难 | [插入区间](https://leetcode-cn.com/problems/insert-interval/) | [200101-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00057_insert-interval/200101-1.cpp) | 8 ms | 12.3 MB | [99.85%](https://leetcode-cn.com/submissions/detail/41914872/) |
| 58 | 简单 | [最后一个单词的长度](https://leetcode-cn.com/problems/length-of-last-word/) | [200101-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00058_length-of-last-word/200101-1.cpp) | 4 ms | 8.8 MB | [79.14%](https://leetcode-cn.com/submissions/detail/41915711/) |

## Review

### (1) 使用Python在GDB中帮助调试 {#review-1}

分享链接：[Python Interpreter in GNU Debugger](https://www.pythonsheets.com/appendix/python-gdb.html)

GNU Debugger（GDB）有丰富的命令帮助调试，同时也提供了自定义命令的方式，将已有命令组合起来，方便使用。然而，受限于原生命令的格式及功能，这种扩展能力也相对有限。这篇文章介绍了gdb内置的python接口，借助python语言，能够更加精细灵活地定制gdb的功能。

## Tip

### (1) 《[掘金：5行代码带你实现一个js的打字效果](https://juejin.im/post/5ddf55835188257313541581)》 {#tip-1}

```js
const dom = document.querySelector('.content')
const data = '最简单的打字效果代码'.split('')
    let index = 0
    function writing(index) {
        if (index < data.length) {
            dom.innerHTML += data[index]
            setTimeout(writing.bind(this), 200, ++index)
        }
    }
```

前端代码有时候的确很小巧精妙。这段代码，首先把字符串切分成一个个字符，然后利用定时器逐个追加到网页元素中，从而实现了打字效果。文中还在此基础上，进一步实现了光标闪烁、给汉字加拼音、加动画等效果。

### (2) GNU screen命令的分屏功能 {#tip-2}

由于经常使用远程服务器，本地Linux也经常有些想放在前台但又需要长时间运行的终端程序，于是平时使用GNU screen命令就比较多。知道它有分屏功能，但却一直没深入研究怎么使用，偶尔误操作将其呼唤出来，却苦于不熟悉操作，只好detach当前session并重新进入。今天简单研究了一下，觉得其实还挺有用的，尤其是在写某些代码的同时，又想在分屏中监控另外一些实时信息时。这里简单记录下相关的快捷键：

* 水平分屏：Ctrl-a Shift-s (Ctrl-a S)
* 垂直分屏：Ctrl-a Shift-\ (Ctrl-a |)
* 切换分屏：Ctrl-a Tab
* 切换窗口：Ctrl-a "
* 修改名称：Ctrl-a Shift-a (Ctrl-a A)
* 修改分屏大小：Ctrl-a :resize 10
* 关闭分屏：Ctrl-a Shift-x (Ctrl-a X)

需要注意：

* 分屏后，新产生的分屏处于没有内容没有响应的状态，需要切换到该分屏，然后在该分屏中使用“Ctrl-"”切换窗口。
* detach当前screen session后，分屏不会保留。

主要参考链接：

* [从Tmux 转到GNU Screen](https://www.cnblogs.com/bamanzi/p/switch-tmux-to-gnu-screen.html)
* [GNU Screen splitting](https://tomlee.co/2011/10/gnu-screen-splitting/)
* [StackExchange: How to split window vertically in GNU Screen?](https://unix.stackexchange.com/questions/26685/how-to-split-window-vertically-in-gnu-screen)
* [StackExchange: how to resize horizontally a screen region](https://unix.stackexchange.com/questions/30075/how-to-resize-horizontally-a-screen-region)

## Share

### (1) 《[步履蹒跚六十年：中文编程史话](https://mp.weixin.qq.com/s/ozvbgxQLBQftyGRSWIAQag)》 {#share-1}

这篇文章，来自前些天GitHub上热门的[文言编程项目](https://github.com/LingDong-/wenyan-lang)里，评论者中有人做的自荐。

文中提及了中国计算机产业发展历史上出现的各种中文编程相关的事件，从这些史料可以看出，当年也还是有不少人，在如何用中文进行编程这件事上，做出了认真思考的。

是否该使用中文进行编程，这是一直存在争议的问题。如果仅仅把一些关键字的翻译当作中文编程，那么的确没什么意义。但如果是结合语言文化特点，并将其理念融入到某些计算机执行逻辑中，体现到语法设计上，或许会成为某些创新点呢。很多现代语言，其实也是在突破旧语言的框架之后，才形成自己特色和优势的。
