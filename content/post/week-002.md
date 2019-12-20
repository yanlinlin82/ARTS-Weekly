---
title: ARTS第二周（2019年9月30日~10月6日）
date: 2019-10-05T21:56:04+0800
slug: week-002
---

## Algorithm

* [leetcode题库](https://leetcode-cn.com/problemset/all/)

### 成绩表

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 3 | 中等 | [无重复字符的最长子串](https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/) | [191001-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00003_longest-substring-without-repeating-characters/191001-1.cpp) | 12 ms | 9 MB | [87.97%](https://leetcode-cn.com/submissions/detail/31776630/) |
| 4 | 困难 | [寻找两个有序数组的中位数](https://leetcode-cn.com/problems/median-of-two-sorted-arrays/) | [191003-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00004_median-of-two-sorted-arrays/191003-2.cpp) | 20 ms | 9.4 MB | [91.87%](https://leetcode-cn.com/submissions/detail/31918248/) |
| 5 | 中等 | [最长回文子串](https://leetcode-cn.com/problems/longest-palindromic-substring/) | [191003-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00005_longest-palindromic-substring/191003-2.cpp) | 16 ms | 8.8 MB | [91.45%](https://leetcode-cn.com/submissions/detail/31956790/) |
| 6 | 中等 | [Z 字形变换](https://leetcode-cn.com/problems/zigzag-conversion/) | [191004-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00006_zigzag-conversion/191004-1.cpp) | 8 ms | 9.9 MB | [97.93%](https://leetcode-cn.com/submissions/detail/32021439/) |
| 7 | 简单 | [整数反转](https://leetcode-cn.com/problems/reverse-integer/) | [191005-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00007_reverse-integer/191005-1.cpp) | 4 ms | 8.2 MB | [86.49%](https://leetcode-cn.com/submissions/detail/32049490/) |
| 8 | 中等 | [字符串转换整数 (atoi)](https://leetcode-cn.com/problems/string-to-integer-atoi/) | [191005-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00008_string-to-integer-atoi/191005-1.cpp) | 4 ms | 8.3 MB | [93.74%](https://leetcode-cn.com/submissions/detail/32077883/) |
| 9 | 简单 | [回文数](https://leetcode-cn.com/problems/palindrome-number/) | [191006-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00009_palindrome-number/191006-1.cpp) | 8 ms | 8.1 MB | [96.62%](https://leetcode-cn.com/submissions/detail/32113548/) |
| 10 | 困难 | [正则表达式匹配](https://leetcode-cn.com/problems/regular-expression-matching/) | [191006-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00010_regular-expression-matching/191006-2.cpp) | 40 ms | 8.5 MB | [45.02%](https://leetcode-cn.com/submissions/detail/32115466/) |

### 解答详情

**链接：** <https://leetcode-cn.com/problems/longest-consecutive-sequence>

**题目：** 最长连续序列

给定一个未排序的整数数组，找出最长连续序列的长度。

要求算法的时间复杂度为**O(n)**。

**示例:**

> **输入: ** [100, 4, 200, 1, 3, 2]  
> **输出: ** 4  
> **解释: ** 最长连续序列是 [1, 2, 3, 4]。它的长度为 4。

**解答：**

```cpp
class Solution {
public:
    int longestConsecutive(vector<int>& nums) {
        int n = nums.size();
        if (n == 0) return 0;
        unordered_map<int, pair<int, int>> r;
        int longest = 1;
        for (int i = 0; i < n; ++i) {
            int v = nums[i];
            auto p = r.find(v);
            if (p != r.end()) continue; // skip if existed

            auto p1 = r.find(v - 1);
            int min = (p1 == r.end() ? v : p1->second.first);

            auto p2 = r.find(v + 1);
            int max = (p2 == r.end() ? v : p2->second.second);

            r[v] = make_pair(min, max);
            if (min < v) r[min] = r[v];
            if (max > v) r[max] = r[v];

            int range = max - min + 1;
            if (longest < range) {
                longest = range;
            }
        }
        return longest;
    }
};
```

## Review

[\[CodeProject\] Cryptographic Hashes: What They Are, and Why You Should be Friends](https://www.codeproject.com/Articles/1044042/Cryptographic-Hashes-What-They-Are-and-Why-You-Sho)

本文展示了什么是密码学哈希函数（cryptographic hash function），以及相应的一些应用场景。

哈希函数能将不定长的原始数据映射到定长的数据空间。密码学哈希函数则是一种特定的哈希函数，具有不可逆（non-invertible）的特性，即无法单纯从输出结果（也称为“信息摘要(message digest)”），还原出原始数据内容（也称为“信息(message)”）。除此之外，密码学哈希函数通常还具有如下特征：

1. 易计算（computationally easy）：从信息计算信息摘要是容易的。
2. 信息完整（message integrity）：信息的变动必然引发信息摘要的变动。
3. 耐碰撞（collision resistance）：很难找到同一信息摘要所对应的多个不同信息。

常见的密码学哈希函数包括：

* [MD5](https://en.wikipedia.org/wiki/MD5)
* [SHA-1](https://en.wikipedia.org/wiki/SHA-1)
* [SHA-2](https://en.wikipedia.org/wiki/SHA-2)
* [SHA-3](https://en.wikipedia.org/wiki/SHA-3)

常见应用：

* 文件的校验，尤其是经过网络传输、或一些易损坏的存储介质的文件。
* 区块链技术，用于标记一个区块、标识某个比特币地址，以及工作量证明（[Proof-of-Work](https://en.bitcoin.it/wiki/Proof_of_work)）等。

本文还展示了如下实例：

* SHA1碰撞，从而证实了该函数的确已经不安全。
* 命令行或C/C++代码实现常见密码学哈希函数的计算。

## Tip

本地目录的快速搜索利器：ag <https://geoff.greer.fm/ag/>

平常阅读和修改源码时，经常需要在全目录搜索某些关键词，过去通常的做法是使用grep配合一系列的shell循环，遇到文件较多的情况，就奇慢无比。这个工具的确非常有优势，能够节省大量时间。

## Share

关注CppCon：

以C++为常用语言的程序员，应该关注C++新标准（C++11/14/17/20）的发展，并尽量利用这些新特性，来提高自己代码的开发维护效率和质量。[CppCon](http://cppcon.org/)是一个每年举办的会议，并且公开相应的视频和幻灯片等内容，值得逐一学习。

相应链接：

* [CppCon](http://cppcon.org/)
* [CppCon2019](https://cppcon.org/cppcon-2019-program/)
* [CppCon2019的相关共享资料](https://github.com/CppCon/CppCon2019)
