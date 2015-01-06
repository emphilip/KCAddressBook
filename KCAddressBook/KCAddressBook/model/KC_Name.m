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
        name.title = [rawDict objectForKey:@"title"];
        name.first = [rawDict objectForKey:@"first"];
        name.last = [rawDict objectForKey:@"last"];
    }
    
    return name;
}


-(NSString *) getFormattedFullName{
    NSString *formattedName = [NSString stringWithFormat:@"%@%@. %@%@ %@%@",
                               [[self.title substringToIndex:1] uppercaseString],
                               [self.title substringFromIndex:1],
                               [[self.first substringToIndex:1] uppercaseString],
                               [self.first substringFromIndex:1],
                               [[self.last substringToIndex:1] uppercaseString],
                               [self.last substringFromIndex:1]];
                               
    return formattedName;
}

@end
