---
title: ARTS第三十五周（2020年5月18日~24日）
date: 2020-05-24T12:28:51+08:00
slug: week-035
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 | 备注 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|:-----|
| 237 | 简单 | [删除链表中的节点](https://leetcode-cn.com/problems/delete-node-in-a-linked-list/) | [200524-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00237_delete-node-in-a-linked-list/200524-1.cpp) | 20 ms | 8 MB | [23.90%](https://leetcode-cn.com/submissions/detail/73189591/) |  |
| 238 | 中等 | [除自身以外数组的乘积](https://leetcode-cn.com/problems/product-of-array-except-self/) | [200524-2.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00238_product-of-array-except-self/200524-2.cpp) | 24 ms | 16.1 MB | [43.33%](https://leetcode-cn.com/submissions/detail/73213054/) |  |

## Review {{<permalink "review">}}

### 1. C++中实现具有多态性的赋值 {{<permalink "review-1">}}

分享链接：[How to Assign Derived Classes in C++](https://www.fluentcpp.com/2020/05/22/how-to-assign-derived-classes-in-cpp/)

C++中，要让对象的多态性生效，就需要使用指针或是引用。也因此，在对象的直接赋值过程中，多态性就很难实现。但如果使用的是对象引用，进行赋值，如何实现多态性呢？该问题的具体代码描述如下：

```cpp
class X { public: virtual ~X() = 0; /* ... */ };
class A : public X { /* ... */ };
class B : public X { /* ... */ };

void Foo() {
    A a;
    B b;
    X& x1 = a;
    X& x2 = b;
    x1 = x2; // 基类引用之间的赋值，需要`virtual operator =`的支持
}
```

这篇教程从基于`dynamic_cast`的基本实现出发，一步步改善代码，最终使其很方便地定义此类多态性的赋值语法。

## Tip {{<permalink "tip">}}

### 1. 列举Linux用户 {{<permalink "tip-1">}}

过去通常使用`cat /etc/passwd`来列举当前系统中都有哪些用户。本周学到一个更好用的新命令：

```sh
lslogins
```

其结果大致为如下格式：

```
  UID USER                   PROC PWD-LOCK PWD-DENY  LAST-LOGIN GECOS
    0 root                    159                   Apr22/21:49 root
    1 bin                       0                               bin
    2 daemon                    0                               daemon
    3 adm                       0                               adm
    4 lp                        0                               lp
    5 sync                      0                               sync
    6 shutdown                  0                   May18/12:12 shutdown
    7 halt                      0                               halt
    8 mail                      0                               Mail program user
    9 news                      0                               news
   10 uucp                      0                               uucp
   11 operator                  0                               operator
   13 man                       0                               System user; man
   14 postmaster                0                               Postmaster user
   16 cron                      0                               added by portage for cronbase
   21 ftp                       0                               File Transfer Protocol server user
   22 sshd                      0                               User for ssh
   45 mpd                       0                               A user for music player daemon (mpd)
   60 mysql                     1                               MySQL program user
   61 avahi                     0                               user for avahi
   70 postgres                  0                               added by portage for postgresql
   81 apache                    3                               added by portage for apache
   88 nullmail                  0                               added by portage for nullmailer
  101 messagebus                1                               System user; messagebus
  102 polkitd                   1                               System user; polkitd
  123 ntp                       0                               added by portage for ntp
  191 systemd-journal-remote    0                               System user; systemd-journal-remote
  192 systemd-network           0                               System user; systemd-network
  193 systemd-resolve           0                               System user; systemd-resolve
  194 systemd-coredump          0                               System user; systemd-coredump
  195 systemd-timesync          1                               System user; systemd-timesync
  250 portage                   0                               portage
  335 epmd                      0                               User for Erlang Protmapper Daemon
  990 mongodb                   0                               added by portage for mongodb
  991 nginx                     0                               added by portage for nginx
  992 fetchmail                 0                               added by portage for fetchmail
  993 tcpdump                   0                               added by portage for tcpdump
  994 arpwatch                  0                               added by portage for arpwatch
  995 openvpn                   0                               User for net-vpn/openvpn
  996 gdm                      31                               added by portage for gdm
  997 geoclue                   1                               added by portage for geoclue
  998 dhcp                      0                               added by portage for dhcp
  999 colord                    1                               added by portage for colord
 1000 yanll                   139                   May18/12:13
65534 nobody                    0                               nobody
```

## Share {{<permalink "share">}}

### 1. 直观掌握内存与指针的概念 {{<permalink "share-1">}}

分享链接：[[c][explained] Demystifying Pointers — What are they?](https://www.youtube.com/watch?v=rB70mUPcLU0&feature=youtu.be)

在C语言中，最大的难点无疑是指针，理解其概念，包括其内存布局，对于后续计算机语言的学习和提升，是重要的。这个视频能够帮助初学者直观地进行理解。

### 2. 用R语言绘制各类图形 {{<permalink "share-2">}}

分享链接：[R Graph Gallery](https://www.r-graph-gallery.com/)

这个网站汇集了各类R语言实现的图表，对于想要以炫酷形式展示数据的，不妨经常在这里进行浏览，并研究一下相关的实现包及其用法。
