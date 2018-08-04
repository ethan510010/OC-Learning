//
//  ViewController.m
//  Category
//
//  Created by EthanLin on 2018/7/23.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"
#import "Honda.h"
#import "Honda+SupedUp.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Honda* honda = [[Honda alloc] init];
    [honda addUglySpoiler];
    [honda addGoldPlasticSpinnerRims];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
