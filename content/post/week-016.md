---
title: ARTS第十六周（2020年1月6日~12日）
date: 2020-01-06T00:27:21+08:00
slug: week-016
---

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 59 | 中等 | [螺旋矩阵 II](https://leetcode-cn.com/problems/spiral-matrix-ii/) | [200106-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00059_spiral-matrix-ii/200106-1.cpp) | 4 ms | 8.7 MB | [92.79%](https://leetcode-cn.com/submissions/detail/42396567/) |
| 60 | 中等 | [第k个排列](https://leetcode-cn.com/problems/permutation-sequence/) | [200106-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00060_permutation-sequence/200106-1.cpp) | 100 ms | 8.2 MB | [21.30%](https://leetcode-cn.com/submissions/detail/42397982/) |
| 61 | 中等 | [旋转链表](https://leetcode-cn.com/problems/rotate-list/) | [200106-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00061_rotate-list/200106-1.cpp) | 12 ms | 9 MB | [63.86%](https://leetcode-cn.com/submissions/detail/42398520/) |
| 62 | 中等 | [不同路径](https://leetcode-cn.com/problems/unique-paths/) | [200107-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00062_unique-paths/200107-1.cpp) | 0 ms | 8.2 MB | [100.00%](https://leetcode-cn.com/submissions/detail/42531909/) |
| 63 | 中等 | [不同路径 II](https://leetcode-cn.com/problems/unique-paths-ii/) | [200107-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00063_unique-paths-ii/200107-1.cpp) | 8 ms | 9.1 MB | [45.88%](https://leetcode-cn.com/submissions/detail/42532712/) |
| 64 | 中等 | [最小路径和](https://leetcode-cn.com/problems/minimum-path-sum/) | [200107-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00064_minimum-path-sum/200107-1.cpp) | 8 ms | 10.4 MB | [89.43%](https://leetcode-cn.com/submissions/detail/42533083/) |
| 65 | 困难 | [有效数字](https://leetcode-cn.com/problems/valid-number/) | [200108-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00065_valid-number/200108-1.cpp) | 4 ms | 8.2 MB | [87.72%](https://leetcode-cn.com/submissions/detail/42667621/) |
| 66 | 简单 | [加一](https://leetcode-cn.com/problems/plus-one/) | [200108-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00066_plus-one/200108-1.cpp) | 0 ms | 8.6 MB | [100.00%](https://leetcode-cn.com/submissions/detail/42668177/) |
| 67 | 简单 | [二进制求和](https://leetcode-cn.com/problems/add-binary/) | [200108-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00067_add-binary/200108-1.cpp) | 0 ms | 8.7 MB | [100.00%](https://leetcode-cn.com/submissions/detail/42668665/) |
| 68 | 困难 | [文本左右对齐](https://leetcode-cn.com/problems/text-justification/) | [200108-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00068_text-justification/200108-1.cpp) | 8 ms | 9.1 MB | [22.76%](https://leetcode-cn.com/submissions/detail/42775068/) |

## Review

### CMake使用技巧 {#review-1}

链接文章： [Funky CMake](https://philippegroarke.com/posts/2019/funky_cmake/)

这一篇文章里，给出了作者从实践中得来的一些关于CMake的非正统使用技巧。主要是利用CMake提供的一些基础支持，用于方便地做第三方支持库的获取、编译、部署应用。

CMake定义了自己的一套语法，用来在不同操作系统平台下，生成对应的make，从而实现跨平台的编译环境构建。相关的一些参考学习文章链接：

* [CSDN: cmake 学习笔记](https://blog.csdn.net/dbzhang800/article/details/6314073)
* [IBM DeveloperWorks: 在 linux 下使用 CMake 构建应用程序](https://www.ibm.com/developerworks/cn/linux/l-cn-cmake/)
* [知乎：如何用cmake编译](https://zhuanlan.zhihu.com/p/59161370)
* [知乎：VS Code与CMake真乃天作之合](https://zhuanlan.zhihu.com/p/52874931)

## Tip

### shell命令的并行执行 {#tip-1}

* 方式1 - 后台执行

    ```sh
    $ command-1 &  # 后台执行第一个命令
    $ command-2 &  # 后台执行第二个命令
    $ jobs  # 查看后台命令列表
    $ wait  # 等待后台命令结束
    ```

* 方式2 - 开多个终端

    可选工具：

    * [GNU screen](https://www.gnu.org/software/screen/)
    * [tmux](http://tmux.github.io/)

* 方式3 - GNU parallel

    这是本次技巧总结的重点，它提供了非常灵活的运行方式，来帮助用户组合出多个命令，并且并行执行它们：

    ```sh
    $ cat > commands.txt     # 通过各种方式生成一系列命令，每行一个命令
    $ parallel commands.txt  # 并行执行这些命令
    ```

    输入的也可以是参数，然后被追加到同一个命令后面，例如：

    ```sh
    $ find . -name '*.html' | parallel gzip --best
    ```

    或者，也可以命令行直接指定多个参数（使用`:::`），让其逐个枚举并生成需要并行的命令：

    ```sh
    $ parallel gzip --best ::: *.html
    ```

    参考：[Manpage of GNU parallel](https://www.gnu.org/software/parallel/man.html)

* 方式4 - seqpipe

    <https://github.com/yanlinlin82/seqpipe/>

    这是我自己开发的流程框架工具。其主要目的是为了记录详细的运行命令行参数及日志。在未正式发布的第5、6版本中，我仿照GNU parallel写了一些最基本的并行支持，后续考虑参考GNU parallel和其他类似工具，提供各种更灵活简便的使用方式。

## Share

### 命令行下的数据分析工具 {#share-1}

分享文章：[An Introduction To Data Science On The Linux Command Line](https://blog.robertelder.org/data-science-linux-command-line/)

这篇文章介绍了常用了Linux命令行，大多数都是我平时经常在使用的，对于很多数据清洗过程，的确很方便。

此外，为了扩展上述命令，更简便地处理TSV（TAB separated values）格式文件，以及对Excel的输入输出等功能，我还开发了一个[tsv](https://github.com/yanlinlin82/tsv)工具，并在实践过程中，不断完善其功能。

### 高效Linux命令行 {#share-2}

分享公众号文章：[15个相见恨晚的 Linux 神器，你可能一个都没见过](https://mp.weixin.qq.com/s/Rg0C1B5rQ39G_92UGo9MFw)

这些Linux工具的确对已有被替代工具，在效率和易用性上，做了大量的优化，值得尝试并引入日常使用。
