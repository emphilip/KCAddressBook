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

+ (id)initWithDictionary:(NSDictionary *)rawDict{
    KC_ContactUser *user = [KC_ContactUser init];
    
    if (user != nil){
        user.gender = [rawDict objectForKey:@"gender"];
        
        user.name = [KC_Name initWithDictionary:[rawDict objectForKey:@"name"]];
        
        user.email = [rawDict objectForKey:@"email"];
        user.username = [rawDict objectForKey:@"username"];
        user.password = [rawDict objectForKey:@"password"];
        
        user.salt = [rawDict objectForKey:@"salt"];
        user.md5 = [rawDict objectForKey:@"md5"];
        user.sha1 = [rawDict objectForKey:@"sha1"];
        user.sha256 = [rawDict objectForKey:@"sha256"];
        user.registered = [rawDict objectForKey:@"registered"];
        user.dob = [rawDict objectForKey:@"dob"];
        user.phone = [rawDict objectForKey:@"phone"];
        user.cell = [rawDict objectForKey:@"cell"];
        user.SSN = [rawDict objectForKey:@"SSN"];
        user.version = [rawDict objectForKey:@"version"];
    }
    
    return user;
}

@end
