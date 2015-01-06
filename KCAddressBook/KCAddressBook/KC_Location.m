//
//  KC_Location.m
//  KCAddressBook
//
//  Created by Edward on 2015-01-04.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import "KC_Location.h"

@implementation KC_Location

+ (instancetype)initWithDictionary:(NSDictionary *)rawDict{
    KC_Location *location = [[self alloc] init];
    
    if (location != nil){
        location.street = [rawDict objectForKey:@"street"];
        location.city = [rawDict objectForKey:@"city"];
        location.state = [rawDict objectForKey:@"state"];
        location.zip = [rawDict objectForKey:@"zip"];
    }
    
    return location;
}

@end
