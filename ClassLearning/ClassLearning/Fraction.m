//
//  Fraction.m
//  ClassLearning
//
//  Created by EthanLin on 2018/7/25.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

- (void)print{
    NSLog(@"%i/%i", self.numerator, self.denominator);
}

- (double)convertToNum{
    if (self.denominator != 0){
        return (double) self.numerator/self.denominator;
    }else{
        return NAN;
    }
}

- (void)setTo:(int)n over:(int)d{
    self.numerator = n;
    self.denominator = d;
    NSLog(@"%d",n);
}


- (instancetype)initWithNumber:(int)number1{
    if (self = [super init]){
        self.number1 = number1;
    }
    return self;
}

@end
