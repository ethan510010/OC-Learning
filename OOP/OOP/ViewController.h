//
//  ViewController.h
//  OOP
//
//  Created by EthanLin on 2018/7/20.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
   //變數
    __weak IBOutlet UIButton *btn;
    int number1;
    int number2;
}
//產生getter setter
@property (weak, nonatomic) IBOutlet UILabel *label;

-(int) number1;
-(void) setNumber1: (int) value;
@property (assign, nonatomic) int age;

@end


