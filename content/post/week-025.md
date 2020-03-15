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

### 1. 企业内部开源 {{<permalink "review-1">}}

分享链接：<https://github.blog/2020-03-11-why-organizations-should-commit-to-innersource-in-2020/>

这是GitHub的一篇博文，提到一个概念“innersource”，我不确定中文应该怎么说，姑且称之为“内部开源”吧。

这个概念其实早在2000年就已经提出（参见[wikipedia](https://en.wikipedia.org/wiki/Inner_source)），指的是在企业内部采取或借鉴开源社区的方式，对软件开发项目进行管理。开源社区的成功项目，在全球合作、软件质量控制、激励等诸多方面，经过这么多年的发展，形成了一系列行之有效的做法。这些做法，通过“内部开源”的方式，也同样有利于企业的软件开发项目。

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

### 2. 设置可移植的脚本解释器定义行 {{<permalink "tip-2">}}

分享链接：[Make Linux/Unix Script Portable With #!/usr/bin/env As a Shebang](https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html)

对于经常编写和使用脚本的人而言，每次都带着脚本解释器运行，是个烦人的工作：

```sh
$ perl foo.pl arg1 arg2  # 使用perl对foo.pl进行解释执行，带着参数arg1 arg2
```

于是，一个常见的做法是，把解释器写到脚本的第一行，并以“#!”开头，例如：

```sh
$ head -n1 foo.pl  # 查看脚本的第一行
#!/usr/bin/perl
$ chmod +x foo.pl  # 设置脚本属性，允许执行
$ ./foo.pl         # 直接运行该脚本
```

这个脚本首行的解释器定义，有个名称叫做“shebang”（读音为：US [ʃə'bæŋ] 或 UK [ʃɪ'bæŋ]），目前有“释伴”的中文译法，兼具音译和意译，可惜尚未得到广泛共识。

然而，这种写法要求给出perl程序的全路径，这在不同的系统环境中，由于perl可能安装到其他自定义路径，因而造成脚本的移植性/适应性的降低。

针对此问题，一个改进的做法是，通过`/usr/bin/env`进行调用。`env`程序被认为是所有系统都会自带的，且位于固定的`/usr/bin/`目录中，通过它，就能自动搜索PATH路径，找到正确的解释程序（如perl，或其他程序）：

```
#!/usr/bin/env perl
```

这篇文章给出的题图中，其定义为：

```
#!/usr/bin/env perl -w
```

增加了`-w`参数，是为了让perl针对各类不规范用法提出警告。这是很好的习惯。可惜这种写法会造成错误提示：

```sh
$ ./foo.pl
/usr/bin/env: ‘perl -w’: No such file or directory
```

经过阅读`man env`使用帮助说明，找到`env`命令需要指定参数`-S`，才能允许后续追加其他参数。最终的解决方案是：

```
#!/usr/bin/env -S perl -T -w
```

其他参考链接：

* [StackExchange: Shebang line with `#!/usr/bin/env command --argument` fails on Linux](https://unix.stackexchange.com/questions/63979/shebang-line-with-usr-bin-env-command-argument-fails-on-linux)
* [StackOverflow: How to use multiple arguments for awk with a shebang (i.e. #!)?](https://stackoverflow.com/questions/4303128/how-to-use-multiple-arguments-for-awk-with-a-shebang-i-e)
* [Wikipedia: Shebang](https://zh.wikipedia.org/wiki/Shebang)

## Share {{<permalink "share">}}


