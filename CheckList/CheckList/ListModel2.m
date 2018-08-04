//
//  ListModel2.m
//  CheckList
//
//  Created by EthanLin on 2018/7/21.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ListModel2.h"

@implementation ListModel2

- (instancetype)initWithTitle:(NSString*) title finished:(BOOL) finished
{
    self = [super init];
    if (self) {
        self.title = title;
        self.finished = finished;
    }
    return self;
}
@end
