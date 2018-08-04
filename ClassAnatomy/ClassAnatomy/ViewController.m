//
//  ViewController.m
//  ClassAnatomy
//
//  Created by EthanLin on 2018/7/19.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"

//下面三行其實也可以拿掉 屬性都在.h 檔設定就好
@interface ViewController ()
//寫在這裡面的話就可以只被該class讀到，就算在其他地方實體化該class也不能調用到
@property (nonatomic, strong) NSString *vehicle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Name: %@",self.name);
    self.name = @"Jack";
    NSLog(@"Name: %@",self.name);
    _name = @"Peter";
    NSLog(@"Name: %@",_name);
    NSLog(@"Name: %@",self.name);
    [self setName:@"Sylia"];
    NSLog(@"Name: %@",[ self name]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
