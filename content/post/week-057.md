---
title: ARTS第五十七周（2020年10月19日~25日）
date: 2020-10-22T10:53:52+08:00
slug: week-057
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|
| 355 | 中等 | [设计推特](https://leetcode-cn.com/problems/design-twitter/) | [201108-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00355_design-twitter/201108-1.cpp) | 316 ms | 20.2 MB | 9.92% | 61.35% | [查看结果](https://leetcode-cn.com/submissions/detail/121922135/) |
| 365 | 中等 | [水壶问题](https://leetcode-cn.com/problems/water-and-jug-problem/) | [201108-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00365_water-and-jug-problem/201108-2.cpp) | 0 ms | 6.2 MB | 100.00% | 12.18% | [查看结果](https://leetcode-cn.com/submissions/detail/121927093/) |

## Review {{<permalink "review">}}

### 1. 部署机器学习模型 {{<permalink "review-1">}}

分享链接：[How to put machine learning models into production](https://stackoverflow.blog/2020/10/12/how-to-put-machine-learning-models-into-production/)

平常大多数关于机器学习的教程和资料，都在介绍如何训练模型，对于模型的最终部署，提及得很少。这篇文章也提到，绝大多数（接近九成）的模型并未得到部署和应用。这篇文章针对部署中需要考虑的方方面面（诸如数据量、框架、工具、效率、反馈、迭代等）进行了介绍，在打算将某个模型进行应用时，应该进行提前考虑。

## Tip {{<permalink "tip">}}

### 1. 自动进行数据探索分析 {{<permalink "tip-1">}}

分享链接：[How to Automate Exploratory Analysis Plots](https://www.r-bloggers.com/2020/10/how-to-automate-exploratory-analysis-plots/)

本文介绍了R包`purrr`中`map()`函数的使用，并应用它，去批量处理数据集中不同字段，汇总信息，帮助数据探索分析：

```
library(ggplot2)
library(purrr)

plot_frequency <- function(x) {
    data %>% ... %>% ggplot(...) + geom_xxx() + ...
}

all_plots <- map(names, plot_frequency)
cowplot::plot_grid(plotlist = all_plots)
```

## Share {{<permalink "share">}}

### 1. 电子书《Tidy Modeling with R》 {{<permalink "share-1">}}

分享链接：[Tidy Modeling with R](https://www.tmwr.org/)

R语言除了绘图外，最重要的优势在于进行各类数据建模。这本电子书中包含了关于建模的常见R包和函数的介绍，尤其是`tidymodels`包，承袭`tidyXXX`系列的风格，使相关操作更加高效。

推荐自链接：<https://ortom.co.uk/r/2020/10/11/item-4-tidy-modelling-book-published.html>
