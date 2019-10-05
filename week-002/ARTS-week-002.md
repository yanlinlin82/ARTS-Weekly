# 左耳听风ARTS第二周（2019年10月5日）

## Algorithm

**链接：** <https://leetcode-cn.com/problems/longest-consecutive-sequence>

**题目：**

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

本周其他解题：

* [两数相加](https://github.com/yanlinlin82/leetcode/blob/master/00002_add-two-numbers/190930-2.cpp)
* [无重复字符的最长子串](https://github.com/yanlinlin82/leetcode/blob/master/00003_longest-substring-without-repeating-characters/191001-1.cpp)
* [寻找两个有序数组的中位数](https://github.com/yanlinlin82/leetcode/blob/master/00004_median-of-two-sorted-arrays/191003-2.cpp)
* [最长回文子串](https://github.com/yanlinlin82/leetcode/blob/master/00005_longest-palindromic-substring/191003-2.cpp)
* [Z 字形变换](https://github.com/yanlinlin82/leetcode/blob/master/00006_zigzag-conversion/191004-1.cpp)
* [整数反转](https://github.com/yanlinlin82/leetcode/blob/master/00007_reverse-integer/191005-1.cpp)
* [字符串转换整数 (atoi)](https://github.com/yanlinlin82/leetcode/blob/master/00008_string-to-integer-atoi/191005-1.cpp)

<https://github.com/yanlinlin82/leetcode>

## Review


## Tip


## Share
