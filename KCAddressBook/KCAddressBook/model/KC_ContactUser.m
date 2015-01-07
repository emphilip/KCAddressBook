//
//  KC_ContactUser.m
//  KCAddressBook
//
//  Created by Edward on 2015-01-04.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import "KC_Name.h"
#import "KC_ContactUser.h"

@implementation KC_ContactUser

+ (instancetype)initWithDictionary:(NSDictionary *)rawDict{
    KC_ContactUser *user = [[self alloc] init];
    
    if (user != nil){
        user.gender = [rawDict valueForKeyPath:@"user.gender"];
        
        user.name = [KC_Name initWithDictionary:[rawDict valueForKeyPath:@"user.name"]];
        
        user.email = [rawDict valueForKeyPath:@"user.email"];
        user.username = [rawDict valueForKeyPath:@"user.username"];
        user.password = [rawDict valueForKeyPath:@"user.password"];
        
        user.salt = [rawDict valueForKeyPath:@"user.salt"];
        user.md5 = [rawDict valueForKeyPath:@"user.md5"];
        user.sha1 = [rawDict valueForKeyPath:@"user.sha1"];
        user.sha256 = [rawDict valueForKeyPath:@"user.sha256"];
        user.registered = [rawDict valueForKeyPath:@"user.registered"];
        user.dob = [rawDict valueForKeyPath:@"user.dob"];
        user.phone = [rawDict valueForKeyPath:@"user.phone"];
        user.cell = [rawDict valueForKeyPath:@"user.cell"];
        user.SSN = [rawDict valueForKeyPath:@"user.SSN"];
        user.version = [rawDict valueForKeyPath:@"user.version"];
        
        user.picture = [KC_Picture initWithDictionary:[rawDict valueForKeyPath:@"user.picture"]]
        ;
    }
    
    return user;
}

@end
