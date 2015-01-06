//
//  AddressBookSingleton.h
//  KCAddressBook
//
//  Created by Edward on 2015-01-05.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressBookSingleton : NSObject {
    NSMutableArray *contactList;
}

@property (nonatomic, retain) NSMutableArray *contactList;

+ (id)instance;

@end

