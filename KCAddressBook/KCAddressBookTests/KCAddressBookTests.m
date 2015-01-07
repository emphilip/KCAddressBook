//
//  KCAddressBookTests.m
//  KCAddressBookTests
//
//  Created by Edward on 2015-01-04.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "AddressBookSingleton.h"
#import "KC_ContactUser.h"

@interface KCAddressBookTests : XCTestCase
@property (strong, nonatomic) NSDictionary *testResponseSerializedDictionary;
@end

@implementation KCAddressBookTests

- (void)setUp {
    [super setUp];
    
    if ([self testResponseSerializedDictionary] == nil){
        NSString *filePath = [[NSBundle bundleForClass:[self class]] pathForResource:@"testResponse" ofType:@"json"];
        NSData* data = [NSData dataWithContentsOfFile:filePath];
        self.testResponseSerializedDictionary = (NSDictionary *)[NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    }
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testContactCreation {
    id rawData =[[self testResponseSerializedDictionary] objectForKey:@"results"];
    if ([rawData isKindOfClass:[NSArray class]]) {
        for (NSDictionary *dict in rawData){
            [[[AddressBookSingleton instance] contactList] addObject:[KC_ContactUser initWithDictionary:dict]];
        }
    
        if (([[[AddressBookSingleton instance] contactList] count] == 1) && ([[[[AddressBookSingleton instance] contactList] objectAtIndex:0] isKindOfClass:[KC_ContactUser class]])){
            XCTAssert(YES, @"Successfully Created Contact from JSON response");
        }else{
            XCTAssert(NO, @"Failed to create contact from JSON response");
        }
    }
}

- (void)testContactFormattedName{
    KC_ContactUser *contact = [[[AddressBookSingleton instance] contactList] objectAtIndex:0];
    if ([[[contact name] getFormattedFullName] isEqualToString:@"Ms. Lois Williams"]){
        XCTAssert(YES, @"Successfully Formatted Name for Contact");
    }else{
        XCTAssert(NO, @"Failed to Format Name for Contact");
    }
}


- (void)testContactFormattedAddress{
    KC_ContactUser *contact = [[[AddressBookSingleton instance] contactList] objectAtIndex:0];
    if ([[[contact location] getFormattedAddress] isEqualToString:@"1969 Elgin St\nFrederick, Delaware\n56298"]){
        XCTAssert(YES, @"Successfully Formatted Address for Contact");
    }else{
        XCTAssert(NO, @"Failed to Format Address for Contact");
    }
}

- (void)testContactEmailAddress{
    KC_ContactUser *contact = [[[AddressBookSingleton instance] contactList] objectAtIndex:0];
    if ([[contact email] isEqualToString:@"lois.williams50@example.com"]){
        XCTAssert(YES, @"Successfully retrieved correct email address for Contact");
    }else{
        XCTAssert(NO, @"Failed to retrieve correct email address for Contact");
    }
}

- (void)testContactPhoneNumber{
    KC_ContactUser *contact = [[[AddressBookSingleton instance] contactList] objectAtIndex:0];
    if ([[contact phone] isEqualToString:@"(555)-942-1322"]){
        XCTAssert(YES, @"Successfully retrieved correct phone number for Contact");
    }else{
        XCTAssert(NO, @"Failed to retrieve correct phone number for Contact");
    }
}

@end
