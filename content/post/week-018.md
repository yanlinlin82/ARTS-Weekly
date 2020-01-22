---
title: ARTS第十八周（2020年1月20日~26日）
date: 2020-01-21T04:27:33+08:00
slug: week-018
---

## Algorithm {{<permalink "algorithm">}}

### LeetCode {{<permalink "leetcode">}}

题库链接：<https://leetcode-cn.com/problemset/all/>  
我的刷题：<https://github.com/yanlinlin82/leetcode/>

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 76 | 困难 | [最小覆盖子串](https://leetcode-cn.com/problems/minimum-window-substring/) | [200121-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00076_minimum-window-substring/200121-2.cpp) | 32 ms | 9.9 MB | [63.18%](https://leetcode-cn.com/submissions/detail/44178648/) |
| 77 | 中等 | [组合](https://leetcode-cn.com/problems/combinations/) | [200121-1,cpp](https://github.com/yanlinlin82/leetcode/blob/master/00077_combinations/200121-1,cpp) | 28 ms | 11.5 MB | [98.02%](https://leetcode-cn.com/submissions/detail/44178792/) |
| 78 | 中等 | [子集](https://leetcode-cn.com/problems/subsets/) | [200121-1,cpp](https://github.com/yanlinlin82/leetcode/blob/master/00078_subsets/200121-1,cpp) | 4 ms | 15.1 MB | [96.99%](https://leetcode-cn.com/submissions/detail/44178849/) |
| 79 | 中等 | [单词搜索](https://leetcode-cn.com/problems/word-search/) | [200121-1,cpp](https://github.com/yanlinlin82/leetcode/blob/master/00079_word-search/200121-1,cpp) | 32 ms | 11.1 MB | [72.65%](https://leetcode-cn.com/submissions/detail/44178964/) |
| 80 | 中等 | [删除排序数组中的重复项 II](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array-ii/) | [200121-1,cpp](https://github.com/yanlinlin82/leetcode/blob/master/00080_remove-duplicates-from-sorted-array-ii/200121-1,cpp) | 12 ms | 8.9 MB | [93.37%](https://leetcode-cn.com/submissions/detail/44179034/) |
| 81 | 中等 | [搜索旋转排序数组 II](https://leetcode-cn.com/problems/search-in-rotated-sorted-array-ii/) | [200122-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00081_search-in-rotated-sorted-array-ii/200122-1.cpp) | 8 ms | 9.1 MB | [69.29%](https://leetcode-cn.com/submissions/detail/44296630/) |
| 82 | 中等 | [删除排序链表中的重复元素 II](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list-ii/) | [200122-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00082_remove-duplicates-from-sorted-list-ii/200122-1.cpp) | 12 ms | 9.1 MB | [61.70%](https://leetcode-cn.com/submissions/detail/44301383/) |
| 83 | 简单 | [删除排序链表中的重复元素](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list/) | [200122-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00083_remove-duplicates-from-sorted-list/200122-1.cpp) | 12 ms | 9.2 MB | [90.06%](https://leetcode-cn.com/submissions/detail/44302885/) |

## Review {{<permalink "review">}}

### 1. 关于C++中的对象 {{<permalink "review-1">}}

文章链接：**[Objects, Their Lifetimes and pointers](https://blog.panicsoftware.com/objects-their-lifetimes-and-pointers/)**

这篇文章指出了，C++语言中的对象，与wikipedia和其他面向对象语言中所定义的对象，是有区别的。这些区别来自于C++语言本身的发展历史，对于系统底层的支持，诸如不同内存分配方式、内置类型与自定义类的区别等。其重点在于：

1. C++类的成员（变量）和类型并不是对象；
2. 应避免运行时改变某个对象的类型；
3. 一定要注意对象的生存期，在生存期以外进行使用一定要非常小心。

### 2. 在C++中实现弱类型 {{<permalink "review-2">}}

文章链接：**[std::polymorphic\_value + Duck Typing = Type Erasure](https://foonathan.net/2020/01/type-erasure/)**

这篇文章介绍了“类型消除（Type Erasure）”的实现方法，通过使用智能指针，将自定义类型封装得表现得与内置类型一样，并且避免类型强制转换时造成内存块截断，再配合“鸭子类型（Duck Typing）”，从而在C++这样的强类型语言中，实现了弱类型。

## Tip {{<permalink "tip">}}

### 1. 防止误操作重启服务器 {{<permalink "tip-1">}}

通过配置别名，实现在执行`shutdown`或`reboot`命令时进行警告：

```sh
alias reboot="echo 'Are you sure?' If so, run /sbin/reboot"
alias shutdown="echo 'Are you sure?' If so, run /sbin/shutdown"
```

参考：[nixCraft: Protects Linux machines from accidental shutdowns/reboots with molly-guard](https://www.cyberciti.biz/hardware/how-to-protects-linux-and-unix-machines-from-accidental-shutdownsreboots-with-molly-guard/)

### 2. 在Linux下查找Windows OEM验证码 {{<permalink "tip-2">}}

购买笔记本电脑时，预装有Windows。一旦安装Linux后，想要找回该预装Windows的验证码，就可以用如下命令：

```sh
sudo strings /sys/firmware/acpi/tables/MSDM
```

参考：[nixCraft: Linux find Windows 10 OEM product key command](https://www.cyberciti.biz/faq/linux-find-windows-10-oem-product-key-command/)

## Share {{<permalink "share">}}

### 1. 关于软件测试的趋势预测 {{<permalink "share-1">}}

文章链接：**[2020年即将到来的软件测试趋势](https://www.qaseven.cn/posts/upcoming-software-testing-trends-in-2020.html)**

这篇文章从多个方面对软件测试做了简单的当前进展描述和未来预测，包括：

* 人工智能和机器学习的应用
* 移动应用的自动化测试
* 物联网测试
* 自动化API测试
* 集成各种工具

### 2. C++20标准相关 {{<permalink "share-2">}}

* The Official Conference App for DroidKaigi 2020 Tokyo: <https://droidkaigi.jp/2020/en/>
* GitHub 'conference-app-2020' project: <https://github.com/DroidKaigi/conference-app-2020>
