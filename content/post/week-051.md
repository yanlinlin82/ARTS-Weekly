---
title: ARTS第五十一周（2020年9月7日~13日）
date: 2020-09-17T23:45:07+08:00
slug: week-051
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|
| 328 | 中等 | [奇偶链表](https://leetcode-cn.com/problems/odd-even-linked-list/) | [200916-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00328_odd-even-linked-list/200916-1.cpp) | 24 ms | 9.3 MB | 8.59% | 93.71% | [查看结果](https://leetcode-cn.com/submissions/detail/108691444/) |
| 331 | 中等 | [验证二叉树的前序序列化](https://leetcode-cn.com/problems/verify-preorder-serialization-of-a-binary-tree/) | [200917-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00331_verify-preorder-serialization-of-a-binary-tree/200917-1.cpp) | 12 ms | 9.9 MB | 22.69% | 5.01% | [查看结果](https://leetcode-cn.com/submissions/detail/109090652/) |

## Review {{<permalink "review">}}

### 1. 使用Boost software license {{<permalink "review-1">}}

分享链接：[Why You Should Use the Boost Software License](https://pdimov.github.io/blog/2020/09/06/why-use-the-boost-license/)

这篇文章解释了，目前主流常用的MIT、Apache、BSD等许可协议存在的发布问题：要求带上协议文本文件。会增加使用该协议的麻烦。并相应解释并建议了，可以使用Boost软件许可协议。

## Tip {{<permalink "tip">}}

### 1. 指定HTML页面中某些资源进行预加载 {{<permalink "tip-1">}}

分享链接：[通过rel="preload"进行内容预加载](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Preloading_content)

```html
<head>
  <meta charset="utf-8">
  <title>JS and CSS preload example</title>

  <link rel="preload" href="style.css" as="style">
  <link rel="preload" href="main.js" as="script">

  <link rel="stylesheet" href="style.css">
</head>

<body>
  <h1>bouncing balls</h1>
  <canvas></canvas>

  <script src="main.js"></script>
</body>
```

## Share {{<permalink "share">}}

### 1. 免费在线电子书：Bayesian Methods for Hackers {{<permalink "share-1">}}

分享链接：

* <https://github.com/CamDavidsonPilon/Probabilistic-Programming-and-Bayesian-Methods-for-Hackers>
* <https://nbviewer.jupyter.org/github/CamDavidsonPilon/Probabilistic-Programming-and-Bayesian-Methods-for-Hackers/blob/master/Prologue/Prologue.ipynb>

### 2. 免费在线电子书：R Programming for Data Science {{<permalink "share-2">}}

分享链接：<https://bookdown.org/rdpeng/rprogdatascience/>

作者：Roger D. Peng
