# sort
Objective-C 常用排序
1、冒泡排序：

　　冒泡算法是一种基础的排序算法，这种算法会重复的比较数组中相邻的两个元素。如果一个元素比另一个元素大（小），那么就交换这两个元素的位置。重复这一比较直至最后一个元素。这一比较会重复n-1趟，每一趟比较n-j次，j是已经排序好的元素个数。每一趟比较都能找出未排序元素中最大或者最小的那个数字。这就如同水泡从水底逐个飘到水面一样。冒泡排序是一种时间复杂度较高，效率较低的排序方法。其空间复杂度是O(n)。

　　1, 最差时间复杂度 O(n^2)
　　2, 平均时间复杂度 O(n^2)

　　实现思路
　　1，每一趟比较都比较数组中两个相邻元素的大小
　　2，如果i元素小于i-1元素，就调换两个元素的位置
　　3，重复n-1趟的比较
  　2、选择排序：

　　实现思路：
　　 1. 设数组内存放了n个待排数字，数组下标从1开始，到n结束。
　　 2. i=1
　　 3. 从数组的第i个元素开始到第n个元素，寻找最小的元素。（具体过程为:先设arr[i]为最小，逐一比较，若遇到比之小的则交换）
　　 4. 将上一步找到的最小元素和第i位元素交换。
　　 5. 如果i=n－1算法结束，否则回到第3步
 
  　复杂度：
　　平均时间复杂度：O(n^2)
　　平均空间复杂度：O(1)

2、选择排序：

　　实现思路：
　　 1. 设数组内存放了n个待排数字，数组下标从1开始，到n结束。
　　 2. i=1
　　 3. 从数组的第i个元素开始到第n个元素，寻找最小的元素。（具体过程为:先设arr[i]为最小，逐一比较，若遇到比之小的则交换）
　　 4. 将上一步找到的最小元素和第i位元素交换。
　　 5. 如果i=n－1算法结束，否则回到第3步
 
  　复杂度：
　　平均时间复杂度：O(n^2)
　　平均空间复杂度：O(1)

3、快速排序：

　　实现思路：

　　1. 从数列中挑出一个元素，称为 "基准"（pivot），

　　2. 重新排序数列，所有元素比基准值小的摆放在基准前面，所有元素比基准值大的摆在基准的后面（相同的数可以到任一边）。在这个分割之后，该基准是它的最后位置。这个称为分割（partition）操作。

　　3. 递归地（recursive）把小于基准值元素的子数列和大于基准值元素的子数列排序。 

　　快速排序是基于分治模式处理的，对一个典型子数组A[p...r]排序的分治过程为三个步骤：
　　　　1.分解：
　　　　A[p..r]被划分为俩个（可能空）的子数组A[p ..q-1]和A[q+1 ..r]，使得
　　　　A[p ..q-1] <= A[q] <= A[q+1 ..r]
　　　　2.解决：通过递归调用快速排序，对子数组A[p ..q-1]和A[q+1 ..r]排序。
　　　　3.合并。

　　递回的最底部情形，是数列的大小是零或一，也就是永远都已经被排序好了。虽然一直递回下去，但是这个算法总会结束，因为在每次的迭代（iteration）中，它至少会把一个元素摆到它最后的位置去。
　　复杂度：

　　平均时间复杂度：O(n^2)

　　平均空间复杂度：O(nlogn)       O(nlogn)~O(n^2)
