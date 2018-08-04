//
//  ViewController.m
//  Null
//
//  Created by EthanLin on 2018/7/23.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(int) sum:(nonnull NSNumber*) numA: (nonnull NSNumber*) numB{
    int theSUM = numA.intValue + numB.intValue;
    return theSUM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNumber* num1;
    NSNumber* num2;
    //OC沒有optional所以要自己判斷
    if (num1 && num2){
        int sum = [self sum:num1 :num2];
        NSLog(@"Sum:%d",sum);
    }else{
        NSLog(@"These are null!");
    }
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
