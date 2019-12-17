# 左耳听风ARTS第十三周（2019年12月16日~22日）

[返回目录](README.md#打卡记录)

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:-----|---------:|---------:|-----:|
| 42 | 困难 | [接雨水](https://leetcode-cn.com/problems/trapping-rain-water/) | [191216-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00042_trapping-rain-water/191216-1.cpp) | 496 ms | 10.1 MB | [5.05%](https://leetcode-cn.com/submissions/detail/40112534/) |
| 43 | 中等 | [字符串相乘](https://leetcode-cn.com/problems/multiply-strings/) | [191217-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00043_multiply-strings/191217-1.cpp) | 8 ms | 9.7 MB | [80.75%](https://leetcode-cn.com/submissions/detail/40348646/) |

## Review

* [7 Advanced C++ Concepts You Should Know](https://dev.to/visheshpatel/7-advanced-c-concepts-you-should-know-4gog)

这篇文章介绍了C++中的七个高级概念：

1. RAII（Resource Acquisition Is Initialization，资源获取即初始化）：这种方法利用变量生存期来管理资源，在变量销毁时，通过其类型的析构函数进行资源释放，从而有效避免资源泄露。
2. Return Type Resolver（返回类型的识别）：通常对函数的重载，是不允许两个函数只有返回类型有差别的，然而通过将函数封装成为某个类的构造函数，同时为该类提供一个模板化的类型转换运算符（templatized conversion operator），可以实现相应效果。详见文中示例。
3. Type Erasure（类型清除）：对于C++这种强类型语言，想要实现一些弱类型语言的效果（诸如新标准提供的`std::any`、`std::variant`和`std::function`等），就需要用到这项技术，可以通过模板、多态重载、联合（union）类型等方式来实现。
4. CRTP（Curiously Recurring Template Pattern，奇异递归模板模式）：这是为了实现静态（即编译期）多态性，通过将类型依赖的代码单独提出来实现，而将类型独立的代码，放到模板类或模板函数中实现，从而实现不用类继承方式的多态性，避免增加虚指针带来的额外运行时开销。
5. Virtual Constructor（虚构造函数）：设计模式中的工厂方法，根据一个已经实例化出来的对象，去构造（或克隆）一个同类型的新实例对象出来。
6. SFINAE and `std::enable_if`（Substitution Failure Is Not An Error，替换失败不是错误）：这是一个现代C++编译器提供的特性，通过这个特性，可以实现各种模板偏特化效果，在编译期完成更多逻辑判断。
7. Proxy（代理）：这是应用中间类的方法，来实现面向对象的二维数组，所以也可能被看成仅仅是`operator []`的一种技巧。详细描述可参见文中示例。

## Tip

如何列出Linux系统过去的重启时间

```sh
$ last reboot
```

来源：<https://www.cyberciti.biz/tips/linux-last-reboot-time-and-date-find-out.html>

## Share
