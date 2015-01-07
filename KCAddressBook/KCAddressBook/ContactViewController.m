//
//  ContactEditViewController.m
//  KCAddressBook
//
//  Created by Edward on 2015-01-06.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import "ContactEditViewController.h"

@implementation ContactViewController

@synthesize contact;


-(void) viewDidLoad{
    [super viewDidLoad];
    UIImage *profileImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[[[self contact] picture] medium]]]];
    [[self profileImageView]  setImage:profileImage];
    [[[self profileImageView] layer] setCornerRadius:25];
}

@end
