---
title: ARTS第五十四周（2020年9月28日~10月4日）
date: 2020-09-27T13:57:46+08:00
slug: week-054
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|
| 341 | 中等 | [扁平化嵌套列表迭代器](https://leetcode-cn.com/problems/flatten-nested-list-iterator/) | [201005-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00341_flatten-nested-list-iterator/201005-1.cpp) | 20 ms | 14.1 MB | 72.94% | 63.90% | [查看结果](https://leetcode-cn.com/submissions/detail/113400670/) |  |
| 342 | 简单 | [4的幂](https://leetcode-cn.com/problems/power-of-four/) | [201005-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00342_power-of-four/201005-1.cpp) | 0 ms | 5.8 MB | 100.00% | 50.77% | [查看结果](https://leetcode-cn.com/submissions/detail/113401274/) |  |
| 343 | 中等 | [整数拆分](https://leetcode-cn.com/problems/integer-break/) | [201005-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00343_integer-break/201005-2.cpp) | 0 ms | 5.7 MB | 100.00% | 97.74% | [查看结果](https://leetcode-cn.com/submissions/detail/113404676/) |  |

## Review {{<permalink "review">}}


## Tip {{<permalink "tip">}}

### 1. Git中比较二进制文件 {{<permalink "tip-1">}}

分享链接：[StackExchange: How can I diff binary files in git?](https://superuser.com/questions/706042/how-can-i-diff-binary-files-in-git)

1. 设置`.git/config`或`~/.gitconfig`

    ```
    [diff "hex"]
    textconv = hexdump -v -C
    binary = true
    ```

2. 设置`.gitattributes`

    ```
    # Binary files (no line-ending conversions), diff using hexdump
    *.bin binary diff=hex
    ```

此外，还可以直接使用：`git diff --text`来显示二进制字符做比较

## Share {{<permalink "share">}}


