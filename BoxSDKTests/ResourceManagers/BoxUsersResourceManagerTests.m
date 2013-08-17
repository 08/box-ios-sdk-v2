//
//  BoxUsersResourceManagerTests.m
//  BoxSDK
//
//  Created on 8/16/13.
//  Copyright (c) 2013 Box. All rights reserved.
//

#import "BoxUsersResourceManagerTests.h"

#import "BoxSDKTestsHelpers.h"

#import "BoxAPIJSONOperation.h"
#import "BoxUsersRequestBuilder.h"
#import "BoxUsersResourceManager.h"
#import "BoxSDKConstants.h"
#import "BoxSerialOAuth2Session.h"
#import "BoxSerialAPIQueueManager.h"
#import "NSURL+BoxURLHelper.h"

#import <OCMock/OCMock.h>

#define BEARER_TOKEN_VALUE (@"bearertoken")
#define FOLDERS_RESOURCE   (@"folders")

@implementation BoxUsersResourceManagerTests

- (void)setUp
{
    APIBaseURL = @"https://api.box.com";
    APIVersion = @"2.0";
    OAuth2Session = [[BoxSerialOAuth2Session alloc] init];
    OAuth2Session.accessToken = BEARER_TOKEN_VALUE;
    queue = nil;
    usersManager = [[BoxUsersResourceManager alloc] initWithAPIBaseURL:APIBaseURL OAuth2Session:OAuth2Session queueManager:nil];
    
    userID = BoxAPIUserIDMe;
}

#pragma mark - User Info Tests

@end
