//
//  KC_Name.m
//  KCAddressBook
//
//  Created by Edward on 2015-01-04.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import "KC_Name.h"

@implementation KC_Name

+ (instancetype)initWithDictionary:(NSDictionary *)rawDict{
    KC_Name *name = [[self alloc] init];
    
    if (self != nil){
        name.title = [NSString ][rawDict objectForKey:@"title"];
        name.first = [rawDict objectForKey:@"first"];
        name.last = [rawDict objectForKey:@"last"];
    }
    
    return name;
}


-(NSString *) getFullName{
    NSString *formattedName = [NSString stringWithFormat:@"%@. %@ %@", self.title, self.first, self.last];    
    return formattedName;
}

@end
