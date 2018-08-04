//
//  ViewController.h
//  ClassAnatomy
//
//  Created by EthanLin on 2018/7/19.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//前面加property可以讓之後實體化此類別時，可以調用到這個屬性，那如果不想要讓這個類別實體化之後可以直接調用到裡面的屬性，那麼可以把屬性寫在.m檔的interface段
@property (nonatomic, strong) NSString* name;

@end

