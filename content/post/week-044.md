---
title: ARTS第四十四周（2020年7月20日~26日）
date: 2020-08-02T23:05:43+08:00
slug: week-044
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 299 | 简单 | [猜数字游戏](https://leetcode-cn.com/problems/bulls-and-cows/) | [200802-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00299_bulls-and-cows/200802-1.cpp) | 8 ms | 6.7 MB | [59.69%](https://leetcode-cn.com/submissions/detail/94010758/) |  |
| 300 | 中等 | [最长上升子序列](https://leetcode-cn.com/problems/longest-increasing-subsequence/) | [200802-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00300_longest-increasing-subsequence/200802-1.cpp) | 124 ms | 7.8 MB | [10.13%](https://leetcode-cn.com/submissions/detail/94018631/) |  |

## Review {{<permalink "review">}}

### 1. 竞争性编程 {{<permalink "review-1">}}

分享链接：[How to Competitive Programming](https://dev.to/veluvj/how-to-competitive-programming-19k7)

这篇文章介绍了竞争性编程（Competitive Programming）这个概念，指编程的目的在于参与各类竞赛挑战，像是参加运动会的运动员。并分为四个不同层次或阶段：

1. 选择语言。通常选择C++、Java或Python。C++被选择较多，是因为其性能较好，且有STL这样的标准库。
2. DSA（数据结构及算法）与数学。这部分算是基础知识，帮助真正提高编程能力。
3. 参与各类竞赛挑战。
4. 更深入和专业地研究问题及其编程解决方法。

## Tip {{<permalink "tip">}}

### 1. CSS实现手风琴效果 {{<permalink "tip-1">}}

分享链接：[纯CSS实现手风琴效果（附演示）](https://blog.csdn.net/weixin_41700993/article/details/106441304)

在网页多级菜单中，通常会出现鼠标移动到某个菜单项，相应子菜单展开的效果。一直以为这样的效果必须有JS代码才能完成。然而，这里展示了一种纯CSS的实现方法。其核心是使用了`overflow`和`transition`属性：

```css
.box-item-content {
  cursor: pointer;
  height: 0;
  overflow: hidden;
  background-color: #1abc9c;
  transition: .5s all;
}
```

## Share {{<permalink "share">}}

### 1. LaTeX学习教程 {{<permalink "share-1">}}

分享链接：[Overleaf: Learn LaTeX in 30 minutes](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)

尽管平时Word用得更多，且现在有pandoc之类的支持，写markdown也容易很多。但LaTeX作为一项古老且灵活的技术，能够确保稳定的高质量格式输出，还是值得学习和使用的。更何况，很多学术发表，使用LaTeX应该还是不错甚至首选的选择。
