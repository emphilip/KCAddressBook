//
//  KC_AddressBookSingleton.m
//  KCAddressBook
//
//  Created by Edward on 2015-01-05.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import "KC_AddressBookSingleton.h"

@interface KC_AddressBookSingleton()

// Make any initialization of your class.
- (id) initSingleton;

@end


@implementation KC_AddressBookSingleton

- (id) initSingleton
{
    if ((self = [super init]))
    {
        // Initialization code here.
    }
    
    return self;
}

+ (KC_AddressBookSingleton *) instance
{
    static KC_AddressBookSingleton *instance = nil;
    
    if (instance != nil)
    {
        return instance;
    }
    
    static dispatch_once_t safer;
    dispatch_once(&safer, ^(void)
                  {
                      instance = [[KC_AddressBookSingleton alloc] initSingleton];
                  });
    
    return instance;
    
}

@end
