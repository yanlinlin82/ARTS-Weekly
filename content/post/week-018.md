---
title: ARTS第十八周（2020年1月20日~26日）
date: 2020-01-21T04:27:33+08:00
slug: week-018
---

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 76 | 困难 | [最小覆盖子串](https://leetcode-cn.com/problems/minimum-window-substring/) | [200121-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00076_minimum-window-substring/200121-2.cpp) | 32 ms | 9.9 MB | [63.18%](https://leetcode-cn.com/submissions/detail/44178648/) |
| 77 | 中等 | [组合](https://leetcode-cn.com/problems/combinations/) | [200121-1,cpp](https://github.com/yanlinlin82/leetcode/blob/master/00077_combinations/200121-1,cpp) | 28 ms | 11.5 MB | [98.02%](https://leetcode-cn.com/submissions/detail/44178792/) |
| 78 | 中等 | [子集](https://leetcode-cn.com/problems/subsets/) | [200121-1,cpp](https://github.com/yanlinlin82/leetcode/blob/master/00078_subsets/200121-1,cpp) | 4 ms | 15.1 MB | [96.99%](https://leetcode-cn.com/submissions/detail/44178849/) |
| 79 | 中等 | [单词搜索](https://leetcode-cn.com/problems/word-search/) | [200121-1,cpp](https://github.com/yanlinlin82/leetcode/blob/master/00079_word-search/200121-1,cpp) | 32 ms | 11.1 MB | [72.65%](https://leetcode-cn.com/submissions/detail/44178964/) |
| 80 | 中等 | [删除排序数组中的重复项 II](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array-ii/) | [200121-1,cpp](https://github.com/yanlinlin82/leetcode/blob/master/00080_remove-duplicates-from-sorted-array-ii/200121-1,cpp) | 12 ms | 8.9 MB | [93.37%](https://leetcode-cn.com/submissions/detail/44179034/) |

## Review


## Tip

### 防止误操作重启服务器 {#tip-1}

通过配置别名，实现在执行`shutdown`或`reboot`命令时进行警告：

```sh
alias reboot="echo 'Are you sure?' If so, run /sbin/reboot"
alias shutdown="echo 'Are you sure?' If so, run /sbin/shutdown"
```

参考：[nixCraft: Protects Linux machines from accidental shutdowns/reboots with molly-guard](https://www.cyberciti.biz/hardware/how-to-protects-linux-and-unix-machines-from-accidental-shutdownsreboots-with-molly-guard/)

### 在Linux下查找Windows OEM验证码 {#tip-2}

购买笔记本电脑时，预装有Windows。一旦安装Linux后，想要找回该预装Windows的验证码，就可以用如下命令：

```sh
sudo strings /sys/firmware/acpi/tables/MSDM
```

参考：[nixCraft: Linux find Windows 10 OEM product key command](https://www.cyberciti.biz/faq/linux-find-windows-10-oem-product-key-command/)

## Share


