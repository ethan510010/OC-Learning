//
//  ViewController.m
//  BasicDemo
//
//  Created by EthanLin on 2018/7/19.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)hideImageView:(UIButton *)sender {
    self.imageview.hidden = YES;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageview.image = [UIImage imageNamed:@"s1"];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
