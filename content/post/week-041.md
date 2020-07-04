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

## Share {{<permalink "share">}}

