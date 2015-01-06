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

+(KC_HTTPClient *)sharedClient;
-(void) fetchNewUsers;

@end


@protocol KC_HTTPClientDelgate <NSObject>
@optional
-(void)successfulCallForHTTPClient:(KC_HTTPClient *)client withData:(id)responseObject;
-(void)failedCallWithHTTPClient:(KC_HTTPClient *)client withError:(NSError *)error;
@end

