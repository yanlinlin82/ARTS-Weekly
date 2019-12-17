---
title: ARTS第三周（2019年10月7日~13日）
date: 2019-10-11T23:15:59+0800
slug: week-003
---

## Algorithm

**链接：** <https://leetcode-cn.com/problems/regular-expression-matching/>

**题目：** 正则表达式匹配

给你一个字符串 s 和一个字符规律 p，请你来实现一个支持 `.` 和 `*` 的正则表达式匹配。

```
'.' 匹配任意单个字符
'*' 匹配零个或多个前面的那一个元素
所谓匹配，是要涵盖 整个 字符串 s的，而不是部分字符串。
```

**说明：**

```
s 可能为空，且只包含从 a-z 的小写字母。
p 可能为空，且只包含从 a-z 的小写字母，以及字符 . 和 *。
```

**示例1:**

```
**输入:**
s = "aa"
p = "a"
**输出:** false
**解释:** "a" 无法匹配 "aa" 整个字符串。
```

**示例2:**

```
**输入:**
s = "aa"
p = "a*"
**输出:** true
**解释:** 因为 '*' 代表可以匹配零个或多个前面的那一个元素, 在这里前面的元素就是 'a'。因此，字符串 "aa" 可被视为 'a' 重复了一次。
```

**示例3:**

```
**输入:**
s = "ab"
p = ".*"
**输出:** true
**解释:** ".*" 表示可匹配零个或多个（'*'）任意字符（'.'）。
```

示例 4:

```
**输入:**
s = "aab"
p = "c*a*b"
**输出:** true
**解释:** 因为 '*' 表示零个或多个，这里 'c' 为 0 个, 'a' 被重复一次。因此可以匹配字符串 "aab"。
```

示例 5:

```
**输入:**
s = "mississippi"
p = "mis*is*p*."
**输出:** false
```

**解答：**

```cpp
struct PatternNode {
    char c;
    bool star;
    PatternNode(char ch, bool is_star) : c(ch), star(is_star) { }
};
struct MatchResult {
    int pos;
    int size;
};

class Solution {
public:
    bool isMatch(string s, string p) {
        vector<PatternNode> e;
        for (const char* t = p.c_str(); *t; ++t) {
            bool star = (*(t + 1) == '*');
            e.push_back(PatternNode(*t, star));
            if (star) ++t;
        }
        vector<MatchResult> m(e.size()); // [ { start, size }, ... ]
        for (int pos = 0, i = 0;;) {
            // match forward
            for (; i < e.size(); ++i) {
                if (e[i].c == '.') {
                    if (e[i].star) {
                        m[i].pos = pos;
                        m[i].size = s.size() - pos;
                        pos = s.size();
                    } else if (pos < s.size()) {
                        m[i].pos = pos;
                        m[i].size = 1;
                        ++pos;
                    } else {
                        break;
                    }
                } else {
                    if (e[i].star) {
                        int k = 0;
                        while (pos + k < s.size() && s[pos + k] == e[i].c) {
                            ++k;
                        }
                        m[i].pos = pos;
                        m[i].size = k;
                        pos += k;
                    } else if (pos < s.size() && s[pos] == e[i].c) {
                        m[i].pos = pos;
                        m[i].size = 1;
                        ++pos;
                    } else {
                        break;
                    }
                }
            }
            if (pos >= s.size() && i >= e.size()) return true;
            // backtrace
            for (;;) {
                if (i <= 0) return false; // backtrace failure
                if (e[i - 1].star && m[i - 1].size > 0) {
                    --m[i - 1].size;
                    pos = m[i - 1].pos + m[i - 1].size;
                    break;
                }   
                --i;
            }
        }
        return false;
    }
};
```

本周其他解题：

* [回文数](https://github.com/yanlinlin82/leetcode/blob/master/00009_palindrome-number/191006-1.cpp)
* [正则表达式匹配](https://github.com/yanlinlin82/leetcode/blob/master/00010_regular-expression-matching/191006-2.cpp)
* [盛最多水的容器](https://github.com/yanlinlin82/leetcode/blob/master/00011_container-with-most-water/191007-2.cpp)
* [整数转罗马数字](https://github.com/yanlinlin82/leetcode/blob/master/00012_integer-to-roman/191008-1.cpp)
* [罗马数字转整数](https://github.com/yanlinlin82/leetcode/blob/master/00013_roman-to-integer/191008-1.cpp)
* [最长公共前缀](https://github.com/yanlinlin82/leetcode/blob/master/00014_longest-common-prefix/191009-1.cpp)
* [三数之和](https://github.com/yanlinlin82/leetcode/blob/master/00015_3sum/191010-2.cpp)
* [最接近的三数之和](https://github.com/yanlinlin82/leetcode/blob/master/00016_3sum-closest/191011-1.cpp)

## Review

[21 Examples To Make Sure Unix / Linux Configuration Files Are Free From Syntax Errors](https://www.cyberciti.biz/tips/check-unix-linux-configuration-file-for-syntax-errors.html)

这篇文章介绍了21种Linux配置文件的语法检查方法。这些配置文件对应的命令，通常都有相应的参数，用于校验该配置文件是否存在语法错误。

在Linux系统中，文本形式的配置文件，人工修改很容易出现错误，而错误的配置会造成服务无法成功重启，尤其在远程操作中，很可能会造成无法恢复的巨大麻烦。因此，在重启之前，养成良好的配置文件语法检查习惯，对于运维是很重要的。

相应地，作为开发者，也应该提供此类参数和方法，帮助运维尽量避免骑虎南下的境地。

## Tip

如何控制ggplot的图例顺序？

参考如下代码实现：

```r
library(tidyverse)
g <- tibble(x = 1:5, y = 1:5, c = head(letters, 5), d = head(letters, 5)) %>%
  ggplot(aes(x, y)) + geom_point(aes(shape = d, color = c), size = 5)
print(g + guides(color = guide_legend(order = 1), shape = guide_legend(order = 2)))
print(g + guides(color = guide_legend(order = 2), shape = guide_legend(order = 1)))
```

## Share

[\[CodeProject\] Ultimate Guide to Become a REAL Programmer](https://www.codeproject.com/Articles/5183771/Ultimate-Guide-to-Become-a-REAL-Programmer)

这是一篇关于程序员职业生涯发展的文章。虽然文章并不直接介绍技术，但对于做技术的我们，这篇文章能够帮助我们调整好正确的心态，从而更好地做好技术。

文章介绍了程序员在职业生涯中所面临的“冒充者综合症（impostor syndrome，也称自我能力否定倾向）”，表现如何，在哪些情况下容易表现出来，以及该如何应对。

容易表现的场景：

1. 别人提问时（When Someone Asked you a Question）
2. 与别人在社交软件上比较时（Comparing Yourself With Others on Linkedin）
3. 开始一个新项目时（Start of a New Project）
4. 开始学一门新技术时（When There is a new Technology to Learn）
5. 孤身奋战时（Because You Are Alone）
6. 无法复制别人成功经验时（Seniors Are Not Helpful）
7. 疲于繁琐的零工（Grunt Work is For Juniors）
8. 推倒重来（When Rework）
9. 难以估计工作量时（Giving estimates is difficult）
10. 提交代码时（When Committing Your Code）
11. 职业生涯变道时（Change of Routine）

应对方法：

1. 用语言把感受表达出来（Express Feelings in Words）
2. 包括大神在内的每个人都有这个问题（Everybody has it even the ‘Rockstar’ Developers）
3. 保持动力（Keep up the Motivation）
4. 停止做比较（Stop Comparing）
5. 让自己坦然接受成功（Accept you have Role in the Success）
6. 与他人多讨论（Discussing With Others）
7. 与之共舞（Advance Solution: Dance with it）
