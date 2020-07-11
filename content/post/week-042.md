---
title: ARTS第四十二周（2020年7月6日~12日）
date: 2020-07-11T10:07:24+08:00
slug: week-042
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 289 | 中等 | [生命游戏](https://leetcode-cn.com/problems/game-of-life/) | [200711-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00289_game-of-life/200711-1.cpp) | 4 ms | 7 MB | [47.73%](https://leetcode-cn.com/submissions/detail/86693681/) |  |
| 290 | 简单 | [单词规律](https://leetcode-cn.com/problems/word-pattern/) | [200711-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00290_word-pattern/200711-1.cpp) | 0 ms | 6.5 MB | [100.00%](https://leetcode-cn.com/submissions/detail/86700946/) |  |

## Review {{<permalink "review">}}

### 1. 安全性与易用性的平衡 {{<permalink "review-1">}}

分享链接：[Disabling Google 2FA Doesn't Need 2FA](https://www.infoq.com/news/2020/07/google-password-2fa-woes/)

这篇文章在讨论google账户在安全性方面的一个应用场景，当用户已经登录，按照设计，出于易用性考虑，在关闭其双重认证（2FA）选项时，是不会需要再做2FA验证的。这就导致了信息安全的隐患，使密码管理器中的内容可能被窃取，而用户自己可能无法及时知晓。

关于安全性的改进，通常都会带来易用性的降低。最终的产品，还是需要不断在两者之间寻求一个平衡点。

## Tip {{<permalink "tip">}}

### 1. 在Rmarkdown中展示数据表格 {{<permalink "tip-1">}}

分享链接：[How to Make Beautiful Tables in R](https://rfortherestofus.com/2019/11/how-to-make-beautiful-tables-in-r/)

在Rmarkdown中，除了采用统计图形来展示数据结果外，经常有必要用表格来直接展示数据本身。然而markdown本身对表格的支持能力是很弱的，因此需要各种扩展R包来帮助，才能实现不同效果的展示。

这篇文章列出了多个可选的R包，并给出了相应的示例截图：

* `gt`
* `kable` + `kableExtra`
* `formattable`
* `DT`
* `reactable`
* `flextable`
* `huxtable`
* `rhandsontable`
* `pixiedust`

## Share {{<permalink "share">}}


