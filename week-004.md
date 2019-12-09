# 左耳听风ARTS第四周（2019年10月14日~20日）

[返回目录](README.md#打卡记录)

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

* [电话号码的字母组合](https://github.com/yanlinlin82/leetcode/blob/master/00017_letter-combinations-of-a-phone-number/191014-1.cpp)
* [四数之和](https://github.com/yanlinlin82/leetcode/blob/master/00018_4sum/191018-1.cpp)
* [删除链表的倒数第N个节点](https://github.com/yanlinlin82/leetcode/blob/master/00019_remove-nth-node-from-end-of-list/191019-1.cpp)

## Review

[The Cost of Waiting for Feedback in Software Development](https://www.codeproject.com/Articles/5247782/The-Cost-of-Waiting-for-Feedback-in-Software-Devel)

来源：CodeProject

这篇文章重点在讲述及时反馈的重要性。对于某个问题，由于并行处理大量问题，导致原本可以即时反馈的信息，拖延数周才反馈，其效率损失，将会达到二十多倍。

文章以一个写邮件的简单工作场景，进行了细致的描述，刻画了各个环节上面临的问题，以及导致效率低下的原因。并给出了可能的解决方案。重点就是减少各种沟通环节和成本，让反馈更加及时。

此外，这是个系列文章中的一篇，相应的整个系列，其实也值得一读： <http://www.hadermann.be/blog/category/nontech/>

## Tip

这里提及一个如何实现组合穷举的技巧，算是自己在解一个算法题时遇到并尝试实现的。            
                                                                                          
题目在这里，是个涂色问题：<https://yanlinlin82.github.io/191017a_Color-Filling/>          
                                                                                          
![](https://yanlinlin82.github.io/191017a_Color-Filling/problem.jpg)                      
                                                                                          
解法详细过程在这里：<https://yanlinlin82.github.io/191017a_Color-Filling/analysis.v3.html>

重点是其中穷举所有组合的部分，由于需要把每个组合都以一个数据框（data.frame）结构列出，所以使用了递归函数，逐级去追加新的房间（方块）号进来：

```r
all_comb <- function(n) {
  if (n <= 1) {
    lapply(1:max_color, function(x) tibble(house = 1, fill = x))
  } else {
    l <- all_comb(n - 1)
    lapply(1:max_color, function(x) {
      lapply(l, function(d) rbind(d, tibble(house = n, fill = x)))
    }) %>% do.call("c", .)
  }
}
```

递归函数实现，能够有效避免繁琐的回溯式遍历的写法，让程序的逻辑更加容易读懂。

## Share

这里，我分享一篇自己新写的技术随笔（新开公号的第一篇，准备开始持续原创），我相信还算是“有观点和思考的”：

[数据统治世界](https://github.com/yanlinlin82/bukaopuyanlun/blob/master/articles/191017-first.md)
