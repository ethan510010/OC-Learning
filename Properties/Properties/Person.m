//
//  Person.m
//  Properties
//
//  Created by EthanLin on 2018/7/19.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void) test{
    self.firstName = @"Blah";
    _firstName = @"Jack";
    //instance variable調用不能透過self，直接調用就好
    isInsecure = YES;
    [self setLastName:@"Davis"];
    
}

@end
