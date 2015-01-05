//
//  KC_Picture.h
//  KCAddressBook
//
//  Created by Edward on 2015-01-04.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KC_Picture : NSObject

@property (nonatomic, strong) NSString *large;
@property (nonatomic, strong) NSString *medium;
@property (nonatomic, strong) NSString *thumbnail;

+ (id)initWithDictionary:(NSDictionary *)rawDict;

@end
