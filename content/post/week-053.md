---
title: ARTS第五十三周（2020年9月21日~27日）
date: 2020-09-22T12:45:49+08:00
slug: week-053
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|:-----|
| 337 | 中等 | [打家劫舍 III](https://leetcode-cn.com/problems/house-robber-iii/) | [200926-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00337_house-robber-iii/200926-2.cpp) | 64 ms | 34.8 MB | 8.83% | 5.04% | [查看结果](https://leetcode-cn.com/submissions/detail/111644925/) |  |
| 338 | 中等 | [比特位计数](https://leetcode-cn.com/problems/counting-bits/) | [200926-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00338_counting-bits/200926-1.cpp) | 12 ms | 7.8 MB | 28.24% | 59.79% | [查看结果](https://leetcode-cn.com/submissions/detail/111646831/) |  |

## Review {{<permalink "review">}}

### 1. 关于C/C++中的整型溢出问题 {{<permalink "review-1">}}

分享链接：[How expensive is integer-overflow trapping in C++?](https://lemire.me/blog/2020/09/23/how-expensive-is-integer-overflow-trapping-in-c/)

整数类型表示范围是有限制的，一旦超出范围，结果就很难确保正确。所以，比较恰当的做法是，终止程序。然而在C/C++中，要开启这样的检查（`-ftrapv`），却将牺牲很大的性能。

## Tip {{<permalink "tip">}}

### 1. Bash脚本相关的小技巧和建议 {{<permalink "tip-1">}}

分享链接：[TecMint: 10 Useful Tips for Writing Effective Bash Scripts in Linux](https://www.tecmint.com/useful-tips-for-writing-bash-scripts-in-linux/)

```sh
set -e  # 让脚本在遇到错误时退出
set -u  # 强制要求变量在使用前被赋值
```

* 尽量要写注释（说明命令目的）
* 尽量要封装函数
* 在引用变量时，尽量使用双引号

* 尽量使用`readonly`定义常量（静态变量）：

```sh
readonly passwd_file=”/etc/passwd”
readonly group_file=”/etc/group”
```


## Share {{<permalink "share">}}

### 1. CppCon 2020会议分享 {{<permalink "share-1">}}

分享链接：[CppCon 2020 Presentation Materials](https://github.com/CppCon/CppCon2020)

提供了今年CppCon会议的各演讲的幻灯片下载

### 2. 计算机相关警句 {{<permalink "share-2">}}

分享链接：[Alan J. Perlis: Epigrams on Programming](http://pu.inf.uni-tuebingen.de/users/klaeren/epigrams.html)

在书籍《C语言程序设计：现代方法（第2版）》的每章前，都会引用其中一个句子。

### 3. Python学习资源 {{<permalink "share-3">}}

分享链接：[Python Monday](http://damiantgordon.com/PythonMonday/)

每周一个主题，持续学习Python

### 4. 在线电子书《Tidy Modeling with R》 {{<permalink "share-4">}}

分享链接：[Tidy Modeling with R](https://www.tmwr.org/)
