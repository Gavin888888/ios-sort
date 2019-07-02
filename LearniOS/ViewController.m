//
//  ViewController.m
//  LearniOS
//
//  Created by l on 2018/4/11.
//  Copyright © 2018年 l. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+OrderSort.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"1");
//    /*
//     dispatch_get_main_queue 是一个串行队列，一次只执行一个任务，而dispatch_sync是同步操作，当前的主线程中viewDidload任务还没执行完，所以会卡死在dispatch_sync
//     */
//
//    dispatch_sync(dispatch_get_main_queue(), ^{
//
//        NSLog(@"2");
//
//    });
//    NSLog(@"3");
    //创建待排序的数组
    NSMutableArray *sortArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < 10; i++) {
        int random = arc4random()%20;
        if (![sortArray containsObject:@(random)]) {
            [sortArray addObject:@(random)];
        }
    }
//    NSLog(@"待排序的数组=%@",sortArray);
//
//    //开始计时
//    CFAbsoluteTime startTime =CFAbsoluteTimeGetCurrent();
//
//    [self bubbleDescendingOrderSortWithArray:sortArray];
//    NSLog(@"冒泡降序排列=%@",sortArray);
//    [self bubbleAscendingOrderSortWithArray:sortArray];
//    NSLog(@"冒泡升序排列=%@",sortArray);
    
    //结束计时
//    CFAbsoluteTime linkTime = (CFAbsoluteTimeGetCurrent() - startTime);
//    NSLog(@"耗时 %f ms", linkTime *1000.0);
    
    //开始计时
//    CFAbsoluteTime startTime1 =CFAbsoluteTimeGetCurrent();
    
//    [self selectionDescendingOrderSortWithArray:sortArray];
//    NSLog(@"选择降序排列=%@",sortArray);
//    [self selectionAscendingOrderSortWithArray:sortArray];
//    NSLog(@"选择升序排列=%@",sortArray);
    
    //结束计时
//    CFAbsoluteTime linkTime1 = (CFAbsoluteTimeGetCurrent() - startTime1);
//    NSLog(@"耗时 %f ms", linkTime1 *1000.0);
//
//
//    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@(6), @(1),@(2),@(5),@(9),@(4),@(3),@(7),nil];
//    [self quickSortArray:arr leftindex:0 rightindex:arr.count - 1];
//    NSLog(@"%@",arr);
    
//    [self bulledsortWithArray:sortArray];
//    [self selectSortWithArray:sortArray];
//    [self quickSortWithArray:sortArray leftIndex:0 rightIndex:sortArray.count-1];
    
//    [self insertionDescendingOrderSortWithArray:sortArray];
    
    NSArray * array1 = @[@"3",@"7",@"9",@"14",@"25",@"26",@"37",@"69"];
    int result = [self binarySearch:array1 target:@"69"];//在这里打印结果看是否有相等的值
    NSLog(@"%d",result);
    
}
-(int)binarySearch:(NSArray *)aArray target:(NSString *)target {
    if (!aArray.count) {
        return -1;//如果没有元素，返回
    }
    int low = 0;//起始点
    int height = aArray.count - 1;//最后元素点
    
    while (low <= height) {
        int mid = low + (height - low)/2;//中间点
        
        NSString *num = [aArray objectAtIndex:mid];
        
        if ([target isEqualToString:num]) {
            return mid;
        }else if ([num intValue] > [target intValue]){
            height = mid - 1;
        }else{
            low = mid + 1;
        }
    }
    
    return -1;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
