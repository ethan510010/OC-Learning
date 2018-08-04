//
//  ViewController.m
//  Properties
//
//  Created by EthanLin on 2018/7/19.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person* person1 = [[Person alloc] init];
    person1.firstName = @"Sandra";
    [person1 setLastName:@"Mandra"];
    //很明顯可以嘗試person1調用不到isInsecure這個屬性，因為他被寫在Person這個class的{}內，是private的，只有Person這個class可以用
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
