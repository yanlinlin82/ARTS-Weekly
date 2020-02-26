---
title: ARTS第二十三周（2020年2月24日~3月1日）
date: 2020-02-24T07:03:41+08:00
slug: week-023
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 排名 |
|:----:|:----:|:-----|:---------|---------:|---------:|-----:|
| 177 | 中等 | [第N高的薪水](https://leetcode-cn.com/problems/nth-highest-salary/) | [200224-1.sql](https://github.com/yanlinlin82/leetcode/blob/master/00177_nth-highest-salary/200224-1.sql) | 147 ms | 0 MB | [58.50%](https://leetcode-cn.com/submissions/detail/49077380/) |
| 178 | 中等 | [分数排名](https://leetcode-cn.com/problems/rank-scores/) | [200224-1.sql](https://github.com/yanlinlin82/leetcode/blob/master/00178_rank-scores/200224-1.sql) | 135 ms | 0 MB | [98.02%](https://leetcode-cn.com/submissions/detail/49077510/) |
| 179 | 中等 | [最大数](https://leetcode-cn.com/problems/largest-number/) | [200224-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00179_largest-number/200224-1.cpp) | 0 ms | 13.7 MB | [100.00%](https://leetcode-cn.com/submissions/detail/49077911/) |
| 180 | 中等 | [连续出现的数字](https://leetcode-cn.com/problems/consecutive-numbers/) | [200224-2.sql](https://github.com/yanlinlin82/leetcode/blob/master/00180_consecutive-numbers/200224-2.sql) | 291 ms | 0 MB | [49.87%](https://leetcode-cn.com/submissions/detail/49078278/) |
| 181 | 简单 | [超过经理收入的员工](https://leetcode-cn.com/problems/employees-earning-more-than-their-managers/) | [200226-1.sql](https://github.com/yanlinlin82/leetcode/blob/master/00181_employees-earning-more-than-their-managers/200226-1.sql) | 261 ms | 0 MB | [76.52%](https://leetcode-cn.com/submissions/detail/49483165/) |
| 182 | 简单 | [查找重复的电子邮箱](https://leetcode-cn.com/problems/duplicate-emails/) | [200226-1.sql](https://github.com/yanlinlin82/leetcode/blob/master/00182_duplicate-emails/200226-1.sql) | 150 ms | 0 MB | [71.62%](https://leetcode-cn.com/submissions/detail/49483215/) |
| 183 |  简单 | [从不订购的客户](https://leetcode-cn.com/problems/customers-who-never-order/) | [200226-1.sql](https://github.com/yanlinlin82/leetcode/blob/master/00183_customers-who-never-order/200226-1.sql) | 183 ms | 0 MB | [87.05%](https://leetcode-cn.com/submissions/detail/49483246/) |
| 184 | 中等 | [部门工资最高的员工](https://leetcode-cn.com/problems/department-highest-salary/) | [200226-1.sql](https://github.com/yanlinlin82/leetcode/blob/master/00184_department-highest-salary/200226-1.sql) | 225 ms | 0 MB | [81.73%](https://leetcode-cn.com/submissions/detail/49483380/) |
| 185 | 困难 | [部门工资前三高的所有员工](https://leetcode-cn.com/problems/department-top-three-salaries/) | [200226-1.sql](https://github.com/yanlinlin82/leetcode/blob/master/00185_department-top-three-salaries/200226-1.sql) | 448 ms | 0 MB | [73.08%](https://leetcode-cn.com/submissions/detail/49498719/) |

## Review {{<permalink "review">}}


## Tip {{<permalink "tip">}}

### 1. 在Linux命令行如何对XML数据进行格式化展示 {{<permalink "tip-1">}}

```sh
cat input.xml | xmllint --format -
echo "<a><b><c>d</c><e>f</e></b></a>" | xmllint --format -
```

需要`libxml2`软件包的支持，在Gentoo Linux下的安装方法为：

```sh
emerge -av libxml2
```

参考：<https://www.poftut.com/pretty-print-format-xml-command-line-linux/>

## Share {{<permalink "share">}}

### 1. 实例展示维基数据的获取和查询 {{<permalink "share-1">}}

文章链接：[RDF 和 SPARQL 初探：以维基数据为例](http://www.ruanyifeng.com/blog/2020/02/sparql.html)

维基数据是最常用的图数据库来源，这篇文章以实例方式，详细展示了这类数据的获取及相应的查询，对于建立知识图谱和后续相关的分析很有帮助。
