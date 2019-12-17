# 左耳听风ARTS第十三周（2019年12月16日~22日）

[返回目录](README.md#打卡记录)

## Algorithm

* [LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:-----|---------:|---------:|-----:|
| 42 | 困难 | [接雨水](https://leetcode-cn.com/problems/trapping-rain-water/) | [191216-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00042_trapping-rain-water/191216-1.cpp) | 496 ms | 10.1 MB | [5.05%](https://leetcode-cn.com/submissions/detail/40112534/) |
| 43 | 中等 | [字符串相乘](https://leetcode-cn.com/problems/multiply-strings/) | [191217-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00043_multiply-strings/191217-1.cpp) | 8 ms | 9.7 MB | [80.75%](https://leetcode-cn.com/submissions/detail/40348646/) |

## Review

### (1) [7 Advanced C++ Concepts You Should Know](https://dev.to/visheshpatel/7-advanced-c-concepts-you-should-know-4gog)

这篇文章介绍了C++中的七个高级概念：

1. RAII（Resource Acquisition Is Initialization，资源获取即初始化）：这种方法利用变量生存期来管理资源，在变量销毁时，通过其类型的析构函数进行资源释放，从而有效避免资源泄露。
2. Return Type Resolver（返回类型的识别）：通常对函数的重载，是不允许两个函数只有返回类型有差别的，然而通过将函数封装成为某个类的构造函数，同时为该类提供一个模板化的类型转换运算符（templatized conversion operator），可以实现相应效果。详见文中示例。
3. Type Erasure（类型清除）：对于C++这种强类型语言，想要实现一些弱类型语言的效果（诸如新标准提供的`std::any`、`std::variant`和`std::function`等），就需要用到这项技术，可以通过模板、多态重载、联合（union）类型等方式来实现。
4. CRTP（Curiously Recurring Template Pattern，奇异递归模板模式）：这是为了实现静态（即编译期）多态性，通过将类型依赖的代码单独提出来实现，而将类型独立的代码，放到模板类或模板函数中实现，从而实现不用类继承方式的多态性，避免增加虚指针带来的额外运行时开销。
5. Virtual Constructor（虚构造函数）：设计模式中的工厂方法，根据一个已经实例化出来的对象，去构造（或克隆）一个同类型的新实例对象出来。
6. SFINAE and `std::enable_if`（Substitution Failure Is Not An Error，替换失败不是错误）：这是一个现代C++编译器提供的特性，通过这个特性，可以实现各种模板偏特化效果，在编译期完成更多逻辑判断。
7. Proxy（代理）：这是应用中间类的方法，来实现面向对象的二维数组，所以也可能被看成仅仅是`operator []`的一种技巧。详细描述可参见文中示例。

### (2) [PHP: a fractal of bad design](https://eev.ee/blog/2012/04/09/php-a-fractal-of-bad-design/)

这是一篇2012年的吐槽PHP语言的文章。文中从诸如核心语言理念、运算符、变量、数据结构、错误处理、函数、面向对象、标准库、文本处理等方面，翔实地罗列了这门语言存在的问题，并给出了相应的示例，以及解释为什么这种设计是不好的。

这种有理有据的吐槽，比起很多站在道德制高点的骂战，要有价值得多。真正想要放弃或劝人放弃PHP语言的，可以仔细阅读本文，并用这里提到的理由，去说服他人。而对于仍然想继续使用PHP语言的，在这些反面示例的帮助下，也能尽可能让自己的代码变得更加可被预期、易于维护。毕竟，没有任何一门语言是完美的（即使像C++这样的“神圣”语言，也专门有一本《Impefect C++》的大部头书籍，来吐槽该语言的各种设计不足之处）。比起语言的影响，坏代码更多其实是与作者的能力水平和态度有关。

## Tip

### (1) 如何列出Linux系统过去的重启时间

```sh
$ last reboot
```

来源：[Linux Find Out Last System Reboot Time and Date Command](https://www.cyberciti.biz/tips/linux-last-reboot-time-and-date-find-out.html)

### (2) 如何去掉文件扩展名

```sh
$ basename -a -z a b c d
```

来源：[Bash get filename from given path on Linux or Unix](https://www.cyberciti.biz/faq/bash-get-filename-from-given-path-on-linux-or-unix/)

### (3) 如何检查用户的密码有效期

```sh
chage -l <用户名>
```

来源：[Linux Check User Password Expiration Date and Time](https://www.cyberciti.biz/faq/linux-howto-check-user-password-expiration-date-and-time/)

### (4) 如何按照文件修改时间，提交git

```sh
$ git commit some-file -m"description" --date="$(stat --format "%y" some-file)"
```

来源：[Git - git-commit Documentation](https://git-scm.com/docs/git-commit)

### (5) shell中检查文件是否可写

```sh
$ test -w <文件名>
$ echo $?
```

```sh
if [ -w "$FILE" ]
then
   echo "Write permission is granted on $FILE"
else
   echo "Write permission is NOT granted on $FILE"
fi
```

来源：[BASH Shell Test If a File Is Writable or Not](https://www.cyberciti.biz/faq/unix-linux-shell-scripting-test-if-filewritable/)

### (6) 检查DNS记录的TTL（Time-To-Live）

```sh
$ dig A <网址>
```

来源：[How to see Time-To-Live (TTL) for a DNS record](https://www.cyberciti.biz/faq/how-to-see-time-to-live-ttl-for-a-dns-record/)

### (7) C++关键字'override'的作用

两个目的：

1. 方便读者阅读，知道这是一个虚函数，重载了基类的对应虚函数。
2. 告诉编译器，这是重载，应检查跟基类的函数定义一致，避免错误改变了函数，变成不是重载了。

```cpp
class base
{
public:
    virtual int foo(float x) = 0;
};


class derived: public base
{
public:
    int foo(float x) override { ... do stuff with x and such ... }
}

class derived2: public base
{
public:
    int foo(int x) override { ... } // 若无‘override’关键字，则不会报错，从而被当作“类型变更”（虚机制将不会成立）
};
```

来源：[What is the 'override' keyword in C++ used for?](https://stackoverflow.com/questions/18198314/what-is-the-override-keyword-in-c-used-for)

## Share

### [Learning Basic Math Used In 3D Graphics Engines](https://www.codeproject.com/Articles/1247960/Learning-Basic-Math-Used-In-3D-Graphics-Engines)

在做游戏等相关编程时，三维物体在屏幕上的展示，是重要的环节。要实现一个三维图像引擎，需要具备一些基本的数学知识，这就是这篇文章所包含的内容。

所有的图像，最终都是由点、线、面构成。两点连线构成线段，所有的曲线都可以用切分的方法，采用多个线段组成。相应地，所有的曲面，也都可以用多个三角形来组成。最终，三维物体的移动、缩放、旋转、呈现，都会归结为点在空间坐标系中的定位。

点的平移是比较容易实现的，用加减法即可。线段的缩放，其实就是相应的乘除法。最复杂的旋转，也可用两个三角函数的公式来表示：

```
x' = x.cos(90) - y.sin(90)
y' = x.sin(90) + y.cos(90)
```

用这三种运算，就可以解决所有的点的运动的问题了。
