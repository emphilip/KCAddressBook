//
//  ContactEditViewController.m
//  KCAddressBook
//
//  Created by Edward on 2015-01-06.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import "KC_ContactUser.h"
#import "KC_Name.h"
#import "KC_Location.h"

#import "ContactViewController.h"

@implementation ContactViewController

@synthesize contact;


-(void) viewDidLoad{
    [super viewDidLoad];
    UIImage *profileImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[[[self contact] picture] medium]]]];
    [[self profileImageView]  setImage:profileImage];
    //circular imageview just because
    [[[self profileImageView] layer] setCornerRadius:75];
    [[[self profileImageView] layer] setMasksToBounds:YES];
    [[self fullNameLabel] setText:[[[self contact] name] getFormattedFullName]];
    [[self emailLabel] setText:[[self contact] email]];
    [[self phoneLabel] setText:[[self contact] phone]];
    [[self addressTextView] setText:[[[self contact] location] getFormattedAddress]];
    
    [[self navigationItem] setTitle:[[[self contact] name] getFormattedFullName]];
}

@end
