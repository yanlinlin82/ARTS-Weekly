---
title: ARTS第二十六周（2020年3月16日~22日）
date: 2020-03-17T12:44:35+08:00
slug: week-026
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 203 | 简单 | [移除链表元素](https://leetcode-cn.com/problems/remove-linked-list-elements/) | [200317-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00203_remove-linked-list-elements/200317-1.cpp) | 24 ms | 15.4 MB | [68.40%](https://leetcode-cn.com/submissions/detail/54392137/) |  |
| 204 | 简单 | [计数质数](https://leetcode-cn.com/problems/count-primes/) | [200317-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00204_count-primes/200317-1.cpp) | 116 ms | 7.8 MB | [42.94%](https://leetcode-cn.com/submissions/detail/54411210/) |  |
| 205 | 简单 | [同构字符串](https://leetcode-cn.com/problems/isomorphic-strings/) | [200317-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00205_isomorphic-strings/200317-1.cpp) | 4 ms | 8.9 MB | [99.63%](https://leetcode-cn.com/submissions/detail/54414390/) |  |
| 206 | 简单 | [反转链表](https://leetcode-cn.com/problems/reverse-linked-list/) | [200317-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00206_reverse-linked-list/200317-1.cpp) | 48 ms | 9.7 MB | [7.96%](https://leetcode-cn.com/submissions/detail/54420876/) | 递归法 |
| 206 | 简单 | [反转链表](https://leetcode-cn.com/problems/reverse-linked-list/) | [200317-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00206_reverse-linked-list/200317-2.cpp) | 4 ms | 9.7 MB | [96.26%](https://leetcode-cn.com/submissions/detail/54425920/) | 迭代法 |
| 207 | 中等 | [课程表](https://leetcode-cn.com/problems/course-schedule/) | [200317-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00207_course-schedule/200317-1.cpp) | 8 ms | 16.1 MB | [100.00%](https://leetcode-cn.com/submissions/detail/54433140/) |  |
| 208 | 中等 | [实现 Trie (前缀树)](https://leetcode-cn.com/problems/implement-trie-prefix-tree/) | [200318-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00208_implement-trie-prefix-tree/200318-1.cpp) | 184 ms | 129.9 MB | [8.90%](https://leetcode-cn.com/submissions/detail/54644476/) |  |
| 209 | 中等 | [长度最小的子数组](https://leetcode-cn.com/problems/minimum-size-subarray-sum/) | [200322-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00209_minimum-size-subarray-sum/200322-1.cpp) | 12 ms | 11.6 MB | [67.01%](https://leetcode-cn.com/submissions/detail/55783246/) | 双指针法 |

## Review {{<permalink "review">}}

### 1. C++中的多线程编程 {{<permalink "review-1">}}

分享链接：

* [Exploring Multi-Threading in C++](http://mikeadev.net/2019/10/exploring-multi-threading-in-c/)
    * [Part 1: Exploring Multi-Threading in C++](http://mikeadev.net/2019/10/exploring-multi-threading-in-c/)
    * [Part 2: Exploring Multi-Threading in C++ Cont.](http://mikeadev.net/2019/10/exploring-multi-threading-in-c-part-2/)
    * [Part 3: Exploring Multi-Threading in C++: Loading Textures](http://mikeadev.net/2019/11/exploring-multi-threading-in-c-loading-textures/)
    * [Part 4: Exploring Multi-Threading in C++: Parallelizing Ray Tracing](http://mikeadev.net/2019/11/parallelizing-ray-tracing/)

这是关于C++多线程编程的一个系列文章。开始以Pi数值计算为例，后来以图像纹理处理为例，介绍了现代C++（新标准中引入的相关支持）中，如何更高效且安全地开发出多线程程序。

### 2. 软件行业的创业中的23条建议 {{<permalink "review-2">}}

分享链接：[23 rules to run a software startup with minimum hassle](https://www.joisig.com/rules-software-startup-minimum-hassle)

这是CrankWheel公司的创始人，结合其自己的经历教训，给出的关于软件行业的初创过程中，应该避免的各类问题的建议。

## Tip {{<permalink "tip">}}

### 1. 关于文本文件处理的两个小问题 {{<permalink "tip-1">}}

这是在一门Linux入门课上有人提出的问题：

* 处理文件时，如果每行的字段数量不确定，可以用cut 提取每行最后一个字段吗？
* cut -d使用的分隔符只能是单字符吗？有没有命令可以使用连续多个字符作为分隔？

我给出的解答如下：

`cut`命令可以通过`-d`参数指定分隔符，但的确要求为单字符：

```sh
$ echo abcdefg | cut -d'd' -f2  # 以'd'为分隔符，可以正确执行
efg

$ echo abcdefg | cut -d'cd' -f2  # 尝试以'cd'为分隔符，报错
cut: the delimiter must be a single character
Try 'cut --help' for more information.
```

这时候，推荐使用最强大的`awk`命令：

```sh
$ echo abcdefg | awk -F'cd' '{print$2}'  # awk的-F参数，可以指定一个多字符的字符串
efg

$ echo a1b2c3d | awk -F'[0-9]' '{print $2,$3}' # 该分隔字符串，甚至可以使用正则表达式，以同时匹配多种不同分隔符
b c
```

对于第一个问题（提取每行最后一个字段），当然也是awk可以轻松解决：

```sh
$ echo 'a,bc,def,123' | awk -F',' '{print$NF}'  #
这里NF代表每行中的字段数，这一行用逗号分隔后有4个字段，所以“$NF”就相当于“$4”，即选出了最后一个字段
123
```

## Share {{<permalink "share">}}

### 1. 关于浮点数 {{<permalink "share-1">}}

在计算机数值表示中，最重要但通常又是很惹人头疼的问题之一，便是浮点数。

浮点数的存储，是存在国际标准的，目前广泛使用的是IEEE 754，它最后修改于2008年。

在wikipedia上的几个重要词条，对此进行了详细介绍：

* <https://en.wikipedia.org/wiki/Floating-point_arithmetic>
* <https://en.wikipedia.org/wiki/IEEE_754-2008_revision>
* <https://en.wikipedia.org/wiki/Half-precision_floating-point_format>
* <https://en.wikipedia.org/wiki/Single-precision_floating-point_format>
* <https://en.wikipedia.org/wiki/Double-precision_floating-point_format>

此外，有一个网页，交互式地展示了二进制位与浮点数值之间的对应关系：

* <http://evanw.github.io/float-toy/>
