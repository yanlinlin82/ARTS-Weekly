# 左耳听风ARTS第一周（2019年9月29日）

## Algorithm

**链接：** <https://leetcode-cn.com/problems/add-two-numbers>

**题目：**

给出两个**非空**的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储**一位**数字。

如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。

您可以假设除了数字**0**之外，这两个数都不会以**0**开头。

**示例：**

> **输入：** (2 -> 4 -> 3) + (5 -> 6 -> 4)  
> **输出：** 7 -> 0 -> 8  
> **原因：** 342 + 465 = 807

**解答：**

```cpp
/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */
class Solution {
public:
    ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
        ListNode* r = new ListNode(0);
        ListNode* p = r;
        bool carry = false;
        while (l1 || l2) {
            int value = (l1 ? l1->val : 0) + (l2 ? l2->val : 0) + carry;
            carry = (value >= 10);
            ListNode* n = new ListNode(value % 10);
            l1 = (l1 ? l1->next : NULL);
            l2 = (l2 ? l2->next : NULL);
            p->next = n;
            p = n;
        }
        if (carry) {
            p->next = new ListNode(1);
        }
        p = r->next;
        delete r;
        return p;
    }
};
```

## Review

[\[CodeProject\] HotPatching: (VERY) Deep Inside](https://www.codeproject.com/Articles/1043089/HotPatching-VERY-Deep-Inside)

本文展示了在Windows系统中，不退出程序的情况下，给运行中的程序打补丁的技术。分别展示了五种不同的实现方法，并进行了比较：

1. 载入一个DLL，并在DLL中，对EXE中的函数打补丁。这是最安全的一种方法。
    * 优点：最安全，最容易实现，在单个地址空间中完成打补丁的过程。
    * 缺点：需要一个额外的DLL。
2. 通过COM接口（服务）的方式，实现EXE更新。
    * 优点：不需要额外的DLL。
    * 缺点：程序运行在不同的地址空间，通过COM服务器的代理方式调用。
3. 通过共享内存和代理函数，更新EXE。
    * 优点：不需要额外的DLL。
    * 缺点：程序运行在不同的地址空间，通过代理函数调用。
4. 将更新的EXE直接载入当前地址空间。
    * 优点：所有程序都运行在同一地址空间，且只需要单一EXE。
    * 缺点：技巧性太强。
5. 把所有功能放到DLL中实现。
    * 优点：单个程序文件即可。
    * 缺点：需要为应用程序提供自举（bootstrap）方案（诸如.bat文件或快捷方式等），以便用户启动该程序。

其代码存储在： <https://github.com/WindowsNT/hotpatch>

点评：

1. 这篇文章技术比较硬核，需要深入了解操作系统如何装载程序到地址空间并运行；
2. 而且对不同的运行方式（普通EXE、COM服务器、独立DLL等）都有涉及和介绍；
3. 针对不同操作系统（如Linux），需要根据其他相应体系架构调整实现。

## Tip

[\[SuperUser\] How to expand \* on Bash command line](https://superuser.com/questions/215950/how-to-expand-on-bash-command-line)

我是在Linux命令行上误操作时，发现通配符被自动扩展出来，于是通过搜索，找到了该“隐藏”的功能键：

输入命令`ls *`后，按键：`<Ctrl>` + `x` + `*`，可以看到该目录下的文件列表，被扩展出来，可以继续进行编辑。

而在过去，我通常都需要手工对`ls`命令的结果进行选择和拷贝。

## Share

分享一篇CSDN上的技术文章：

[深入理解C语言指针](https://blog.csdn.net/ZackSock/article/details/101594794)

这篇文章写得很认真，详细讲解了C语言指针的相关基础知识，包括清晰的示意图，很适合编程入门者把基本功打扎实。
