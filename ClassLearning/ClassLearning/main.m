//
//  main.m
//  ClassLearning
//
//  Created by EthanLin on 2018/7/25.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableString *first = [@"My string" mutableCopy];
        NSString *second = first;
        //下面這行會進行深拷貝，所以會額外分配記憶體
//        NSString *second = [first copy];
        [first setString:@"Something else"];
        NSLog(@"%@", first);
        NSLog(@"%@", second);
        
        NSMutableArray* mutableArray = [NSMutableArray arrayWithObjects:@"A",@"B",@"C", nil];
        NSLog(@"%@",mutableArray);
        NSError* error;
     
        void (^simpleBlock)(void) = ^{
            NSLog(@"This is a block");
        };
        simpleBlock();
    }
    return 0;
}
