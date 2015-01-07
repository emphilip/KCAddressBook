//
//  ContactEditViewController.h
//  KCAddressBook
//
//  Created by Edward on 2015-01-06.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "KC_ContactUser.h"

@interface ContactViewController : UIViewController{
     KC_ContactUser *contact;
}

@property (strong, nonatomic) KC_ContactUser *contact;
@property (strong, nonatomic) IBOutlet UIImageView *profileImageView;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;


@end
