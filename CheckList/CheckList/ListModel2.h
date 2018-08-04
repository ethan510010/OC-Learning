//
//  ListModel2.h
//  CheckList
//
//  Created by EthanLin on 2018/7/21.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListModel2 : NSObject

@property (strong, nonatomic) NSString* title;
@property (assign, nonatomic) BOOL finished;
- (instancetype)initWithTitle: (NSString*) title finished: (BOOL) finished;
@end
