//
//  ViewController.m
//  Delegate
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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)passDataDelegate:(NSString *)colorName {
    NSLog(@"OKPass");
    if ([colorName isEqualToString:@"Red"]){
        self.view.backgroundColor = UIColor.redColor;
    }else if ([colorName isEqualToString:@"Green"]){
        self.view.backgroundColor = UIColor.greenColor;
    }else if ([colorName isEqualToString:@"Blue"]){
        self.view.backgroundColor = UIColor.blueColor;
    }
}


//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    SecondViewController* secondVC = segue.destinationViewController;
//    secondVC.delegate = self;
//}

@end
