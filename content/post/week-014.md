---
title: ARTS第十四周（2019年12月23日~29日）
date: 2019-12-23T01:23:55+08:00
slug: week-014
---

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 45 | 困难 | [跳跃游戏 II](https://leetcode-cn.com/problems/jump-game-ii/) | [191223-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00045_jump-game-ii/191223-1.cpp) | 1568 ms | 10.1 MB | [5.05%](https://leetcode-cn.com/submissions/detail/40905412/) |
| 46 | 中等 | [全排列](https://leetcode-cn.com/problems/permutations/) | [191223-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00046_permutations/191223-1.cpp) | 24 ms | 11.8 MB | [20.64%](https://leetcode-cn.com/submissions/detail/40905629/) |
| 47 | 中等 | [全排列 II](https://leetcode-cn.com/problems/permutations-ii/) | [191224-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00047_permutations-ii/191224-1.cpp) | 944 ms | 151.2 MB | [5.05%](https://leetcode-cn.com/submissions/detail/41023428/) |
| 48 | 中等 | [旋转图像](https://leetcode-cn.com/problems/rotate-image/) | [191224-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00048_rotate-image/191224-1.cpp) | 8 ms | 8.9 MB | [59.36%](https://leetcode-cn.com/submissions/detail/41023784/) |
| 49 | 中等 | [字母异位词分组](https://leetcode-cn.com/problems/group-anagrams/) | [191225-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00049_group-anagrams/191225-1.cpp) | 36 ms | 17.6 MB | [99.34%](https://leetcode-cn.com/submissions/detail/41132632/) |
| 50 | 中等 | [Pow(x, n)  ](https://leetcode-cn.com/problems/powx-n/) | [191225-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00050_powx-n/191225-1.cpp) | 0 ms | 9.2 MB | [100.00%](https://leetcode-cn.com/submissions/detail/41133624/) |

## Review

### (1) [A Static Analysis Tool for C++](https://www.codeproject.com/Articles/5246833/A-Static-Analysis-Tool-for-Cplusplus) {#review-1}

这篇文章介绍了作者在其[Robust Services Core (RSC)](https://github.com/GregUtas/robust-services-core)项目中，关于C++静态分析工具的使用。

C++是一门很“庞大”的静态语言，以至于很多语言特性被滥用甚至误用。有很多书籍和博客文章，比如Scott Meyers写的《Effective C++》，会提供一些实践上建议遵循的原则，用以改善相应的代码编写。然而，这些原则也很多很零散，经常会被遗忘，所以，这里提到的“静态分析工具”，就能够帮助自动检查甚至更正操作。这对于越来越多、越来越大的C++项目，是很有价值的。

## Tip

### 在ps命令结果中进行grep时，如何去除grep本身 {#tip-1}

使用`ps -ef | grep XXX`查看某个命令是否正在运行时，常见的问题之一就是，该“grep XXX”也会出现在结果列表中。

过去我通常使用的方法是再接上一个“grep -v grep”将这条结果去除掉，例如：

```sh
$ ps -ef | grep chrome | grep -v grep
```

今天学习到另外一个方法，使用正则表达式，把该关键字分隔开，从而使该grep命令不会被grep出来：

```sh
$ ps -ef | grep '[c]hrom'
```

而更好的方式是使用`pgrep`命令：

```sh
$ pgrep -a chrome
```

**参考**： [Remove grep command while grepping using ps command](https://www.cyberciti.biz/tips/grepping-ps-output-without-getting-grep.html)

## Share

### (1) [MacTalk: 没必要互相 diss，聊聊面试礼仪](https://mp.weixin.qq.com/s/HlWxu6kEIZA8OA9WQ275eg) {#share-1}

这是来自“MacTalk”（也称作“卖桃者说”）公众号，池建强老师最新的一篇文章。

讲述了在公司面试过程中，应该遵循的一些基本礼仪。其中有些问题，是做技术的人容易犯的，因为技术做得好，多少会存在一些傲气。这篇文章对这方面的建议和提醒，是值得学习的。
