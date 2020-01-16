---
title: ARTS第十七周（2020年1月13日~19日）
date: 2020-01-16T19:38:07+08:00
slug: week-017
---

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 69 | 简单 | [x 的平方根](https://leetcode-cn.com/problems/sqrtx/) | [200116-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00069_sqrtx/200116-1.cpp) | 88 ms | 8.2 MB | [6.01%](https://leetcode-cn.com/submissions/detail/43665227/) |
| 70 |  简单 | [爬楼梯](https://leetcode-cn.com/problems/climbing-stairs/) | [200116-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00070_climbing-stairs/200116-1.cpp) | 0 ms | 8.6 MB | [100.00%](https://leetcode-cn.com/submissions/detail/43666892/) |
| 71 | 中等 | [简化路径](https://leetcode-cn.com/problems/simplify-path/) | [200116-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00071_simplify-path/200116-1.cpp) | 20 ms | 10 MB | [11.13%](https://leetcode-cn.com/submissions/detail/43719607/) |
| 72 | 困难 | [编辑距离](https://leetcode-cn.com/problems/edit-distance/) | [200116-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00072_edit-distance/200116-1.cpp) | 12 ms | 11.6 MB | [86.41%](https://leetcode-cn.com/submissions/detail/43722058/) |
| 73 | 中等 | [矩阵置零](https://leetcode-cn.com/problems/set-matrix-zeroes/) | [200117-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00073_set-matrix-zeroes/200117-1.cpp) | 16 ms | 11.5 MB | [100.00%](https://leetcode-cn.com/submissions/detail/43757444/) |
| 74 | 中等 | [搜索二维矩阵](https://leetcode-cn.com/problems/search-a-2d-matrix/) | [200117-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00074_search-a-2d-matrix/200117-1.cpp) | 8 ms | 10 MB | [88.98%](https://leetcode-cn.com/submissions/detail/43757476/) |
| 75 | 中等 | [颜色分类](https://leetcode-cn.com/problems/sort-colors/) | [200117-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00075_sort-colors/200117-1.cpp) | 4 ms | 8.8 MB | [88.24%](https://leetcode-cn.com/submissions/detail/43757569/) |

## Review


## Tip

### 在ssh命令中使用alias {#tip-1}

链接文章：[How to use/run bash aliases over ssh based session](https://www.cyberciti.biz/faq/use-bash-aliases-ssh-based-session/)

通常，可以使用`ssh 主机 命令`的形式执行某个命令，但这种方式是不能使用别名的：

```sh
$ ssh yanlinlin.cn ll
bash: ll: command not found
```

其实，通过调用`bash`来解决问题，让bash去装载别名，然后执行命令：

```sh
$ ssh yanlinlin.cn bash -ic ll
bash: cannot set terminal process group (-1): Inappropriate ioctl for device
bash: no job control in this shell
total 4
drwxrwxr-x 9 yanll yanll 4096 Jan  7 18:11 git-repos
```

然而，此时会有一个`Inappropriate ioctl for device`的报错，可以通过给ssh增加`-t`参数来解决：

```sh
$ ssh -t yanlinlin.cn bash -ic ll
total 4
drwxrwxr-x 9 yanll yanll 4096 Jan  7 18:11 git-repos
Connection to yanlinlin.cn closed.
```

## Share


