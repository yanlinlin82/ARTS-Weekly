---
title: ARTS第二十八周（2020年3月30日~4月5日）
date: 2020-04-02T00:43:53+08:00
slug: week-028
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 215 | 中等 | [数组中的第K个最大元素](https://leetcode-cn.com/problems/kth-largest-element-in-an-array/) | [200401-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00215_kth-largest-element-in-an-array/200401-1.cpp) | 20 ms | 10 MB | [47.17%](https://leetcode-cn.com/submissions/detail/59029964/) | 使用STL |
| 216 | 中等 | [组合总和 III](https://leetcode-cn.com/problems/combination-sum-iii/) | [200406-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00216_combination-sum-iii/200406-1.cpp) | 4 ms | 6.8 MB | [65.53%](https://leetcode-cn.com/submissions/detail/60314768/) |  |
| 217 | 简单 | [存在重复元素](https://leetcode-cn.com/problems/contains-duplicate/) | [200406-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00217_contains-duplicate/200406-1.cpp) | 64 ms | 19.5 MB | [34.98%](https://leetcode-cn.com/submissions/detail/60316509/) |  |

## Review {{<permalink "review">}}

### 1. 关于代码调试时的态度问题 {{<permalink "review-1">}}

分享链接：[When debugging, your attitude matters](https://jvns.ca/blog/debugging-attitude-matters/)

这篇文章的作者，在调试前端页面的CSS时，总结的心得。通常其他介绍调试的文章，都会讲述各种技术细节和技巧，而这篇文章更加重点突出调试时应保持好的态度，包括努力搞清底层原理，尤其CSS这样在不同浏览器之间很容易出现差异的技术中，更加需要细心，同时还应注意选择比较权威的帮助文档进行参考学习。

## Tip {{<permalink "tip">}}

### 1. 快速用sudo执行上一条命令 {{<permalink "tip-1">}}

当使用普通用户执行一条需要root权限的命令时，会收到如下错误提示：

```
Permission denied
```

这时候需要使用`sudo`命令重新执行一遍该命令。除了上翻命令历史并在前面加上`sudo`前缀外，还可以使用如下方式：

```sh
sudo !!
```

参考链接：<https://medium.com/better-programming/15-essential-linux-command-line-tips-and-tricks-95e2bfa2890f>

## Share {{<permalink "share">}}

### 1. C++20标准的参考卡片 {{<permalink "share-1">}}

分享链接：<https://www.bfilipek.com/2020/01/cpp20refcard.html>

浓缩到一页纸上的内容，对最主要的C++20标准的快速介绍。
