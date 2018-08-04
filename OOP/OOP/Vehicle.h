//
//  Vehicle.h
//  OOP
//
//  Created by EthanLin on 2018/7/20.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject
@property (nonatomic,strong) NSString* name;
@property (nonatomic,strong) NSString* model;
@property (nonatomic,strong) NSString* engineSize;
-(void) drive;
@end
