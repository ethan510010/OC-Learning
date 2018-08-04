//
//  ViewController.m
//  Init
//
//  Created by EthanLin on 2018/7/23.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person* person = [[Person alloc] init];
    [person printName];
    Person* person3 = [[Person alloc] initWithFirstName:@"Petey" lastName:@"McFreedy"];
    [person3 printName];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
