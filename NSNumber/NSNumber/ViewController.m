//
//  ViewController.m
//  NSNumber
//
//  Created by EthanLin on 2018/7/19.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    int iAmInt = 5;
    float iAmFloat = 3.3;
    double iAmDouble = 3.66667;
    
    NSLog(@"%d",iAmInt);
    NSLog(@"%f",iAmFloat);
    NSLog(@"%f",iAmDouble);
    //下面這行會報錯，因為對於OC來講，int, float, double不是物件，沒有辦法放到array裡面
//    NSArray* array = @[iAmInt, iAmFloat, iAmDouble];
    // Do any additional setup after loading the view, typically from a nib.
    //為了滿足array裡面可以放東西要使用NSNumber型別
    NSNumber *numberInt = [NSNumber numberWithInt:5];
    NSNumber *numberInt2 = [NSNumber numberWithInt:6];
    int var1 = numberInt.intValue;
    int var2 = numberInt2.intValue;
    int sum = var1 + var2;
    NSLog(@"sum: %d",sum);
    
    NSNumber* numSum = [NSNumber numberWithInt:sum];
    //轉成NSNumber就可以放到NSArray中了
    NSArray* arr = @[numberInt, numberInt2, numSum];
    
    //可以把NSNumber這樣的object轉成NSString
    NSString* str = numSum.stringValue;
    
    NSInteger someInt = 55;
    
    NSNumber *multiplyNum = [NSNumber numberWithInteger:[numberInt intValue] * [numberInt2 intValue]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
