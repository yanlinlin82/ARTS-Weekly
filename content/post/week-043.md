---
title: ARTS第四十三周（2020年7月13日~19日）
date: 2020-07-20T01:59:25+08:00
slug: week-043
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 292 | 简单 | [Nim游戏](https://leetcode-cn.com/problems/nim-game/) | [200720-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00292_nim-game/200720-1.cpp) | 820 ms | 5.7 MB | [8.49%](https://leetcode-cn.com/submissions/detail/89478121/) |  |
| 295 | 困难 | [数据流的中位数](https://leetcode-cn.com/problems/find-median-from-data-stream/) | [200720-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00295_find-median-from-data-stream/200720-2.cpp) | 436 ms | 41.9 MB | [12.22%](https://leetcode-cn.com/submissions/detail/89479122/) |  |

## Review {{<permalink "review">}}

### 1. 微软对远程办公的数据分析 {{<permalink "review-1">}}

分享链接：[Microsoft Analyzed Data on Its Newly Remote Workforce](https://hbr.org/2020/07/microsoft-analyzed-data-on-its-newly-remote-workforce)

由于疫情，很多公司被迫采取远程办公的模式。这篇文章，来自微软对其开展远程办公的实际情况，进行了数据收集及分析。对远程办公带来的各种好处和挑战，进行了数据方面的陈述与分析。比如，会议的时间有所缩短，这使得会议效率有所提高。这很可能成为将来的长期影响和策略。

## Tip {{<permalink "tip">}}

### 1. 为bash脚本提供详细的使用帮助信息 {{<permalink "tip-1">}}

分享链接：[Help message for shell scripts](https://samizdat.dev/help-message-for-shell-scripts/)

一个发布供他人使用的bash脚本，最好能够自带相应的使用说明。通常可以采用如下写法：

```sh
#!/bin/bash

if [ -z "$1" -o "$1" == "-h" ]; then
    echo "Help message"
    exit 1
fi

# other commands
```

如果需要写多行帮助文字，最简单的写法，就是写多个echo命令。

这篇帖子中给出了另一种简便的做法：

```sh
#!/bin/bash
###
### my-script — does one thing well
###
### Usage:
###   my-script <input> <output>
###
### Options:
###   <input>   Input file to read.
###   <output>  Output file to write. Use '-' for stdout.
###   -h        Show this message.

help() {
    sed -rn 's/^### ?//;T;p' "$0"
}
```

通过sed命令，直接从当前脚本文件中，提取`###`开头的行，进行内容显示。

## Share {{<permalink "share">}}

### 1. 关于深度学习训练 {{<permalink "share-1">}}

分享链接：[深度学习中模型训练效果不好的原因以及防止过拟合的方法](https://blog.csdn.net/weixin_46470894/article/details/107442548)

文章分享了导致深度学习模型训练效果不好的原因：

1. 是否选择合适的损失函数
2. 是否选择了合适的Mini-batch size
3. 是否选择了合适的激活函数
4. 是否选择了合适的学习率
5. 优化算法是否使用了动量（Momentum）
6. 其他原因
