---
title: ARTS第四十八周（2020年8月17日~23日）
date: 2020-08-17T20:46:59+08:00
slug: week-048
---

## Algorithm {{<permalink "algorithm">}}

[LeetCode题库](https://leetcode-cn.com/problemset/all/)

| 编号 | 难度 | 题目 | 我的解答 | 执行用时 | 内存消耗 | 用时排名 | 内存排名 | 查看结果 |
|:----:|:----:|:-----|:---------|---------:|---------:|:--------:|:--------:|:--------:|
| 312 | 困难 | [戳气球](https://leetcode-cn.com/problems/burst-balloons/) | [200822-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00312_burst-balloons/200822-1.cpp) | 76 ms | 9 MB | 6.15% | 9.09% | [查看结果](https://leetcode-cn.com/submissions/detail/100726963/) |
| 313 | 中等 | [超级丑数](https://leetcode-cn.com/problems/super-ugly-number/) | [200822-1.cpp](https://github.com/yanlinlin82/leetcode/blob/master/00313_super-ugly-number/200822-1.cpp) | 200 ms | 9.6 MB | 37.88% | 31.00% | [查看结果](https://leetcode-cn.com/submissions/detail/100746775/) |

## Review {{<permalink "review">}}

### 1. 依据流程构建工具 {{<permalink "review-1">}}

参考：[Build tools around workflows, not workflows around tools](https://thesephist.com/posts/tools/)

这是一篇关于日常工作效率相关的文章，作者介绍了自己日常所用的工具，这些工具都比较轻量级，没有过多的不必要特性，却能比较有效地帮助作者达成其相应目的。我们构建各类工具时，应该围绕自己的流程目的去进行，而不是舍本逐末地为了工具去构建流程。

## Tip {{<permalink "tip">}}

### 1. 在bash中处理日期计算 {{<permalink "tip-1">}}

参考：[How to add days to date and get new date on Linux](https://www.cyberciti.biz/faq/how-to-add-days-to-date-and-get-new-date-on-linux/)

```sh
date --date='2 days ago'      # 两天前
date --date='4 months 2 day'  # 四个月零两天后

date -d "2020-08-22 + 20 days"  # 特定日期之后多少天
date -d "2020-08-22 - 20 days"  # 特定日期之前多少天
```

## Share {{<permalink "share">}}

### 1. C++命令行解析库 {{<permalink "share-1">}}

参考：<https://github.com/p-ranav/structopt>

C++类库，提供了一个易用的命令行解析功能

```cpp
#include <structopt/app.hpp>

struct FileOptions {
    // Positional arguments
    // ./main <input_file> <output_file>
    std::string input_file;
    std::string output_file;
};
STRUCTOPT(FileOptions, input_file, output_file);

int main(int argc, char *argv[]) {
    try {
        auto options = structopt::app("my_app").parse<FileOptions>(argc, argv);

        // Print parsed arguments:
        std::cout << "\nInput file  : " << options.input_file << "\n";
        std::cout << "Output file : " << options.output_file << "\n";

    } catch (structopt::exception& e) {
        std::cout << e.what() << "\n";
        std::cout << e.help();
    }
}
```

### 2. C++ Weekly视频：constexpr map实现 {{<permalink "share-2">}}

参考：[YouTube: C++ Weekly - Ep 233 - std::map vs constexpr map (huge perf difference!)](https://www.youtube.com/watch?v=INn3xa4pMfg)

将查找逻辑在编译期展开成为代码，通过gcc优化，能够比std::map快11倍。
