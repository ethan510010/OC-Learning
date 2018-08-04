//
//  Honda.h
//  Category
//
//  Created by EthanLin on 2018/7/23.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Honda : NSObject
@property (nonatomic, strong) NSString* model;
@property (nonatomic, strong) NSString* miles;

-(void) increaseMilesToOdometer;
-(void) drive;

@end
