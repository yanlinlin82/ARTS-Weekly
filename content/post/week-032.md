---
title: ARTS第三十二周（2020年4月27日~5月3日）
date: 2020-05-03T13:12:40+08:00
slug: week-032
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 225 | 简单 | [用队列实现栈](https://leetcode-cn.com/problems/implement-stack-using-queues/) | [200503-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00225_implement-stack-using-queues/200503-1.cpp) | 0 ms | 6.8 MB | [100.00%](https://leetcode-cn.com/submissions/detail/67745616/) |  |
| 226 | 简单 | [翻转二叉树](https://leetcode-cn.com/problems/invert-binary-tree/) | [200503-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00226_invert-binary-tree/200503-1.cpp) | 0 ms | 9.3 MB | [100.00%](https://leetcode-cn.com/submissions/detail/67749189/) |  |
| 227 | 中等 | [基本计算器 II](https://leetcode-cn.com/problems/basic-calculator-ii/) | [200503-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00227_basic-calculator-ii/200503-1.cpp) | 16 ms | 7.7 MB | [76.74%](https://leetcode-cn.com/submissions/detail/67800879/) |  |
| 228 | 中等 | [汇总区间](https://leetcode-cn.com/problems/summary-ranges/) | [200503-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00228_summary-ranges/200503-1.cpp) | 0 ms | 7.1 MB | [100.00%](https://leetcode-cn.com/submissions/detail/67803410/) |  |
| 229 | 中等 | [求众数 II](https://leetcode-cn.com/problems/majority-element-ii/) | [200503-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00229_majority-element-ii/200503-1.cpp) | 48 ms | 15.4 MB | [7.49%](https://leetcode-cn.com/submissions/detail/67805669/) |  |

## Review {{<permalink "review">}}

### 1. 疫情下经济衰退中企业的攻防策略 {{<permalink "review-1">}}

分享链接：[Startup Offense and Defense in the Recession](http://blog.eladgil.com/2020/05/startup-offense-and-defense-in-recession.html)

这篇文章虽然是从企业的角度，但相应的影响的确会影响到我们每个人。数据虽然来自美国，但是对我们也有相应的启示意义。

防御性措施：

1. 检查现金消耗，要理清未来2-3年的花费预算
2. 在经济衰退中筹集资金
3. 了解哪些客户有风险，哪些客户应该接受
4. 计划停止招聘或裁员
5. 建立企业文化提升员工稳定性

进攻性措施：

1. 重新定位公司，寻求更快发展
2. 雇用优秀人才
3. 抓住机会并购
4. 建立护城河，建立基础设施

## Tip {{<permalink "tip">}}

### 1. 同时使用多个git分支的方法 {{<permalink "tip-1">}}

分享链接：[Git Worktrees: The Best Git Feature You’ve Never Heard Of](https://levelup.gitconnected.com/git-worktrees-the-best-git-feature-youve-never-heard-of-9cd21df67baf)

从这篇文章学习到一个新的git子命令：`git worktree`，使用它，可以在不更改当前工作目录内容的情况下，checkout或新建其他分支，用于快速做一些类似bugfix的尝试：

```sh
$ git worktree add bugfix
$ git worktree list
```

新的分支会出现在`bugfix`子目录，它会复用主工作目录的`.git`信息，并做必要的关联，而不会需要重新clone整个仓库。

一旦完成修改并提交，可以通过下面的命令进行清理：

```sh
$ git worktree remove bugfix
```

也可以直接删除该子目录，并用如下命令善后：

```sh
$ git worktree remove prune
```

## Share {{<permalink "share">}}

### 1. R语言中有关广义线性模型的一些资源 {{<permalink "share-1">}}

分享链接：[Revolutions: Some R Resources for GLMs](https://blog.revolutionanalytics.com/2014/04/some-r-resources-for-glms.html)
