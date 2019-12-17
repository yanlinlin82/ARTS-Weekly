---
title: ARTS第十周（2019年11月25日~12月1日）
date: 2019-11-27T00:20:17+0800
slug: week-010
---

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

* [串联所有单词的子串](https://leetcode-cn.com/problems/substring-with-concatenation-of-all-words/)：[我的解答](https://github.com/yanlinlin82/leetcode/blob/master/00030_substring-with-concatenation-of-all-words/191119-1.cpp)
* [下一个排列](https://leetcode-cn.com/problems/next-permutation/)：[我的解答](https://github.com/yanlinlin82/leetcode/blob/master/00031_next-permutation/191120-1.cpp)
* [最长有效括号](https://leetcode-cn.com/problems/longest-valid-parentheses/)：[我的解答](https://github.com/yanlinlin82/leetcode/blob/master/00032_longest-valid-parentheses/191121-1.cpp)

## Review

[Lessons from a Life in a Chair](https://www.codeproject.com/Articles/5152541/Lessons-from-a-Life-in-a-Chair)

这是一篇来自一位从1988年开始编程的老程序员的分享，对其多年编程经验中的心得总结（以下中文翻译和解释，为我自己的理解）：

* 复杂度是魔鬼（Complexity is the Devil）：包括不可避免的优化和扩展性等需求，都会导致复杂度的提升，进而带来各种问题。
* 持久进行的持久化（The Persistence of Persistence）：对于各类需要保存下来的数据，一定要有版本控制，并应该使其具备可扩展性。
* 坐在卧室中打造一个帝国（An Empire in my Underwear）：软件开发提供的机会，可以在卧室中，通过发挥创造力，来改变世界。
* 把所期望的东西正确表达出来（Say What You Mean）：用计算机语言把需求表达出来，所有语言都应该优先增加表达语义的能力。
* 不可避免的中年负担（The Inevitability of Middle Age）：随着语言的发展，必然会背负越来越多的历史负担，就像中年人一样越来越难。
* 过去的错误成为未来的希望（The Mistakes of the Past Become the Promise of the Future）：过去遇到的很多问题及其折衷解决方案，会被不了解历史的人诟病。
* 产品驱动还是技术驱动（Entrepreneurs vs. Mercenaries）：两类开发人员，产品驱动者会将语言视为工具，而技术驱动者会更看重语言本身特性的优劣比较。
* 让少量有特殊需求者自己去吧（Let the X Percenters Take Care of Themselves）：基于优化的80/20原则，面对少量特殊需求，我们不用太过迎合，让他们自己去吧就好。
* 从一开始就认真对待项目结构（Take Project Structure Seriously From Day One）：因为项目中后期调整结构的代价太大。
* 数据分离与表示（Separation of Data and Presentation）：这是显而易见的需求，但却也是很容易陷入其中的问题。
* 永不放弃，永不投降（Never Give Up, Never Surrender）：坚持挑战下去。

## Tip

**如何在Linux下正常解压缩来自Windows系统的zip压缩包**

在Linux下，有时候收到来自Windows系统的zip压缩包，常规解压缩出来，文件名和目录名经常会存在乱码，这是由于字符集导致的冲突错乱。

经过尝试，通过如下方式可以解决此问题：

```sh
LANG=zh_CN.GBK unzip -UU xxx.zip        # 设置临时环境变量，运行unzip，使用-UU使保持字符原样（避免使用utf转存），解压缩文件
find . -type d -exec chmod u+w "{}" \;  # 查找子目录中的所有目录，设置可写权限，以便接下去对目录中的文件进行改名
convmv -f gbk -t utf8 --notest -r .     # 对子目录中所有文件名进行字符编码转换（改名）
```

## Share

[前端面试每日 3+1（每日三问）](https://github.com/haizlin/fe-interview)

这个GitHub项目比较有意思，它鼓励各位读者参与出题和答题，有很多前端相关（诸如css等）的小知识点，也有很多很搞笑（有时也值得思考）的调侃问题和回答。
