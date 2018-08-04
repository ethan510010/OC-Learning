//
//  main.m
//  Block
//
//  Created by EthanLin on 2018/7/27.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        typedef NSString* (^MyBlock) (NSString*);
//        NSString* (^ printUniversalGreeting)(void) = ^{
//            return  @"Objective-C block learning";
//        };
//        NSString* str = printUniversalGreeting();
//        NSLog(@"str,%@",str);
        
//        NSString* (^ printUniversalGreeting)(NSString*) = ^(NSString* name){
//            return [NSString stringWithFormat:@"Live long and prosper,%@", name];
//        };
        //定義一個Block形式的變數
//        NSString* (^ printUniversalGreeting)(NSString*);
        //實作Block裡面的內容
//        printUniversalGreeting = ^(NSString* name){
//            return [NSString stringWithFormat:@"Live long and prosper, %@",name];
//        };
//        NSLog(@"%@",printUniversalGreeting(@"York"));
        //
        MyBlock printUniversalGreeting = ^(NSString* name){
            return [NSString stringWithFormat:@"Live long and prosper, %@",name];
        };
    }
    return 0;
}
