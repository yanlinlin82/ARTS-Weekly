---
title: ARTS第五十五周（2020年10月5日~11日）
date: 2020-10-05T22:26:24+08:00
slug: week-055
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|
| 344 | 简单 | [反转字符串](https://leetcode-cn.com/problems/reverse-string/) | [201011-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00344_reverse-string/201011-1.cpp) | 76 ms | 22.9 MB | 8.91% | 28.11% | [查看结果](https://leetcode-cn.com/submissions/detail/114965401/) |
| 345 | 简单 | [反转字符串中的元音字母](https://leetcode-cn.com/problems/reverse-vowels-of-a-string/) | [201011-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00345_reverse-vowels-of-a-string/201011-1.cpp) | 8 ms | 7.7 MB | 92.50% | 58.02% | [查看结果](https://leetcode-cn.com/submissions/detail/114967092/) |
| 347 | 中等 | [前 K 个高频元素](https://leetcode-cn.com/problems/top-k-frequent-elements/) | [201011-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00347_top-k-frequent-elements/201011-1.cpp) | 36 ms | 13.6 MB | 84.74% | 86.80% | [查看结果](https://leetcode-cn.com/submissions/detail/115007226/) |

## Review {{<permalink "review">}}

### 1. C++中的`using namespace std` {{<permalink "review-1">}}

分享链接：[StackOverflow: Why is “using namespace std;” considered bad practice?](https://stackoverflow.com/questions/1452721/why-is-using-namespace-std-considered-bad-practice)

这个帖子的问答内容，详细解释了`using namespace std;`存在的问题及避免使用的原因。最终的结论是：不应该在头文件中使用，而建议在cpp实现文件中使用。

## Tip {{<permalink "tip">}}

### 1. 显示dd命令的读写进度 {{<permalink "tip-1">}}

分享链接：[Linux dd Command Show Progress Copy Bar With Status](https://www.cyberciti.biz/faq/linux-unix-dd-command-show-progress-while-coping/)

```sh
dd if=/path/to/input of=/path/to/output status=progress
```

### 2. PGP的使用，对下载文件的校验 {{<permalink "tip-2">}}

分享链接：[UNIX / Linux PGP TarBall File Signature Keys Verification](https://www.cyberciti.biz/faq/pgp-tarball-file-signature-keys-verification/)

```sh
# 下载文件
$ wget http://nginx.org/download/nginx-1.18.0.tar.gz
$ wget https://nginx.org/download/nginx-1.18.0.tar.gz.asc

# 校验
$ gpg nginx-1.18.0.tar.gz.asc
## OR ##
$ gpg --with-fingerprint nginx-1.18.0.tar.gz.asc
gpg: WARNING: no command supplied.  Trying to guess what you mean ...
gpg: assuming signed data in 'nginx-1.18.0.tar.gz'
gpg: Signature made Tuesday 21 April 2020 07:43:35 PM IST
gpg:                using RSA key 520A9993A1C052F8
gpg: Can't check signature: No public key

# 获取公钥
gpg --recv-key <publicKey>
## we can also get keys from speifici key server ##
gpg --keyserver pgpkeys.mit.edu --recv-key <publicKey>

# 校验
$ gpg --verify nginx-1.18.0.tar.gz.asc nginx-1.18.0.tar.gz

# 获取公钥
$ wget https://nginx.org/keys/mdounin.key
$ gpg --import mdounin.key
gpg: key 520A9993A1C052F8: 2 signatures not checked due to missing keys
gpg: key 520A9993A1C052F8: public key "Maxim Dounin <mdounin@mdounin.ru>" imported
gpg: Total number processed: 1
gpg:               imported: 1
gpg: marginals needed: 3  completes needed: 1  trust model: pgp
gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u

$ gpg --verify nginx-1.18.0.tar.gz.asc nginx-1.18.0.tar.gz
```

## Share {{<permalink "share">}}


