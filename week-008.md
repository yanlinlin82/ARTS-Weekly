# 左耳听风ARTS第八周（2019年11月15日）

## Algorithm

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

* [两两交换链表中的节点](https://github.com/yanlinlin82/leetcode/blob/master/00024_swap-nodes-in-pairs/191112-1.cpp)
* [K 个一组翻转链表](https://github.com/yanlinlin82/leetcode/blob/master/00025_reverse-nodes-in-k-group/191114-1.cpp)
* [删除排序数组中的重复项](https://github.com/yanlinlin82/leetcode/blob/master/00026_remove-duplicates-from-sorted-array/191115-1.cpp)

## Review

《[Working With Numerical Lists in Functional Languages](https://www.codeproject.com/Tips/1265626/Working-With-Numerical-Lists-in-Functional-Languag)》

这篇文章介绍了Haskell语言中的列表类型，这是该语言中的一种基本类型，也体现了该语言作为函数式编程语言的特点之一。

不同于C++等语言的基本语法，Haskell的列表，竟然能够定义无限集合：

```
numbers = [1..10] -- Creates a list of numbers from 1 to 10
numbers = [1..] -- Creates a infinit list of numbers  from 1 to beyond
take 10 numbers -- Get the top ten elements from the list
length numbers -- Get the size of the list
numbers !! n -- Get the Nth element out of a list
numbers = [(x ^2) | x <- [1..]] -- Creates a infinit list of squared numbers
tail numbers -- returns the list without the first element
numbers = cycle[1,2] -- creates a circular list from a finite one
zipWith (+) [4,2,5,6] [2,6,2,3] -- joins two lists by applying the function
between the corresponding elements. In this case, the result will be [6,8,7,9]
```

仔细想想，的确，如果不需要把元素一一求值出来，保存为中间结果，那么，完全可以从结果出发，按需计算一部分元素即可。

```
-- Calculating some sequences and series

-- Language: Haskell

-- 2018, Jose Cintra
-- josecintra@josecintra.com

-- Sequences
facts = 1 : zipWith (*) facts [1..]  -- infinite sequence of factorials

fibs =  1 : 1 : zipWith (+) fibs (tail fibs) -- Infinite sequence of Fibonacci numbers

odds = [1,3..] -- infinite sequence of odd numbers

signs = cycle [1,(-1)] -- infinite sequence that alternates the numbers 1 and -1

euler = [(1 / x) | x <- facts] -- Sequence for the Euler constant by the Taylor series

pi_seq = zipWith (*) signs ([(1 / p) | p <- odds]) -- Sequence for the leibniz series

fib_const = [(1 / x) | x <- fibs] -- Sequence for the Reciprocal Fibonacci Constant

gp = [(9 / x) | x <- [(10 ^ x) | x <- [1,2..]]] -- Sequence for Geometric Progression

main = do
  -- Sequences
  putStr "Sequences and series in Haskell\n\n"

  putStr "Factorials sequence = "
  print (take 10 facts)

  putStr "Fibonacci sequence = "
  print (take 10 fibs)

  putStr "Odd numbers sequence = "
  print (take 10 odds)

  -- Series
  putStr "\nEuler constant by Taylor series = "
  print (sum (take 50 euler))

  putStr "PI number by the Leibniz series= "
  print ((sum (take 100000 pi_seq)) * 4)

  putStr "Reciprocal Fibonacci Constant = "
  print (sum (take 100 fib_const) )

  putStr "Geometric Progression for the number one =  "
  print (sum (take 100 gp))
```

## Tip

R语言一句话实现圣诞节（或其他某特定日期）倒计时：

```r
difftime(as.Date("2019-12-25"), Sys.Date(), units="days") # Time difference of NN days
```

或在bash中直接运行：

```sh
Rscript -e 'difftime(as.Date("2019-12-25"), Sys.Date(), units="days")'
```

来自Tweet: [One R Tip a Day](https://twitter.com/RLangTip/status/1193966624644030465?cn=ZmxleGlibGVfcmVjc18y&refsrc=email)

## Share

关于明年将要出台的C++20新标准，其中有一项内容挺有意思，即太空船运算符（`<=>`）。

有了这个运算符，通过单个定义，就可以为某个类同时增添`==`、`!=`、`<`、`<=`、`>`和`>=`六个比较运算符。例如：

```cpp
#include <compare>
struct MyInt {
  int value;
  MyInt(int value): value{value} { }
  auto operator<=>(const MyInt&) const = default;
};
```

参考：

* [C++ 20: The Core Language](https://www.modernescpp.com/index.php/c-20-the-core-language)
* [Simplify Your Code With Rocket Science: C++20’s Spaceship Operator](https://devblogs.microsoft.com/cppblog/simplify-your-code-with-rocket-science-c20s-spaceship-operator/)
