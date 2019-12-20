---
title: ARTS第九周（2019年11月18日~24日）
date: 2019-11-18T23:39:01+0800
slug: week-009
---

## Algorithm

* [leetcode题库](https://leetcode-cn.com/problemset/all/)

### 成绩表

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 27 | 简单 | [移除元素](https://leetcode-cn.com/problems/remove-element/) | [191118-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00027_remove-element/191118-1.cpp) | 0 ms | 8.4 MB | [100.00%](https://leetcode-cn.com/submissions/detail/36942276/) |
| 28 | 简单 | [实现 strStr()](https://leetcode-cn.com/problems/implement-strstr/) | [191118-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00028_implement-strstr/191118-1.cpp) | 8 ms | 8.8 MB | [65.58%](https://leetcode-cn.com/submissions/detail/36942358/) |
| 29 | 中等 | [两数相除](https://leetcode-cn.com/problems/divide-two-integers/) | [191118-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00029_divide-two-integers/191118-1.cpp) | 4 ms | 8.1 MB | [87.18%](https://leetcode-cn.com/submissions/detail/37054861/) |
| 30 | 困难 | [串联所有单词的子串](https://leetcode-cn.com/problems/substring-with-concatenation-of-all-words/) | [191119-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00030_substring-with-concatenation-of-all-words/191119-1.cpp) | 1904 ms | 30 MB | [6.38%](https://leetcode-cn.com/submissions/detail/37175940/) |
| 31 | 中等 | [下一个排列](https://leetcode-cn.com/problems/next-permutation/) | [191120-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00031_next-permutation/191120-1.cpp) | 12 ms | 8.7 MB | [73.28%](https://leetcode-cn.com/submissions/detail/37327890/) |
| 32 | 困难 | [最长有效括号](https://leetcode-cn.com/problems/longest-valid-parentheses/) | [191121-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00032_longest-valid-parentheses/191121-1.cpp) | 12 ms | 9.4 MB | [42.79%](https://leetcode-cn.com/submissions/detail/37457502/) |

## Review

[aRrgh: a newcomer’s (angry) guide to R](http://arrgh.tim-smith.us/)

这是一篇发布于七年前（2012年）的文档了，吐槽了很多R语言基础语法方面的糟糕设计，这些槽点的确让众多初学者（尤其是从其他语言转过来的初学者）很是头疼一番，才能开始正确使用该语言。用作者的原话表述，“The more you learn about the R language, the worse it will feel”。

包括了如下几个方面：

* [基础语法](http://arrgh.tim-smith.us/syntax.html)
* [向量类型](http://arrgh.tim-smith.us/atomic.html)
* [因子类型](http://arrgh.tim-smith.us/factors.html)
* [数据框类型](http://arrgh.tim-smith.us/data_frames.html)

仔细阅读这篇文章，其实有助于初学者加深对这些容易混淆或理解错误的地方的印象，从而更高效的掌握和使用这门语言。

不过遗憾的是，这篇文档并未更新完成，所列举的诸如“索引”、“列表”等内容，至今仍处于“To come?”状态。

所幸，文档提及的推荐“tidyverse”软件包和“Bioconductor”生态，倒是一直欣欣向荣，对R语言的易用和能力扩展，起到了重要作用。

## Tip

如何在用vim打开文件时，自动定位到特定行

```sh
vim +行号 文件名    # 根据行号指定跳转位置
vim +/关键词 文件名 # 根据内容指定跳转位置
```

参考：<https://www.cyberciti.biz/faq/linux-unix-command-open-file-linenumber-function/>

## Share

[5 Ways Using Braces Can Make Your C++ Code More Expressive](https://www.fluentcpp.com/2019/11/15/5-ways-cpp-braces-will-make-your-code-more-expressive/)

本文分享了使用花括号改善C++代码的几种方法。这些内容大多都依赖于C++新标准。

1. 填充各类容器（Filling all sorts of containers）

```cpp
std::vector<std::string> words = {"the", "mortar", "holding", "code", "together"};

std::pair answer = {"forty-two", 42};
std::tuple cue = {3, 2, 1, "go!"};

std::map<int, std::string> numbers = { {1, "one"}, {2, "two"}, {3, "three"} };
```

2. 将多个参数一次性传递给函数（Passing composite arguments to a function）

```cpp
void display(std::vector<int> const& values)
{
    // ...
}
display({1, 2, 3, 4, 5, 6, 7, 8, 9, 10});
```

3. 让函数返回多个数据（Returning composite, objects from a function）

```cpp
std::vector<int> numbers()
{
    return {0, 1, 2, 3, 4, 5};
}
```

4. 复杂结构类型的初始化（Aggregate initialization）

```cpp
struct Point
{
    int x;
    int y;
    int z;
};
Point p = {1, 2, 3};
```

5. RAII（“资源获取即初始化”）

```cpp
void f()
{ // scope opening

    std::unique_ptr<X> myResource = // ...
    ...

} // scope closing, unique_ptr is destroyed, the underlying pointer is deleted
```
