//
//  ViewController.m
//  ConditionPractice
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
    BOOL myIcool = YES;
    BOOL isTheOtherPersonCool = NO;
    
    
    NSString *name = nil;
    if (name){
        NSLog(@"Name: %@",name);
    }
    
    if (!name){
        name = @"Sandra";
        NSLog(@"%@",name);
    }
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
