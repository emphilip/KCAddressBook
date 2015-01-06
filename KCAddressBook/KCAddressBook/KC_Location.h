//
//  KC_Location.h
//  KCAddressBook
//
//  Created by Edward on 2015-01-04.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KC_Location : NSObject

@property (nonatomic, strong) NSString *street;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *zip;

+ (instancetype)initWithDictionary:(NSDictionary *)rawDict;

@end
