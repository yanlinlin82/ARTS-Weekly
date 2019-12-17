---
title: ARTS第六周（2019年10月28日~11月3日）
date: 2019-11-04T00:47:52+0800
slug: week-006
---

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

* [合并两个有序链表](https://github.com/yanlinlin82/leetcode/blob/master/00021_merge-two-sorted-lists/191028-1.cpp)
* [括号生成](https://github.com/yanlinlin82/leetcode/blob/master/00022_generate-parentheses/191104-1.cpp)

## Review

[The Case for C++](https://itnext.io/the-case-for-c-4122a5b47130)

这篇文章快速介绍了现代C++（即C++11以来的新标准）的一些新特性，并提供了一些社区、工具等资源。

其中让我比较惊艳的是管道的实现（我之前尝试自己做做，但没能成功，后面还打算深入学习下其原理）：

```cpp
auto genYNames = people | filter(younger_than(39))
                        | filter(older_than(19))
                        | transform(names)
                        | sort()
                        | unique();
for_each(genYNames, [](auto name) {
    cout << name << "\n";
});
```

这篇文章，让我重拾对现代C++的信心。因为C++在表现得更加现代的同时，也依然能够几乎完全兼容旧语言规范，从而使这门语言能够应用在跨度更大的范围。

## Tip

**如何在bash里读取csv文件**

过去，我在bash里用`read`命令读取csv文件时，总需要先用tr或awk做转换，例如：

```
$ echo -e "a,b\n1,2" | tr ',' '\t' | while read a b; do echo "($a) ($b)"; done
(a) (b)
(1) (2)
```

通过这篇文章，了解到可以直接设置`IFS`变量来实现同样效果：

```
$ echo -e "a,b\n1,2" | while IFS=',' read a b; do echo "($a) ($b)"; done
(a) (b)
(1) (2)
```

参考：<https://www.cyberciti.biz/faq/unix-linux-bash-read-comma-separated-cvsfile/>

## Share

[Build your own (insert technology here)](https://github.com/danistefanovic/build-your-own-x)

GitHub上超过5万星标的项目，收集各类“自己打造”系列链接。所谓“不要造轮子，除非想学透”，亲自折腾，才是技能内化的捷径。
