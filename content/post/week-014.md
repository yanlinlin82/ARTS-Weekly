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

## Review


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


