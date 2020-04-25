---
title: ARTS第三十周（2020年4月13日~19日）
date: 2020-04-19T23:28:22+08:00
slug: week-030
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 220 | 中等 | [存在重复元素 III](https://leetcode-cn.com/problems/contains-duplicate-iii/) | [200420-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00220_contains-duplicate-iii/200420-1.cpp) | 20 ms | 9.9 MB | [77.79%](https://leetcode-cn.com/submissions/detail/64346195/) |  |
| 221 | 中等 | [最大正方形](https://leetcode-cn.com/problems/maximal-square/) | [200420-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00221_maximal-square/200420-1.cpp) | 24 ms | 8.4 MB | [40.08%](https://leetcode-cn.com/submissions/detail/64347239/) |  |

## Review {{<permalink "review">}}

### 1. 不雇佣数据科学家的七个理由 {{<permalink "review-1">}}

文章链接：[7 Reasons To Not Hire a Data Scientist](https://learningwithdata.com/posts/tylerfolkman/7-reasons-not-to-hire-a-data-scientist/)

这篇文章以否定的反语，描述了如何真正发挥数据（科学家）价值：

1. You don’t have any data - 首先要获取到数据；
2. You don’t have the right data - 并且这些是正确的数据；
3. You don’t have a clear problem to solve - 更重要的，还要清晰地提出问题；
4. What you actually need is an analyst - 数据处理本身不是目的，有针对性的数据分析才是；
5. You’re not prepared for the true cost of a data scientist - 需要合适的配套预算，包括各种软硬件投入；
6. You’re expecting unicorns and rainbows - 需要接受数据分析中非预期不理想的那些常态结果
7. You don’t know how to hire a data scientist - 要知道怎么找到并雇佣数据科学家

## Tip {{<permalink "tip">}}

### 1. Gentoo安装软件包时自动修改配置 {{<permalink "tip-1">}}

使用Gentoo系统时，为保证系统稳定，对于一些比较新的软件包，被标记为`~amd64`，表示尚未通过较严格的测试。但有时的确需要安装少数这样的最新版本的软件包，于是，就需要去修改相应的配置文件（如`/etc/portage.accept_keywords`），手工指定这些软件包允许使用`~amd64`版本。但是遇到它需要依赖较多其他`~amd64`软件包时，手工修改的工作量就比较大了。

这个时候，可以使用命令参数`--autounmask`，比如：

```sh
$ emerge -av --autounmask XXX
```

该命令会列出所有需要修改的内容，并提示：

```
Would you like to add these changes to your config files? [Yes/No]
```

选择“yes”后，会生成候选的修改后的配置文件。之后通过如下命令合并即可：

```sh
$ etc-update
```

## Share {{<permalink "share">}}

### 1. 基于C++开发Web应用 {{<permalink "share-1">}}

软件库Wt：<https://www.webtoolkit.eu/wt/>

使用C++开发图形界面程序，离不开对特定软件库的依赖，并且大量工作都会消耗在界面细节的调整上。所以，一个可能的探索改进方向，是使用近年快速发展的前端技术，来降低界面开发维护的难度。这个软件库Wt就是基于这种理念进行的。
