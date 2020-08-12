---
title: ARTS第四十七周（2020年8月10日~16日）
date: 2020-08-11T21:26:59+08:00
slug: week-047
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|:-----|
| 309 | 中等 | [最佳买卖股票时机含冷冻期](https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/) | [200810-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00309_best-time-to-buy-and-sell-stock-with-cooldown/200810-1.cpp) | 12 ms | 11.4 MB | 20.83% | 49.05% | [查看结果](https://leetcode-cn.com/submissions/detail/96759963/) |  |
| 310 | 中等 | [最小高度树](https://leetcode-cn.com/problems/minimum-height-trees/) | [200810-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00310_minimum-height-trees/200810-1.cpp) | 196 ms | 34.9 MB | 18.58% | 5.27% | [查看结果](https://leetcode-cn.com/submissions/detail/97503655/) |  |

## Review {{<permalink "review">}}

### 1. 关于随机对照实验 {{<permalink "review-1">}}

分享链接：[Essentially random isn't the same as actually random](http://freerangestats.info/blog/2020/08/09/country-regression)

这篇文章是对新冠病毒治疗的统计学问题。文章呼吁不要滥用随机对照实验的各种术语，以免造成公众对于相关临床试验或临床研究的误解。

由于涉及过多经济与政治等因素，新冠的很多媒体发表内容，都未必能遵循客观公正的态度。正确理解相应的数据及其解读，保持客观独立的判断，是技术人该有的态度。

## Tip {{<permalink "tip">}}

### 1. Perl打印宽字符报错的解决 {{<permalink "tip-1">}}

Perl出现“Wide character in print”报错的解决方法：

在perl脚本的首行加入参数“-CSDA”：

```perl
#!/usr/bin/perl -CSDA
```

参考链接：

* [三种方式解决“Wide character in print”](https://blog.csdn.net/konglongaa/article/details/52326657)
* [Solve Perl “Wide Character in Print”](https://blog.ostermiller.org/perl-wide-character-in-print/)

### 2. 批量截取图片区域，并合并到PDF文件 {{<permalink "tip-2">}}

使用ImageMagick工具，可以很方便地实现批量截取图片区域，并合并成为PDF文件的操作：

```sh
ls -l in/      # 输入图片，都位于此目录
mkdir -v out/  # 输出临时图片目录
ls in/ | while read f; do \
  echo $f; \
  convert in/$f -crop 1920x1080+120+0 out/$f; \
done           # 使用bash循环，逐个截取图片区域
convert out/* out.pdf   # 合并成为pdf
```

### 3. 如何解决ImageMagick的"security policy 'PDF' ..."的报错 {{<permalink "tip-3">}}

在使用ImageMagick的convert命令输出pdf文件时，若出现如下报错：

```
$ convert in.png out.pdf
convert: attempt to perform an operation not allowed by the security policy `PDF' @ error/constitute.c/IsCoderAuthorized/408.
```

则可以通过修改配置文件`/etc/ImageMagick-7/policy.xml`来解决：

```
<policy domain="coder" rights="read | write" pattern="PDF" />
```

参考：[StackOverflow: ImageMagick security policy 'PDF' blocking conversion](https://stackoverflow.com/questions/52998331/imagemagick-security-policy-pdf-blocking-conversion)


## Share {{<permalink "share">}}

### 1. Perl电子书 {{<permalink "share-1">}}

分享链接：[Modern Perl, 4e](http://modernperlbooks.com/books/modern_perl_2016/index.html)

Perl作为一门相对“古老”的语言，至今仍保持着演化和改进。通过一些“现代”的写法，Perl的代码也能写得易于维护，且开发高效。这本书作为这方面的教程，值得深入学习，掌握这些知识，也能帮助我们避免Perl语言上可能出现的掉坑。
