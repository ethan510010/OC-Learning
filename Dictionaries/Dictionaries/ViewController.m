//
//  ViewController.m
//  Dictionaries
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
    NSNumber* age = [NSNumber numberWithInt:40];
    NSNumber* age2 = [NSNumber numberWithInt:34];
    NSDictionary* dic = @{@"jack":age, @"john":age2};
    int jackAge = [[dic objectForKey:@"jack"] intValue];
    //下面兩行跟上面一行是同樣意思
    NSNumber* age3 = [dic objectForKey:@"jack"];
    int jackAge2 = [age3 intValue];
    NSLog(@"Jack age: %d",jackAge);
    
    //如果要修改Dictionary內容可以要用mutable Dic
    NSMutableDictionary* mutableDic = [@{
                                        @"1":@"BMW",@"2":@"VOLVO"
                                        } mutableCopy];
    NSMutableDictionary* mut2 = [[NSMutableDictionary alloc]init];
    [mut2 setObject:@"An object" forKey:@"A key"];
    [mut2 setObject:[NSNumber numberWithInt:20] forKey:@"double"];
    NSLog(@"%@",mut2);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
