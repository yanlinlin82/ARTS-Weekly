---
title: ARTS第三十三周（2020年5月4日~10日）
date: 2020-05-04T09:48:24+08:00
slug: week-033
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 230 | 中等 | [二叉搜索树中第K小的元素](https://leetcode-cn.com/problems/kth-smallest-element-in-a-bst/) | [200504-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00230_kth-smallest-element-in-a-bst/200504-1.cpp) | 32 ms | 24 MB | [43.57%](https://leetcode-cn.com/submissions/detail/67991708/) |  |
| 231 | 简单 | [2的幂](https://leetcode-cn.com/problems/power-of-two/) | [200504-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00231_power-of-two/200504-1.cpp) | 0 ms | 5.7 MB | [100.00%](https://leetcode-cn.com/submissions/detail/67992784/) |  |
| 232 | 简单 | [用栈实现队列](https://leetcode-cn.com/problems/implement-queue-using-stacks/) | [200510-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00232_implement-queue-using-stacks/200510-1.cpp) | 0 ms | 6.9 MB | [100.00%](https://leetcode-cn.com/submissions/detail/69722139/) |  |

## Review {{<permalink "review">}}

### 1. C++中实现“else-before-if” {{<permalink "review-1">}}

分享链接：[Else Before If](https://www.fluentcpp.com/2020/04/24/else-before-if/)

这篇文章介绍了C++语法中Lambda表达式的一个应用示例。

通常我们写多重条件判断时，采取如下形式：

```cpp
if (edgeCase1)
{
    // deal with edge case 1
}
else if (edgeCase2)
{
    // deal with edge case 2
}
else
{
    // this is the main case
}
```

而另一种（可能）更清晰的理解方式，可以采取类似如下的形式：

```cpp
normally
{
    // this is the main case
}
unless (edgeCase1)
{
    // deal with edge case 1
}
unless (edgeCase2)
{
    // deal with edge case 2
}
```

这种似乎需要语言底层语法支持才能实现的功能，在现代C++里其实可以通过用户自定义一些类和模板来实现，这正是现代C++语言的灵活美妙之处。通过Lambda表达式，能够让整个语句块作为参数传递给某个类成员函数（或是模板函数），从而实现在运行时才根据具体数值确定是否执行的“延迟计算”或“动态计算”。

该实现的完整代码见：<http://coliru.stacked-crooked.com/a/100db35a6b2800fc>

## Tip {{<permalink "tip">}}

### 1. Linux下如何重复执行命令直至成功 {{<permalink "tip-1">}}

分享链接：[How to repeat a Linux command until it succeeds](https://www.networkworld.com/article/3541298/how-to-repeat-a-linux-command-until-it-succeeds.html)

可以使用`while`或`until`两个命令来构造循环：

```sh
$ while ! cat missingfile
do
    echo waiting for missingfile
    sleep 10
done
```

```sh
$ until cat missingfile
do
    echo waiting for missingfile
    sleep 10
done
```

## Share {{<permalink "share">}}

### 1. COBOL语言课程 {{<permalink "share-1">}}

分享链接：

* <https://github.com/openmainframeproject/cobol-programming-course>
* <https://www.openmainframeproject.org/projects/coboltrainingcourse>

COBOL是一门古老的计算机语言，而且在很多大公司里被使用。没想到，时至今日，还有这样一门课程，教授该语言。
