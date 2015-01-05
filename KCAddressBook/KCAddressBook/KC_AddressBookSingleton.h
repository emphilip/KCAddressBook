//
//  KC_AddressBookSingleton.h
//  KCAddressBook
//
//  Created by Edward on 2015-01-05.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KC_AddressBookSingleton : NSObject

@property (strong, nonatomic) NSArray *contactList;

+ (KC_AddressBookSingleton *) instance;


@end
