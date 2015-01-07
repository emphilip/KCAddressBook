//
//  ContactEditViewController.h
//  KCAddressBook
//
//  Created by Edward on 2015-01-06.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "KC_ContactUser.h"

@interface ContactViewController : UIViewController

@property (strong, nonatomic) KC_ContactUser *contact;
@property (strong, nonatomic) IBOutlet UIImageView *profileImageView;
@property (strong, nonatomic) IBOutlet UILabel *fullNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *emailLabel;
@property (strong, nonatomic) IBOutlet UILabel *phoneLabel;
@property (strong, nonatomic) IBOutlet UITextView *addressTextView;


@end
