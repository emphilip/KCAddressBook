//
//  KC_Name.m
//  KCAddressBook
//
//  Created by Edward on 2015-01-04.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import "KC_Name.h"

@implementation KC_Name

+ (id)initWithDictionary:(NSDictionary *)rawDict{
    KC_Name *name = [KC_Name init];
    
    if (self != nil){
        name.title = [rawDict objectForKey:@"title"];
        name.first = [rawDict objectForKey:@"first"];
        name.last = [rawDict objectForKey:@"last"];
    }
    
    return self;
}

@end
