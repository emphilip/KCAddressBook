//
//  ContactListTableViewController.h
//  KCAddressBook
//
//  Created by Edward on 2015-01-05.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KC_HTTPClient.h"

@interface ContactListTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate, KC_HTTPClientDelgate>


@end
