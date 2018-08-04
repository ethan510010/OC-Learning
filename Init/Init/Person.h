//
//  Person.h
//  Init
//
//  Created by EthanLin on 2018/7/23.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic,strong) NSString* firstName;
@property (nonatomic,strong) NSString* lastName;
-(id) initWithFirstName:(NSString*) first lastName: (NSString*) last;
-(void)printName;
@end
