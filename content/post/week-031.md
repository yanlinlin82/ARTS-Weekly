---
title: ARTS第三十一周（2020年4月20日~26日）
date: 2020-04-25T10:14:51+08:00
slug: week-031
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 222 | 中等 | [完全二叉树的节点个数](https://leetcode-cn.com/problems/count-complete-tree-nodes/) | [200425-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00222_count-complete-tree-nodes/200425-1.cpp) | 84 ms | 31 MB | [5.11%](https://leetcode-cn.com/submissions/detail/65730908/) |  |
| 223 | 中等 | [矩形面积](https://leetcode-cn.com/problems/rectangle-area/) | [200425-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00223_rectangle-area/200425-1.cpp) | 12 ms | 5.9 MB | [60.28%](https://leetcode-cn.com/submissions/detail/65732408/) |  |
| 224 | 困难 | [基本计算器](https://leetcode-cn.com/problems/basic-calculator/) | [200425-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00224_basic-calculator/200425-1.cpp) | 8 ms | 8 MB | [99.16%](https://leetcode-cn.com/submissions/detail/65737926/) |  |

## Review {{<permalink "review">}}

### 1. 快速阅读的方法 {{<permalink "review-1">}}

文章链接：[How to Read a 240-Page Book in 2 Hours](https://thecopybot.com/read-book-two-hours/)

有的书需要快速阅读，如同这篇文章的标题提到的，两小时读完两百多页的书，这需要一些技巧。这篇文章给出了相应的建议。最重要的是把握住自己的节奏以及书的整体结构脉络。

## Tip {{<permalink "tip">}}

### 1. 如何从shell历史中排除某些命令使不做记录 {{<permalink "tip-1">}}

文章链接：[Tweaking history on Linux](https://www.networkworld.com/article/3537214/tweaking-history-on-linux.html)

通过配置环境变量`HISTIGNORE`，可以排除某些命令，使不记录进history：

```sh
echo 'HISTIGNORE="history:cd:exit:ls:pwd:man"' >> .bashrc
```

## Share {{<permalink "share">}}

### 1. 在Ubuntu上快速搭建VPN服务的方法 {{<permalink "share-1">}}

文章链接：[Ubuntu 20.04 LTS Set Up OpenVPN Server In 5 Minutes](https://www.cyberciti.biz/faq/ubuntu-20-04-lts-set-up-openvpn-server-in-5-minutes/)

时至今日，VPN应该算是日常必备工具了。然而，要自己搭建一个VPN服务，并不是一件特别容易的事情。这篇文章手把手地介绍了在Ubuntu上搭建VPN服务的方法。
