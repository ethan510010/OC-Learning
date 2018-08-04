//
//  Person.m
//  Init
//
//  Created by EthanLin on 2018/7/23.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id) initWithFirstName:(NSString *)first lastName:(NSString *)last{
    self.firstName = first;
    self.lastName = last;
    self = [super init];
    return self;
}

-(void) printName{
    NSLog(@"%@%@",self.firstName,self.lastName);
}

@end
