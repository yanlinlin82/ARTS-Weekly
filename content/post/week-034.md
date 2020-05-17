---
title: ARTS第三十四周（2020年5月11日~17日）
date: 2020-05-16T13:27:16+08:00
slug: week-034
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 234 | 简单 | [回文链表](https://leetcode-cn.com/problems/palindrome-linked-list/) | [200517-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00234_palindrome-linked-list/200517-1.cpp) | 28 ms | 14.9 MB | [67.09%](https://leetcode-cn.com/submissions/detail/71507619/) |  |
| 235 | 简单 | [二叉搜索树的最近公共祖先](https://leetcode-cn.com/problems/lowest-common-ancestor-of-a-binary-search-tree/) | [200517-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00235_lowest-common-ancestor-of-a-binary-search-tree/200517-1.cpp) | 44 ms | 23.3 MB | [63.32%](https://leetcode-cn.com/submissions/detail/71512231/) |  |
| 236 | 中等 | [二叉树的最近公共祖先](https://leetcode-cn.com/problems/lowest-common-ancestor-of-a-binary-tree/) | [200517-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00236_lowest-common-ancestor-of-a-binary-tree/200517-1.cpp) | 40 ms | 18.5 MB | [16.45%](https://leetcode-cn.com/submissions/detail/71561365/) |  |

## Review {{<permalink "review">}}

### 1. 关于随机数与内核 {{<permalink "review-1">}}

分享链接：[Entropy and the NetBSD kernel](https://washbear.neocities.org/entropy.html)

这篇文章有一个神奇的标题：

```
int random() { return 4; /* Good enough. */ }
```

它其实并没有像第一眼看到时让人感觉的那么离谱。

这篇文章描述了NetBSD内核中关于随机数实现的一些问题。提及现代CPU提供了某些“真”随机数的方案甚至指令，然而绝大多数的操作系统和程序其实都不会使用它们，甚至主动绕过它们。而这些随机数发生器的原理，甚至可能被恶意利用，让该随机变得不再随机，而符合攻击者的某些期望需求。

## Tip {{<permalink "tip">}}

### 1. 如何去掉git仓库中的敏感信息 {{<permalink "tip-1">}}

分享链接：[Removing sensitive data from a repository](https://help.github.com/en/github/authenticating-to-github/removing-sensitive-data-from-a-repository)

当存在较大文件，想从仓库中去掉时，也可以用这个方法。

这个方法其实是把历史提交中某些commit过滤去掉，具体操作如下：

```sh
$ git filter-branch --force --index-filter \
  "git rm --cached --ignore-unmatch PATH-TO-YOUR-FILE-WITH-SENSITIVE-DATA" \
  --prune-empty --tag-name-filter cat -- --all
  > Rewrite 48dc599c80e20527ed902928085e7861e6b3cbe6 (266/266)
  > Ref 'refs/heads/master' was rewritten
```

```sh
$ echo "YOUR-FILE-WITH-SENSITIVE-DATA" >> .gitignore
$ git add .gitignore
$ git commit -m "Add YOUR-FILE-WITH-SENSITIVE-DATA to .gitignore"
> [master 051452f] Add YOUR-FILE-WITH-SENSITIVE-DATA to .gitignore
>  1 files changed, 1 insertions(+), 0 deletions(-)
```

```sh
$ git push origin --force --all
> Counting objects: 1074, done.
> Delta compression using 2 threads.
> Compressing objects: 100% (677/677), done.
> Writing objects: 100% (1058/1058), 148.85 KiB, done.
> Total 1058 (delta 590), reused 602 (delta 378)
> To https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git
>  + 48dc599...051452f master -> master (forced update)
```

## Share {{<permalink "share">}}

### 1. 以游戏方式学习Git用法 {{<permalink "share-1">}}

分享链接：[如果你觉得学习 Git 很枯燥，那是因为你还没玩过这款游戏！](https://xie.infoq.cn/article/8d0017831bf4ba567549a818d)

“寓教于乐”这句口号似乎永远不会过时。这个项目，对此也是一种体现，用游戏的方式，帮助人掌握git的基本用法，初学者值得试试。
