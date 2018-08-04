//
//  Honda.m
//  OOP
//
//  Created by EthanLin on 2018/7/20.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "Honda.h"

@implementation Honda

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self drive];
    }
    return self;
}

-(void) test{
    self.name = @"Honda";
    self.model = @"Civic";
//    [self drive];
}

-(void) drive{
    NSLog(@"Drive from subclass");
    [super drive];
    
}

@end
