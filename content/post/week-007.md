---
title: ARTS第七周（2019年11月4日~10日）
date: 2019-11-10T23:43:41+0800
slug: week-007
---

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

* [合并K个排序链表](https://github.com/yanlinlin82/leetcode/blob/master/00023_merge-k-sorted-lists/191106-1.cpp)

## Review

[Cache consistency and the C++ memory model: Writing code for real hardware](https://corecppil.github.io/Meetups/2019-10-24_Core_C++_Octoberfest/Memory_Model_Code-dive.pdf)

这是[Core C++ Octoberfest](https://corecppil.github.io/Meetups/)活动中分享的一个幻灯片：《[Cache Consistency and the C++ Memory Model: Writing Code to Real Hardware](https://corecppil.github.io/Meetups/2019-10-24_Core_C++_Octoberfest/Memory_Model_Code-dive.pdf)》（演讲者：Yossi Moalem）

从这个幻灯片中，我更加深入地学习到计算机高级语言的命令，其先后顺序并不总是与源码完全一致的，这是充分利用计算机CPU流水线等特性，来提升运行效率的实践。然而这却为并行化的代码带来了更多难度和麻烦。C++语言标准本身为解决这些冲突问题，让代码能够按照预期的行为执行，是需要从底层给予支持的。

## Tip

在R语言中，如何比较优雅地载入很多个包？

方法1：

摘自：<https://jozef.io/r204-spark-r-invoke-scala/>

```
suppressPackageStartupMessages({
  library(sparklyr)
  library(dplyr)
  library(nycflights13)
})
```

方法2：

摘自：<https://heads0rtai1s.github.io/2019/11/07/tidy-curly-pivot-leaflet/>

```
libs <- c('dplyr', 'tidyr',          # wrangling
          'readr', 'stringr',        # wrangling
          'knitr','kableExtra',      # table styling
          'ggplot2','gridExtra',     # plots
          'leaflet')                 # interactive maps
invisible(lapply(libs, library, character.only = TRUE))
```

## Share

[How C program stored in RAM memory?](https://dev.to/visheshpatel/how-c-program-stored-in-ram-memory-3773)

这篇文章比较基础，介绍了一个普通的C程序的基本结构，以及它在运行过程中，是如何被存放到内存中的。详细介绍了代码段、数据段、堆（heap）段、栈（stack）段的内容与特点，同时，还以一个简单的实际例子，使用`readelf`和`objdump`工具进行了展示。
