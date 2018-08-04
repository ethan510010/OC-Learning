//
//  Fraction.h
//  ClassLearning
//
//  Created by EthanLin on 2018/7/25.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject
@property int numerator;
@property int denominator;
@property int number1;
-(instancetype) initWithNumber: (int) number1;
-(void) print;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
@end

NS_ASSUME_NONNULL_END
