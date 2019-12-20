---
title: ARTS第十二周（2019年12月9日~15日）
date: 2019-12-09T23:36:14+0800
slug: week-012
---

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 38 | 简单 | [报数](https://leetcode-cn.com/problems/count-and-say/) | [191209-1.cpp](https://github.com/yanlinlin82/leetcode/00038_count-and-say/191209-1.cpp) | 4 ms | 9 MB | [90.22%](https://leetcode-cn.com/submissions/detail/39452320/) |
| 39 | 中等 | [组合总和](https://leetcode-cn.com/problems/combination-sum/) | [191209-1.cpp](https://github.com/yanlinlin82/leetcode/00039_combination-sum/191209-1.cpp) | 20 ms | 10 MB | [63.90%](https://leetcode-cn.com/submissions/detail/39459423/) |
| 40 | 中等 | [组合总和 II](https://leetcode-cn.com/problems/combination-sum-ii/) | [191212-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00040_combination-sum-ii/191212-1.cpp) | 8 ms | 9.7 MB | [93.88%](https://leetcode-cn.com/submissions/detail/39818200/) |
| 41 | 困难 | [缺失的第一个正数](https://leetcode-cn.com/problems/first-missing-positive/) | [191213-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00041_first-missing-positive/191213-1.cpp) | 4 ms | 8.7 MB | [80.37%](https://leetcode-cn.com/submissions/detail/39921986/) |

## Review

[Inserting Values to a Map with Boost.Assign](https://www.fluentcpp.com/2019/12/03/inserting-values-to-a-map-with-boost-assign/)

这是一篇关于C++ boost库中`Boost.Assign`的文章，该类型支持用如下语法对数组进行赋值：

```cpp
std::vector<int> v;
v += 1,2,3,4,5,6,7,8,9,10;
```

然而，想要用类似方法对`map`类型进行赋值，却做不到（如下代码无法编译通过）：

```cpp
std::map<int, std::string> m;
m += {1,"one"}, {2,"two"}, {3,"three"};
```

为此，该类型提供了另一种类似方式，实现了同样的效果：

```cpp
insert(m)(1, "one")(2, "two")(3, "three");
```

这种基于重定义类型和操作符来实现的语法糖，对于改善C++代码的可维护性，使这门语言重新焕发生机，起到重要作用。相应的思维方式，值得学习和借鉴。

## Tip

在命令标识符中，添加当前日期和时间：

```sh
export PS1='\[\033[00;32m\]\u@\h\[\033[00m\] [\D{%Y-%m-%d} \t] \[\033[01;34m\]\w\[\033[00m\] \$'
```

这样，每次出现命令行提示符时，就会自动显示当前时间，对于某些耗时较多的命令，可以快速帮助检查其结束时间，对于日常工作比较有用。

## Share

[Data Science - Journey through Life Cycles. Part 1](https://www.codeproject.com/Articles/1312875/Data-Science-Journey-through-Life-Cycles-Part-1)

关于数据科学的一些基本概念，讲得还不错，适合入门。比如：

数据科学分析类型：

* **Predictive Analysis** - What will happen in the future?
* **Descriptive Analysis** - What is happening in the past and now?
* **Prescriptive Analysis** - What should be done to enhance or prevent current or future happening?

数据的类型：

* Categorical (Or Nominal)
* Ordinal
* Binary
* Continuous

数据清洗、分布描述等准备工作，特征工程等。
