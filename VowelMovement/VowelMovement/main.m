//
//  main.m
//  VowelMovement
//
//  Created by EthanLin on 2018/7/29.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray* originalSrings = [NSArray arrayWithObjects:@"Sauerkraut",@"Raygun",@"Big Nerd Ranch",@"Mississippi", nil];
        NSLog(@"original strings: %@",originalSrings);
        NSMutableArray* devowelizedStrings = [NSMutableArray array];
        NSArray* vowels = [NSArray arrayWithObjects:@"a",@"e",@"i",@"o",@"u", nil];
        //聲明Block
        void (^devowelizer)(id, NSUInteger, BOOL*);
        devowelizer = ^(id string, NSUInteger i, BOOL* stop){
            NSMutableString* newString = [NSMutableString stringWithString:string];
            
            for (NSString* s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
                
            }
            [devowelizedStrings addObject:newString];
        };
        
        //呼叫block
        [originalSrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"newStrings: %@", devowelizedStrings);
    }
    return 0;
}
