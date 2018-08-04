//
//  ViewController.m
//  MethodMan
//
//  Created by EthanLin on 2018/7/19.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
//宣告屬性
@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAccount;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bankAccount = 500.50;
    self.itemAccount = 400.00;
    // Do any additional setup after loading the view, typically from a nib.
}

//(方法的回傳值)方法名稱:(參數1型別)參數1名
-(BOOL) canPurchase:(double)amount {
    if (self.bankAccount >= amount){
        return YES;
    }
    return NO;
}

//多參數方法宣告
//一个方法可以包含多个参数，不过后面的参数都要写名字。

//多个参数的写法

//(方法的数据类型) 函数名: (参数1数据类型) 参数1值的名字 参数2的名字: (参数2数据类型) 参数2值的名字 …. ;
-(void) declareWinnerWithPlayerAScore:(NSInteger) scoreA playerBScore:(NSInteger) scoreB{
    if (scoreA > scoreB){
        NSLog(@"Player A wins");
    }else if (scoreB > scoreA){
        NSLog(@"Player B wins");
    }else{
        NSLog(@"The game is at a standstill");
    }
}

-(void) playground{
    //呼叫canPurchase方法
    if ([self canPurchase:self.itemAccount]){
        NSLog(@"We can buy");
    }
    
    [self declareWinnerWithPlayerAScore:55 playerBScore:66];
    
    Person* person = [[Person alloc] init];
    [person speakName];
    [Person stateSpecies];
    
    //實體化一個UIImage
//    UIImage* image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://google.com"]]];
    
    NSString* urlString = @"http://google.com";
    NSURL* url = [NSURL URLWithString:urlString];
    NSData* data = [NSData dataWithContentsOfURL:url];
    UIImage* image = [UIImage imageWithData:data];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
