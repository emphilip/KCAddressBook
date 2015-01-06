//
//  KC_HTTPClient.m
//  KCAddressBook
//
//  Created by Edward on 2015-01-04.
//  Copyright (c) 2015 Edward Philip. All rights reserved.
//

#import "KC_Constants.h"

#import "KC_HTTPClient.h"

@implementation KC_HTTPClient

+(KC_HTTPClient *)sharedClient {
    static KC_HTTPClient *sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedClient = [[KC_HTTPClient alloc] initWithBaseURL:[NSURL URLWithString:KC_API_BaseUrl]];
    });
    
    return sharedClient;
}



- (instancetype)initWithBaseURL:(NSURL *)url
{
    self = [super initWithBaseURL:url];
    
    if (self) {
        self.responseSerializer = [AFJSONResponseSerializer serializer];
        self.requestSerializer = [AFJSONRequestSerializer serializer];
    }
    
    return self;
}



-(void) fetchNewUsers{
    NSDictionary *params = [[NSDictionary alloc] initWithObjectsAndKeys:@"100", @"results",
                            nil];
    [self GET:@"" parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        [self.delegate successfulCallForHTTPClient:self withData:responseObject];
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [self.delegate failedCallWithHTTPClient:self withError:error];
    }];
}



@end
