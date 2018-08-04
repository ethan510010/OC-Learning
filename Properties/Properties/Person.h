//
//  Person.h
//  Properties
//
//  Created by EthanLin on 2018/7/19.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    //這個屬性稱為instance variable，不會有getter與setter
    BOOL isInsecure;
}

//沒有寫在{}裡面的話就代表屬性是public的，如果寫在裡面就是private(如上面)，private指的就是其他class是調用不到的
//前面有@property的會自動產生getter與setter
@property (nonatomic, strong) NSString* firstName;
@property (nonatomic, strong) NSString* lastName;

@end
