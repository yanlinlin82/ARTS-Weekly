---
title: ARTS第四十一周（2020年6月29日~7月5日）
date: 2020-06-29T08:02:38+08:00
slug: week-041
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|

## Review {{<permalink "review">}}


## Tip {{<permalink "tip">}}

### 1. 如何解决ggplot输出PDF时汉字显示不正常的问题 {{<permalink "tip-1">}}

这是在实际应用场景中遇到的问题，在输出一个图表到pdf文件，其中内容包含汉字时，出现了如下警告（通过`warnings()`查看到）：

```
In grid.Call.graphics(C_text, as.graphicsAnnot(x$label), ... :
  conversion failure on '汉字' in 'mbcsToSbcs': dot substituted for <xx>
```

该问题可以通过安装并装载一个R包进行解决：

```r
install.packages("emojifont")
library(emojifont)
```

参考链接：[R-help: display UTF8 characters in pdf](https://r.789695.n4.nabble.com/display-UTF8-characters-in-pdf-td4729577.html)

## Share {{<permalink "share">}}


