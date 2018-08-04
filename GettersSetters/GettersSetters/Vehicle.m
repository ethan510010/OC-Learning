//
//  Vehicle.m
//  GettersSetters
//
//  Created by EthanLin on 2018/7/19.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

-(void) setOdometer:(long)odometer{
    if (odometer > _odometer){
        _odometer = odometer;
    }
}

-(NSString*) model{
    if ([_model isEqualToString:@"Honda"]){
        return @"POS";
    }else{
        return _model;
    }
}

@end
