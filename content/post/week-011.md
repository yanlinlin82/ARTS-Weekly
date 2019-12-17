---
title: ARTS第十一周（2019年12月2日~8日）
date: 2019-12-03T00:20:12+0800
slug: week-011
---

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

* [搜索旋转排序数组](https://leetcode-cn.com/problems/search-in-rotated-sorted-array/)：[我的解答](https://github.com/yanlinlin82/leetcode/blob/master/00033_search-in-rotated-sorted-array/191129-1.cpp)
* [在排序数组中查找元素的第一个和最后一个位置](https://leetcode-cn.com/problems/find-first-and-last-position-of-element-in-sorted-array/)：[我的解答](https://github.com/yanlinlin82/leetcode/blob/master/00034_find-first-and-last-position-of-element-in-sorted-array/191202-1.cpp)
* [搜索插入位置](https://leetcode-cn.com/problems/search-insert-position/)：[我的解答](https://github.com/yanlinlin82/leetcode/blob/master/00035_search-insert-position/191203-1.cpp)

## Review

[Implementation of Resizable Multidimensional Arrays in C++17](https://www.codeproject.com/Articles/5250544/Implementation-of-Resizable-Multidimensional-Array)

这是一篇技术文章，在C++中从头构建多维数组类型，并支持其数组大小可变。C++本身只支持一维数组（vector类型），而不支持多维数组。虽然可以使用嵌套的vector来实现类似效果，但这种方式每个层级不同元素之间的数组长度互相独立，其效果与科学计算中的矩阵和张量并不一致。这篇文章充分使用了恰当的内存布局和指针寻址方式，配合C++新标准的操作符重载与模板封装方法，来实现了所需的多维数组效果。其最终表现性能胜过vector的方式。且文章在介绍各个实现细节重点时，也讲解清楚，值得仔细阅读学习。

## Tip

**如何在Linux下对PDF文件进行减肥**

[Linux shell script to reduce PDF file size](https://bash.cyberciti.biz/file-management/linux-shell-script-to-reduce-pdf-file-size/)

本文提供了一个shell脚本，调用`gs`命令，对pdf中图片、meta信息等进行缩减，从而达到缩小PDF文件大小的目的。

## Share

[html提供的几种空格实体](https://github.com/haizlin/fe-interview/issues/293#issuecomment-559651206)

介绍了如下字符：

* `&nbsp;`或`&#x0020;`（不换行空格，no-break space）
* `&ensp;`（半角空格，en space）
* `&emsp;`（全角空格，em space）
* `&thinsp;`（窄空格，thin space）
* `&zwnj;`（零宽不连字，zero width non joiner）
* `&zwj;`（零宽连字，zero width joiner）
* `&#x0009;`（制表符）
* `&#x000A;`（换行）
* `&#x000D;`（回车）
* `&#12288;`
