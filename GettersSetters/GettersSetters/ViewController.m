//
//  ViewController.m
//  GettersSetters
//
//  Created by EthanLin on 2018/7/19.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"
#import "Vehicle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Vehicle* car = [[Vehicle alloc] init ];
    car.odometer = -100;
    NSLog(@"Odometer: %lu", car.odometer);
    car.model = @"Toyota";
    NSLog(@"Make model %@",car.model);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
