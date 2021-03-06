//
//  ContactListTableViewController.m
//  KCAddressBook
//
//  Created by Edward on 2015-01-05.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import "AddressBookSingleton.h"
#import "KC_ContactUser.h"

#import "ContactViewController.h"
#import "ContactListTableViewController.h"

@implementation ContactListTableViewController


-(void) viewDidLoad{
    [super viewDidLoad];
    KC_HTTPClient *client = [KC_HTTPClient sharedClient];
    client.delegate = self;
    
}

- (IBAction)fetchNewContactsFromWeb:(id)sender{
    [[KC_HTTPClient sharedClient] fetchNewUsers];
}


#pragma mark - TableView Delegate Methods

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    AddressBookSingleton *abSingleton = [AddressBookSingleton instance];
    NSInteger rowCount = [[abSingleton contactList]  count];
    return rowCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ContactCell"];
    
    KC_ContactUser *user = (KC_ContactUser *)[[[AddressBookSingleton instance] contactList] objectAtIndex:[indexPath row]];
    cell.textLabel.text = [user.name getFormattedFullName];
    cell.detailTextLabel.text = [user phone];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"showContactView" sender:self];
    
    // note: should not be necessary but current iOS 8.0 bug (seed 4) requires it
    //    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}


#pragma mark - Segue methods

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showContactView"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ContactViewController *contactViewController = segue.destinationViewController;
        KC_ContactUser *contactToEdit = [[[AddressBookSingleton instance] contactList] objectAtIndex:indexPath.row];
        contactViewController.contact = contactToEdit;
    }
    
}


#pragma mark - HTTP Client Delegate Methods

-(void)successfulCallForHTTPClient:(KC_HTTPClient *)client withData:(id)responseObject {
    id rawData =[(NSDictionary *)responseObject objectForKey:@"results"];
    if ([rawData isKindOfClass:[NSArray class]]) {
        for (NSDictionary *dict in rawData){
            [[[AddressBookSingleton instance] contactList] addObject:[KC_ContactUser initWithDictionary:dict]];
        }
    }
    
    [self.tableView reloadData];
}

-(void)failedCallWithHTTPClient:(KC_HTTPClient *)client withError:(NSError *)error{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Unable to Sync"
                                                    message:@"Please check your internet connection and please try again"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil, nil];
    [alert show];
}

@end
