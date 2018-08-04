//
//  ViewController.m
//  Array
//
//  Created by EthanLin on 2018/7/20.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSArray* arr = [[NSArray alloc] init];
//    NSLog(@"Hi: %@",arr);
//    NSString* str = @"Ya";
    //下面這行會報錯，因為NSArray不能修改
//    arr[0] = str;
    
    
    NSArray* arr = [NSArray arrayWithObjects:@"My",@"mother",@"sister",@"me", nil];
    NSArray* arr2 = @[@"Donkey",@"Kong",@"Ate"];
    NSString* str = [arr objectAtIndex:2];
    NSLog(@"%@",arr);
    NSLog(@"%@",str);
//    arr = nil;
    NSLog(@"%@",arr);
    NSLog(@"%@",str);
    arr = @[@"Mario",@"Tony"];
    //NSArray可以整個重新賦值來整個替換掉
    NSLog(@"%@",arr);
    
    NSArray* arr3 = [NSArray arrayWithArray:arr];
    NSLog(@"Array3,%@",arr3);
    //但是上面這種array無法修改內容 由下面這行可以看到只能回傳特定index的東西
    [arr objectAtIndex:1];
    
    NSMutableArray* mutableArr = [NSMutableArray arrayWithObjects:@"boom",@"jam",@"Slam",@"pam", nil];
    [mutableArr removeObjectAtIndex:2];
    [mutableArr addObject:@"Beast"];
    NSLog(@"%@",mutableArr);
    
    
    //書上例子
    NSDate* now = [NSDate date];
    NSDate* tomorrow = [now dateByAddingTimeInterval:24 * 60 * 60];
    NSDate* yesterday = [now dateByAddingTimeInterval:-24 * 60 * 60];
    
    NSMutableArray* dateList = [[NSMutableArray alloc] init];
    [dateList addObject:now];
    [dateList addObject:tomorrow];
    [dateList insertObject:yesterday atIndex:0];
    
    for (NSDate* d in dateList) {
        NSLog(@"Here is s data: %@",d);
    }
    
    [dateList removeObjectAtIndex:0];
    NSLog(@"Now the first date is %@", dateList[0]);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
