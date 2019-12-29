---
title: ARTS第十五周（2019年12月30日~2020年1月5日）
date: 2019-12-30T00:22:24+08:00
slug: week-015
---

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 51 | 困难 | [N皇后](https://leetcode-cn.com/problems/n-queens/) | [191230-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00051_n-queens/191230-1.cpp) | 8 ms | 10.4 MB | [91.93%](https://leetcode-cn.com/submissions/detail/41676707/) |
| 52 | 困难 | [N皇后 II](https://leetcode-cn.com/problems/n-queens-ii/) | [191230-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00052_n-queens-ii/191230-1.cpp) | 4 ms | 8.1 MB | [90.65%](https://leetcode-cn.com/submissions/detail/41676923/) |
| 53 | 简单 | [最大子序和](https://leetcode-cn.com/problems/maximum-subarray/) | [191230-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00053_maximum-subarray/191230-1.cpp) | 464 ms | 9.2 MB | [5.73%](https://leetcode-cn.com/submissions/detail/41677377/) |

## Review


## Tip

### (1) 《[掘金：5行代码带你实现一个js的打字效果](https://juejin.im/post/5ddf55835188257313541581)》 {#tip-1}

```js
const dom = document.querySelector('.content')
const data = '最简单的打字效果代码'.split('')
    let index = 0
    function writing(index) {
        if (index < data.length) {
            dom.innerHTML += data[index]
            setTimeout(writing.bind(this), 200, ++index)
        }
    }
```

前端代码有时候的确很小巧精妙。这段代码，首先把字符串切分成一个个字符，然后利用定时器逐个追加到网页元素中，从而实现了打字效果。文中还在此基础上，进一步实现了光标闪烁、给汉字加拼音、加动画等效果。

## Share

### (1) 《[步履蹒跚六十年：中文编程史话](https://mp.weixin.qq.com/s/ozvbgxQLBQftyGRSWIAQag)》 {#share-1}

这篇文章，来自前些天GitHub上热门的[文言编程项目](https://github.com/LingDong-/wenyan-lang)里，评论者中有人做的自荐。

文中提及了中国计算机产业发展历史上出现的各种中文编程相关的事件，从这些史料可以看出，当年也还是有不少人，在如何用中文进行编程这件事上，做出了认真思考的。

是否该使用中文进行编程，这是一直存在争议的问题。如果仅仅把一些关键字的翻译当作中文编程，那么的确没什么意义。但如果是结合语言文化特点，并将其理念融入到某些计算机执行逻辑中，体现到语法设计上，或许会成为某些创新点呢。很多现代语言，其实也是在突破旧语言的框架之后，才形成自己特色和优势的。
