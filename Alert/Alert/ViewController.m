//
//  ViewController.m
//  Alert
//
//  Created by EthanLin on 2018/7/29.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"

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

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"Title" message:@"This is a test" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* alertAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"按下取😊");
        
    }];
    [alertController addAction:alertAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
