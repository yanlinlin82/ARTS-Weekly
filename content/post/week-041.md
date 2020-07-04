---
title: ARTS第四十一周（2020年6月29日~7月5日）
date: 2020-06-29T08:02:38+08:00
slug: week-041
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 283 | 简单 | [移动零](https://leetcode-cn.com/problems/move-zeroes/) | [200705-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00283_move-zeroes/200705-1.cpp) | 8 ms | 8.9 MB | [90.90%](https://leetcode-cn.com/submissions/detail/84721762/) |  |
| 284 | 中等 | [顶端迭代器](https://leetcode-cn.com/problems/peeking-iterator/) | [200705-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00284_peeking-iterator/200705-1.cpp) | 0 ms | 7.7 MB | [100.00%](https://leetcode-cn.com/submissions/detail/84722787/) |  |
| 287 | 中等 | [寻找重复数](https://leetcode-cn.com/problems/find-the-duplicate-number/) | [200705-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00287_find-the-duplicate-number/200705-1.cpp) | 28 ms | 12.8 MB | [22.99%](https://leetcode-cn.com/submissions/detail/84723325/) |  |

## Review {{<permalink "review">}}

### 1. “语境坍缩”与“内容坍缩” {{<permalink "review-1">}}

分享链接：[From context collapse to content collapse](http://www.roughtype.com/?p=8724)

在互联网社交平台普及前，人们在不同语境下，与不同圈子的人，发表不同言论。如今，社交网络上的发声，往往无差别地传递到了这些不同语境的对象。此即“语境坍缩”。

社交平台逐渐允许屏蔽信息只让部分人看到，以此来对抗“语境坍缩”的影响。

新近发生的，更多是“内容坍缩”，即大量不同内容提供者，开始在同一场景下竞争厮杀，这相比过去门户网站把控着主流观点及内容的情况，是一种进步。

## Tip {{<permalink "tip">}}

### 1. 如何解决ggplot输出PDF时汉字显示不正常的问题 {{<permalink "tip-1">}}

这是在实际应用场景中遇到的问题，在输出一个图表到pdf文件，其中内容包含汉字时，出现了如下警告（通过`warnings()`查看到）：

```
In grid.Call.graphics(C_text, as.graphicsAnnot(x$label), ... :
  conversion failure on '汉字' in 'mbcsToSbcs': dot substituted for <xx>
```

该问题可以通过安装并装载一个R包进行解决：

```r
install.packages("emojifont")
library(emojifont)
```

参考链接：[R-help: display UTF8 characters in pdf](https://r.789695.n4.nabble.com/display-UTF8-characters-in-pdf-td4729577.html)

### 2. 如何使用GPG验证下载的软件包 {{<permalink "tip-2">}}

今天在Windows系统下载Putty工具的安装包，该下载页面提供了signature，用于验证软件包未被篡改（此前存在过非官网下载该工具被植入了木马的情况）。

需要使用软件包GnuPG：<https://www.gnupg.org/>

使用方法如下：

```sh
$ gpg --verify putty-64bit-0.74-installer.msi.gpg putty-64bit-0.74-installer.msi
gpg: Signature made Sat 27 Jun 2020 03:01:02 PM CST
gpg:                using RSA key E27394ACA3F9D9049522E0546289A25F4AE8DA82
gpg: Can't check signature: No public key
```

这时提示没有公钥，于是尝试搜索该公钥，并根据提示输入数字“1”，导入该公钥：

```sh
yanll@yanll-laptop [2020-07-04 18:08:11] ~/Downloads $ gpg --search E27394ACA3F9D9049522E0546289A25F4AE8DA82
gpg: data source: https://192.146.137.141:443
(1)	PuTTY Releases <putty@projects.tartarus.org>
	  3072 bit RSA key 6289A25F4AE8DA82, created: 2018-08-19, expires: 2021-09-02
Keys 1-1 of 1 for "E27394ACA3F9D9049522E0546289A25F4AE8DA82".  Enter number(s), N)ext, or Q)uit > 1
gpg: key 6289A25F4AE8DA82: public key "PuTTY Releases <putty@projects.tartarus.org>" imported
gpg: Total number processed: 1
gpg:               imported: 1
```

再次检查签名：

```sh
yanll@yanll-laptop [2020-07-04 18:10:23] ~/Downloads $ gpg --verify putty-64bit-0.74-installer.msi.gpg putty-64bit-0.74-installer.msi
gpg: Signature made Sat 27 Jun 2020 03:01:02 PM CST
gpg:                using RSA key E27394ACA3F9D9049522E0546289A25F4AE8DA82
gpg: Good signature from "PuTTY Releases <putty@projects.tartarus.org>" [unknown]
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: E273 94AC A3F9 D904 9522  E054 6289 A25F 4AE8 DA82
```

提示验证成功（`Good signature`）。

其他参考链接：[The GNU Privacy Handbook: Making and verifying signatures](https://www.gnupg.org/gph/en/manual/x135.html)

## Share {{<permalink "share">}}

### 1. 打造一个旧式的BASIC解释器 {{<permalink "share-1">}}

分享链接：[Building a BASIC Interpreter, '80s style](https://able.bio/kerrishotts/building-a-basic-interpreter-80s-style--79a9d703)

这应该是系列文章的其中一篇。作者在尝试重现上世纪80年代的一些工作，即仅使用汇编语言这样的支持有限的平台，重新打造一个BASIC的解释器。

在这篇文章中，作者介绍了“line transformation（列格式转换）”、“tokenization（词语切分）”和“runtime syntex checking（运行时语法检查）”这三个解释器重要实现环节，以及相应的汇编代码实现。

这种重新发明轮子的做法，其实是很有效的学习方法，因为在这个过程中，有大量隐含的问题，会暴露在操作者的视野中，使其得到相应的技能锻炼和提高。我自己也曾尝试过用C++写一个C++解释器：[icpp: an interpreter for C++](https://github.com/yanlinlin82/icpp)，虽然并没有完全完成，但的确是一段很有意思也很有启发的旅程。
