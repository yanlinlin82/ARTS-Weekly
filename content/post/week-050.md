---
title: ARTS第五十周（2020年8月31日~9月6日）
date: 2020-09-15T23:08:53+08:00
slug: week-050
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|
| 322 | 中等 | [零钱兑换](https://leetcode-cn.com/problems/coin-change/) | [200915-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00322_coin-change/200915-1.cpp) | 92 ms | 13.7 MB | 84.54% | 46.60% | [查看结果](https://leetcode-cn.com/submissions/detail/108387332/) |
| 326 | 简单 | [3的幂](https://leetcode-cn.com/problems/power-of-three/) | [200915-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00326_power-of-three/200915-1.cpp) | 32 ms | 5.6 MB | 24.60% | 91.67% | [查看结果](https://leetcode-cn.com/submissions/detail/108391896/) |

## Review {{<permalink "review">}}

### 1. C++ concept archetypes {{<permalink "review-1">}}

分享链接：[Andrzej's C++ blog: Concept archetypes](https://akrzemi1.wordpress.com/2020/09/02/concept-archetypes/)

这篇文章介绍了在C++20标准中新引入的concept（概念），并从一个简单实例一步步从头实现，来展示了该新语言特性解决的问题。

## Tip {{<permalink "tip">}}

### 1. 获取github中某项目的最新发布路径 {{<permalink "tip-1">}}

分享链接：[How to download the latest GitHub repo release via command line](https://geraldonit.com/2019/01/15/how-to-download-the-latest-github-repo-release-via-command-line/)

通过如下命令，可以获取json，详细记录了某个repo最新的release的相关信息：

```
curl -s https://api.github.com/repos/gvenzl/csv2db/releases/latest
```

如下命令可以获取最新发布的版本（标签）：

```
curl -s https://api.github.com/repos/gvenzl/csv2db/releases/latest | grep "tag_name"
```

## Share {{<permalink "share">}}

### 1. Azure上的公共数据 {{<permalink "share-1">}}

分享链接：<https://azure.microsoft.com/en-us/services/open-datasets/catalog/>

其中包含：

* Machine Learning Samples: <https://azure.microsoft.com/en-us/services/open-datasets/catalog/ml-samples/>
* Genomics Data Lake: <https://azure.microsoft.com/en-us/services/open-datasets/catalog/genomics-data-lake/>
    * Illumina Platinum Genomes
    * Human Reference Genomes
    * ClinVar Annotations
    * Genome in a Bottle
