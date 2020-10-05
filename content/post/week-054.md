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

### 1. 关于学术界与产业界的选择 {{<permalink "review-1">}}

分享链接：[The Good, the Bad, and the Bye Bye: Why I Left My Tenured Academic Job](https://reyammer.io/blog/2020/10/03/the-good-the-bad-and-the-bye-bye-why-i-left-my-tenured-academic-job/)

作者仔细分析了学术界和产业界的各自优劣，最终放弃例终身教职，转而投身产业界。其中很多内容是全世界各国都相通的，值得借鉴和参考。

其实，诸如“We write papers that do not deserve to be written”这样的问题，未必仅存于学术界，然而如何坚持初心，不受困于围城，则是另一个问题了。

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

### 1. 一个小型C编译器chibicc {{<permalink "share-1">}}

分享链接：[GitHub: chibicc: A Small C Compiler](https://github.com/rui314/chibicc)

作者正在写一本关于C编译器和底层编程的书，而这个仓库是该书所对应的小型C编译器的实现源码。

### 2. 静态网页服务的性能对比 {{<permalink "share-2">}}

分享链接：[Static webhosting benchmark: AWS, Google, Firebase, Netlify, GitHub & Cloudflare](https://www.savjee.be/2020/05/benchmarking-static-website-hosting-providers/)

作者2017年做过一次对比，近期又重复了一次。最终得到的结果是“The best all-around performer is AWS CloudFront, followed closely by GitHub Pages”。

相应的数据分享在：<https://github.com/Savjee/static-website-hosting-benchmark>
