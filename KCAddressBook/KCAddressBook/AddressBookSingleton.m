//
//  AddressBookSingleton.m
//  KCAddressBook
//
//  Created by Edward on 2015-01-05.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import "AddressBookSingleton.h"

@implementation AddressBookSingleton

@synthesize contactList;

#pragma mark Singleton Methods

+ (id)instance {
    static AddressBookSingleton *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
        sharedInstance.contactList = [[NSMutableArray alloc] initWithObjects:nil];
    });
    return sharedInstance;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}


@end
