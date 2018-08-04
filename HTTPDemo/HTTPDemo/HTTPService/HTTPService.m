//
//  HTTPService.m
//  HTTPDemo
//
//  Created by EthanLin on 2018/7/23.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "HTTPService.h"

@implementation HTTPService

+(id) instance{
    static HTTPService* sharedInstance = nil;
    
    
    @synchronized (self){
        if (sharedInstance == nil){
            sharedInstance = [[self alloc] init];
        }
    }
    
    return sharedInstance;
}

@end
