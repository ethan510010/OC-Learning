//
//  ViewController.m
//  OOP
//
//  Created by EthanLin on 2018/7/20.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"
#import "Honda.h"
@interface ViewController ()



@end

@implementation ViewController

@synthesize age;

//-(void)setAge:(int)age {
//    
//}
//
- (int)age {
    return 100;
}

-(void) setNumber1:(int)value{
    number1 = value;
}

-(int) number1{
    return number1;
    
    
    age
    //下面的會呼叫age的getter
    self.age
}

- (void)viewDidLoad {
    [super viewDidLoad];
    Honda* honda = [[Honda alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%d",self.age);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
