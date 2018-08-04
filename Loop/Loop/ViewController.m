//
//  ViewController.m
//  Loop
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
    
    NSArray* cars = @[@"Bimmer",@"Master",@"Bom"];
//    for (int x = 0; x < cars.count; x++) {
//        NSString* car = [cars objectAtIndex:x];
//        NSLog(@"%@",car);
//    }
//
//    for (NSString* car in cars) {
//        NSLog(@"%@",car);
//    }
    NSMutableDictionary* mutableDic = [@{
                                         @"1":@"BMW",@"2":@"VOLVO"
                                         } mutableCopy];
    for (NSString* key in mutableDic.allKeys) {
        NSLog(@"%@",key);
    }
    for (NSString* value in mutableDic.allValues) {
        NSLog(@"%@",value);
    }
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
