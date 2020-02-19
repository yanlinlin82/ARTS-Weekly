---
title: ARTS第二十二周（2020年2月17日~23日）
date: 2020-02-18T09:07:04+08:00
slug: week-022
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 165 | 中等 | [比较版本号](https://leetcode-cn.com/problems/compare-version-numbers/) | [200218-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00165_compare-version-numbers/200218-1.cpp) | 4 ms | 8.5 MB | [68.39%](https://leetcode-cn.com/submissions/detail/47901677/) |
| 166 | 中等 | [分数到小数](https://leetcode-cn.com/problems/fraction-to-recurring-decimal/) | [200220-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00166_fraction-to-recurring-decimal/200220-1.cpp) | 4 ms | 8.8 MB | [74.73%](https://leetcode-cn.com/submissions/detail/48277400/) |
| 167 | 简单 | [两数之和 II - 输入有序数组](https://leetcode-cn.com/problems/two-sum-ii-input-array-is-sorted/) | [200220-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00167_two-sum-ii-input-array-is-sorted/200220-1.cpp) | 220 ms | 9.6 MB | [5.17%](https://leetcode-cn.com/submissions/detail/48277512/) |
| 168 | 简单 | [Excel表列名称](https://leetcode-cn.com/problems/excel-sheet-column-title/) | [200220-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00168_excel-sheet-column-title/200220-1.cpp) | 4 ms | 8.2 MB | [59.97%](https://leetcode-cn.com/submissions/detail/48278296/) |
| 169 | 简单 | [多数元素](https://leetcode-cn.com/problems/majority-element/) | [200220-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00169_majority-element/200220-1.cpp) | 20 ms | 11.3 MB | [79.09%](https://leetcode-cn.com/submissions/detail/48278388/) |
| 171 | 简单 | [Excel表列序号](https://leetcode-cn.com/problems/excel-sheet-column-number/) | [200220-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00171_excel-sheet-column-number/200220-1.cpp) | 4 ms | 8.3 MB | [79.18%](https://leetcode-cn.com/submissions/detail/48278416/) |

## Review {{<permalink "review">}}


## Tip {{<permalink "tip">}}

### 1. 如何修改gnome桌面的缺省文本编辑器 {{<permalink "tip-1">}}

在`~/.local/share/applications/`目录中创建文件`defaults.list`，写入如下内容：

```
[Default Applications]
text/plain=gvim.desktop  # 若改为vim.desktop，将使用终端vim（而非图形界面vim）
```

即可将缺省的gedit改为使用vim打开相应文本文件。

参考：<https://www.marksanborn.net/linux/making-gvim-your-default-text-editor-in-gnome/>

## Share {{<permalink "share">}}


