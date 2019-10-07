# 左耳听风ARTS第三周（2019年10月？日）

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

## Review

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
