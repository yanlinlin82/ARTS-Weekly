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
| 172 | 简单 | [阶乘后的零](https://leetcode-cn.com/problems/factorial-trailing-zeroes/) | [200221-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00172_factorial-trailing-zeroes/200221-2.cpp) | 0 ms | 8.4 MB | [100.00%](https://leetcode-cn.com/submissions/detail/48464679/) |
| 173 | 中等 | [二叉搜索树迭代器](https://leetcode-cn.com/problems/binary-search-tree-iterator/) | [200221-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00173_binary-search-tree-iterator/200221-1.cpp) | 80 ms | 25.9 MB | [21.34%](https://leetcode-cn.com/submissions/detail/48464721/) |
| 174 | 困难 | [地下城游戏](https://leetcode-cn.com/problems/dungeon-game/) | [200221-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00174_dungeon-game/200221-1.cpp) | 8 ms | 10.2 MB | [79.51%](https://leetcode-cn.com/submissions/detail/48466281/) |
| 175 | 简单 | [组合两个表](https://leetcode-cn.com/problems/combine-two-tables/) | [200221-1.sql](https://github.com/yanlinlin82/leetcode/blob/master/00175_combine-two-tables/200221-1.sql) | 176 ms | 0 MB | [41.84%](https://leetcode-cn.com/submissions/detail/48466380/) |
| 176 | 简单 | [第二高的薪水](https://leetcode-cn.com/problems/second-highest-salary/) | [200221-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00176_second-highest-salary/200221-1.cpp) | 181 ms | 0 MB | [10.64%](https://leetcode-cn.com/submissions/detail/48466681/) |

## Review {{<permalink "review">}}

### 1. 更易于维护的C程序结构 {{<permalink "review-1">}}

文章链接：[How to write a good C main function](https://opensource.com/article/19/5/how-write-good-c-main-function)

这篇文章详细介绍了如何编写出更加易于维护的C程序，给出了一个详细的示例框架的各个部分，包括：

* 0 copyright/licensing
* 1 includes
* 2 defines
* 3 external declarations
* 4 typedefs
* 5 global variable declarations
* 6 function prototypes
* 7 command-line parsing
* 8 function declarations

符合大多数程序遵循的惯例，让读者在阅读代码时，有更多的可预期，是降低代码理解的关键之一。

## Tip {{<permalink "tip">}}

### 1. 如何修改gnome桌面的缺省文本编辑器 {{<permalink "tip-1">}}

在`~/.local/share/applications/`目录中创建文件`defaults.list`，写入如下内容：

```
[Default Applications]
text/plain=gvim.desktop  # 若改为vim.desktop，将使用终端vim（而非图形界面vim）
```

即可将缺省的gedit改为使用vim打开相应文本文件。

参考：<https://www.marksanborn.net/linux/making-gvim-your-default-text-editor-in-gnome/>

### 2. 修改gnome的缺省用户目录 {{<permalink "tip-2">}}

配置文件位于`~/.config/user-dirs.dirs`，可以用文本编辑器直接打开修改。

或者采用如下命令：

```sh
xdg-user-dirs-update --set XDG_VIDEOS_DIR "/media/share/Video"
```

参考：<https://askubuntu.com/questions/67044/change-default-user-folders-path>

### 3. 在gitignore中进行反选 {{<permalink "tip-3">}}

今天遇到一个需求，希望在git仓库中，对某个目录，把特定类型文件加入仓库进行版本管理，而忽略同目录中的其他所有文件。

解决方法为：先定义忽略该目录，然后在其后以“!”开头定义需要反选（即不忽略）的文件，例如：

```
$ cat .gitignore
distfiles/*
!distfiles/*.sha256sum
```

这个文件定义了，忽略`distfiles/`目录下，所有非“.sha256sum”结尾的文件。

参考：<https://stackoverflow.com/questions/54702404/how-to-use-gitignore-reverse-select>

## Share {{<permalink "share">}}

### 1. 更便利的展示目录树的小工具 {{<permalink "share-1">}}

项目链接：

* <https://github.com/Canop/broot>
* <https://dystroy.org/broot>

对于包含较多文件的目录，列举展示其文件，通常是个比较麻烦的事。这个工具在这方面做了改进，以更清晰简洁的方式快速展示目录树内容，并提供目录跳转等功能。
