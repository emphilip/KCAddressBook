//
//  KC_ContactUser.h
//  KCAddressBook
//
//  Created by Edward on 2015-01-04.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KC_Name.h"
#import "KC_Location.h"
#import "KC_Picture.h"

@interface KC_ContactUser : NSObject

@property (nonatomic, strong) NSString *gender;

@property (nonatomic, strong) KC_Name *name;
@property (nonatomic, strong) KC_Location *location;

@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;

@property (nonatomic, strong) NSString *salt;
@property (nonatomic, strong) NSString *md5;
@property (nonatomic, strong) NSString *sha1;
@property (nonatomic, strong) NSString *sha256;
@property (nonatomic, strong) NSString *registered;
@property (nonatomic, strong) NSString *dob;
@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) NSString *cell;
@property (nonatomic, strong) NSString *SSN;

@property (nonatomic, strong) KC_Picture *picture;

@property (nonatomic, strong) NSString *version;

+ (instancetype)initWithDictionary:(NSDictionary *)rawDict;

@end
