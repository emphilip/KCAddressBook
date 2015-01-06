//
//  KC_Name.h
//  KCAddressBook
//
//  Created by Edward on 2015-01-04.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KC_Name : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *first;
@property (nonatomic, strong) NSString *last;

+ (instancetype)initWithDictionary:(NSDictionary *)rawDict;
-(NSString *) getFullName;

@end
