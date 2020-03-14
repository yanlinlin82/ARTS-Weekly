---
title: ARTS第二十五周（2020年3月9日~15日）
date: 2020-03-13T13:44:20+08:00
slug: week-025
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 192 | 中等 | [统计词频](https://leetcode-cn.com/problems/word-frequency/) | [200313-1.sh](https://github.com/yanlinlin82/leetcode/blob/master/00192_word-frequency/200313-1.sh) | 4 ms | 3.3 MB | [70.77%](https://leetcode-cn.com/submissions/detail/53362288/) |
| 193 | 简单 | [有效电话号码](https://leetcode-cn.com/problems/valid-phone-numbers/) | [200313-1.sh](https://github.com/yanlinlin82/leetcode/blob/master/00193_valid-phone-numbers/200313-1.sh) | 0 ms | 3.1 MB | [100.00%](https://leetcode-cn.com/submissions/detail/53363242/) |
| 194 | 中等 | [转置文件](https://leetcode-cn.com/problems/transpose-file/) | [200313-1.sh](https://github.com/yanlinlin82/leetcode/blob/master/00194_transpose-file/200313-1.sh) | 8 ms | 3.6 MB | [87.10%](https://leetcode-cn.com/submissions/detail/53364598/) |
| 195 | 简单 | [第十行](https://leetcode-cn.com/problems/tenth-line/) | [200313-1.sh](https://github.com/yanlinlin82/leetcode/blob/master/00195_tenth-line/200313-1.sh) | 0 ms | 3.8 MB | [100.00%](https://leetcode-cn.com/submissions/detail/53365205/) |
| 196 | 简单 | [删除重复的电子邮箱](https://leetcode-cn.com/problems/delete-duplicate-emails/) | [200313-1.sql](https://github.com/yanlinlin82/leetcode/blob/master/00196_delete-duplicate-emails/200313-1.sql) | 731 ms | 0 MB | [58.97%](https://leetcode-cn.com/submissions/detail/53369717/) |
| 197 | 简单 | [上升的温度](https://leetcode-cn.com/problems/rising-temperature/) | [200313-1.sql](https://github.com/yanlinlin82/leetcode/blob/master/00197_rising-temperature/200313-1.sql) | 490 ms | 0 MB | [18.44%](https://leetcode-cn.com/submissions/detail/53371419/) |
| 198 | 简单 | [打家劫舍](https://leetcode-cn.com/problems/house-robber/) | [200313-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00198_house-robber/200313-1.cpp) | 4 ms | 9.6 MB | [67.73%](https://leetcode-cn.com/submissions/detail/53374072/) |
| 199 | 中等 | [二叉树的右视图](https://leetcode-cn.com/problems/binary-tree-right-side-view/) | [200313-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00199_binary-tree-right-side-view/200313-1.cpp) | 8 ms | 13.6 MB | [43.99%](https://leetcode-cn.com/submissions/detail/53376164/) |
| 200 | 中等 | [岛屿数量](https://leetcode-cn.com/problems/number-of-islands/) | [200314-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00200_number-of-islands/200314-2.cpp) | 48 ms | 17 MB | [5.54%](https://leetcode-cn.com/submissions/detail/53677799/) |
| 201 | 中等 | [数字范围按位与](https://leetcode-cn.com/problems/bitwise-and-of-numbers-range/) | [200314-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00201_bitwise-and-of-numbers-range/200314-1.cpp) | 16 ms | 7.3 MB | [57.75%](https://leetcode-cn.com/submissions/detail/53685450/) |
| 202 | 简单 | [快乐数](https://leetcode-cn.com/problems/happy-number/) | [200314-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00202_happy-number/200314-1.cpp) | 8 ms | 7.8 MB | [25.35%](https://leetcode-cn.com/submissions/detail/53689093/) |

## Review {{<permalink "review">}}


## Tip {{<permalink "tip">}}

### 1. 设置bash history的上限 {{<permalink "tip-1">}}

在bash中，可以通过命令`history`查看过去使用过的命令行。这个历史记录是有上限数量的：

```sh
$ history | wc -l
500
$ echo $HISTSIZE
500
```

可以通过修改这个环境变量（将如下命令加入`~/.bashrc`中），来调整该上限：

```sh
export HISTSIZE=999999
```

参考：<https://www.linuxquestions.org/questions/linux-newbie-8/bash-history-limit-775909/>

## Share {{<permalink "share">}}


