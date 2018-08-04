//
//  ViewController.m
//  Callback
//
//  Created by EthanLin on 2018/7/29.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
        if ([self.colorFromSecondVC isEqualToString:@"Red"]){
            self.view.backgroundColor = UIColor.redColor;
        }else if ([self.colorFromSecondVC isEqualToString:@"Green"]){
            self.view.backgroundColor = UIColor.greenColor;
        }else if ([self.colorFromSecondVC isEqualToString:@"Blue"]){
            self.view.backgroundColor = UIColor.blueColor;
        }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
