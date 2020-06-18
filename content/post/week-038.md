---
title: ARTS第三十八周（2020年6月8日~14日）
date: 2020-06-17T23:21:43+08:00
slug: week-038
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 262 | 困难 | [行程和用户](https://leetcode-cn.com/problems/trips-and-users/) | [200617-1.sql](https://github.com/yanlinlin82/leetcode/blob/master/00262_trips-and-users/200617-1.sql) | 288 ms | 0 MB | [43.06%](https://leetcode-cn.com/submissions/detail/79823761/) |  |
| 263 | 简单 | [丑数](https://leetcode-cn.com/problems/ugly-number/) | [200617-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00263_ugly-number/200617-1.cpp) | 0 ms | 5.8 MB | [100.00%](https://leetcode-cn.com/submissions/detail/79825689/) |  |
| 264 | 中等 | [丑数 II](https://leetcode-cn.com/problems/ugly-number-ii/) | [200617-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00264_ugly-number-ii/200617-1.cpp) | 356 ms | 29.5 MB | [21.18%](https://leetcode-cn.com/submissions/detail/79828036/) |  |

## Review {{<permalink "review">}}

### 1. 在关系型数据库中处理级联类型 {{<permalink "review-1">}}

分享链接：[How to Manipulate Hierarchical Information in Flat Relational Database Tables
](https://www.codeproject.com/Articles/16077/How-to-Manipulate-Hierarchical-Information-in-Fl-2)

表现为树形结构的级联类型，在数据库中，常见的实现方式是设置自关联的主键。

从工程角度，为了确保数据操作效率，通常还会加入一些辅助字段，以及相应的代码（可能是数据库底层实现，可能是存储过程）来帮助查询、插入、更新、删除的操作。

本文以SQL server为例，展示了这方面背后的逻辑。

## Tip {{<permalink "tip">}}

### 1. C++中的区间类型 {{<permalink "tip-1">}}

分享链接：[C++ code samples before and after Ranges](https://mariusbancila.ro/blog/2019/01/20/cpp-code-samples-before-and-after-ranges/)

区间类型有很多常见算法的封装，能够提供更便利的用法。下面举例展示下遍历枚举每个元素的操作。

常规STL使用：

```cpp
std::for_each(
   std::crbegin(v), std::crend(v),
   print_elem);
```

使用range类型：

```cpp
rs::for_each(
   std::crbegin(v), std::crend(v),
   print_elem);
```

或（倒序枚举）：

```cpp
for (auto const i : v | rv::reverse)
{
   print_elem(i);
};
```

## Share {{<permalink "share">}}

### 1. 8086的高清照片 {{<permalink "share-1">}}

分享链接：[A look at the die of the 8086 processor](http://www.righto.com/2020/06/a-look-at-die-of-8086-processor.html)

42年前问世的8086，开启了x86架构的历史。原来学习汇编语言，就是从它的指令集开始的。如今看其实物照片，依然会感慨其精密。
