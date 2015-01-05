//
//  KC_HTTPClient.h
//  KCAddressBook
//
//  Created by Edward on 2015-01-04.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@protocol KC_HTTPClientDelgate;

@interface KC_HTTPClient : AFHTTPSessionManager

@property (nonatomic, weak) id<KC_HTTPClientDelgate> delegate;

+ (KC_HTTPClient *)sharedClient;
- (NSMutableURLRequest *)getContactsFromService;

@end


@protocol KC_HTTPClientDelgate <NSObject>
@optional
-(void)KC_HTTPClient:(KC_HTTPClient *)client didSucceedWithData:(id)vc_data;
-(void)KC_HTTPClient:(KC_HTTPClient *)client didFailWithError:(NSError *)error;
@end