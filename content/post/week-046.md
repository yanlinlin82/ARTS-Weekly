---
title: ARTS第四十六周（2020年8月3日~9日）
date: 2020-08-06T08:06:03+08:00
slug: week-046
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|:-----|
| 306 | 中等 | [累加数](https://leetcode-cn.com/problems/additive-number/) | [200805-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00306_additive-number/200805-1.cpp) | 4 ms | 6.2 MB | 58.78% | 50.00% | [查看结果](https://leetcode-cn.com/submissions/detail/95136398/) |  |
| 307 | 中等 | [区域和检索 - 数组可修改](https://leetcode-cn.com/problems/range-sum-query-mutable/) | [200806-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00307_range-sum-query-mutable/200806-1.cpp) | 280 ms | 19.3 MB | 24.80% | 91.43% | [查看结果](https://leetcode-cn.com/submissions/detail/95174839/) |  |

## Review {{<permalink "review">}}

### 1. 疫情期间在家教育孩子的六条建议 {{<permalink "review-">}}

分享链接：[6 Tips for Schooling Multiple Ages at Home](https://www.lifesavvy.com/34199/6-tips-for-schooling-multiple-ages-at-home/)

这篇文章似乎跟IT无关，但其思路，却有可能应用于相关的工作领域。疫情制造了大量在家办公的机会，同时也同样制造了大量在家由家长亲自教育孩子的时间。这篇文章给了相应的六点建议，在操作上，其中也包括使用诸如Trello等工具帮助进行记录和整理。其建议包括：

* 制定计划（Make a Plan）
* 安排作业和任务（Organize Assignments and Tasks）
* 对相似主题进行分组（Group Similar Topics）
* 寻找独立的任务（Look for Independent Tasks）
* 因材施教（Cater to Each Child’s Learning Style）
* 让孩子传帮带（Have Older Siblings Teach Younger Kids）

## Tip {{<permalink "tip">}}

### 1. 带颜色地显示man帮助信息 {{<permalink "tip-1">}}

分享链接：[How to Display man Pages in Color on Linux](https://www.howtogeek.com/683134/how-to-display-man-pages-in-color-on-linux/)

在`.bashrc`中加入如下代码即可：

```sh
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[45;93m' \
    LESS_TERMCAP_se=$'\e[0m' \
    command man "$@"
}
```

## Share {{<permalink "share">}}

### 1. 动画展示GPT3的原理 {{<permalink "share-1">}}

分享链接：[How GPT3 Works - Visualizations and Animations](https://jalammar.github.io/how-gpt3-works-visualizations-animations/)

最近GPT3比较火，因为它写出了一篇关于自己的论文，再次让我们看到了AI的强大。这篇文章用了多个动画，展示其基本原理。
