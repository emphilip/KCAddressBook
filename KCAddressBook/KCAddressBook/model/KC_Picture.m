//
//  KC_Picture.m
//  KCAddressBook
//
//  Created by Edward on 2015-01-04.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import "KC_Picture.h"

@implementation KC_Picture

+ (id)initWithDictionary:(NSDictionary *)rawDict{
    KC_Picture *pic = [KC_Picture init];
    
    if (pic != nil){
        pic.large = [rawDict objectForKey:@"large"];
        pic.medium = [rawDict objectForKey:@"medium"];
        pic.thumbnail = [rawDict objectForKey:@"thumbnail"];
    }
    
    return pic;
}

@end
