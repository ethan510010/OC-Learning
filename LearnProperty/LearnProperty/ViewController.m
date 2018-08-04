//
//  ViewController.m
//  LearnProperty
//
//  Created by EthanLin on 2018/7/28.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSString* carBrand;
}
@property (nonatomic,strong) NSString* myName;
@end

@implementation ViewController
//- (void)setAnotherName:(NSString *)anotherName{
//    anotherName = @"TRY";
//}



- (void)viewDidLoad {
    [super viewDidLoad];
    name = @"OK";
    NSLog(@"%@",name);
    carBrand = @"Toyota";
    NSLog(@"%@",carBrand);
    _anotherName = @"YEs";
    NSLog(@"%@",_anotherName);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
