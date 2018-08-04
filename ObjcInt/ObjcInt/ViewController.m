//
//  ViewController.m
//  ObjcInt
//
//  Created by EthanLin on 2018/7/23.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"
//讓OBJC可以辨識Swift檔(讓objc可以讀到Swift檔)
#import "ObjcInt-Swift.h"

@interface ViewController ()
@property (nonatomic,strong) SecondVC* secondVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)loadSecondVC:(id)sender {
    _secondVC = [[SecondVC alloc] init];
    _secondVC.view.backgroundColor = [UIColor purpleColor];
    [self presentViewController:_secondVC animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
