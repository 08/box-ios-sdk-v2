//
//  BoxUserTests.m
//  BoxSDK
//
//  Created on 8/14/13.
//  Copyright (c) 2013 Box. All rights reserved.
//

#import "BoxUserTests.h"
#import "BoxSDKTestsHelpers.h"
#import "BoxSDKConstants.h"

#import "BoxUser.h"

@implementation BoxUserTests

-(void)setUp
{
    JSONDictionaryFull = @{
                           BoxAPIObjectKeyType : BoxAPIItemTypeUser,
                           BoxAPIObjectKeyID : @"6000000000", // 6 billion > 2**32
                           BoxAPIObjectKeyName : @"Rick Astley",
                           BoxAPIObjectKeyLogin : @"rick@astley.com",
                           BoxAPIObjectKeyCreatedAt : @"2009-03-04T01:02:03Z", // 1236128523
                           BoxAPIObjectKeyModifiedAt : @"2009-03-05T01:02:03Z", // 1236214923
                           BoxAPIObjectKeyRole : @"admin",
                           BoxAPIObjectKeyLanguage : @"en",
                           BoxAPIObjectKeySpaceAmount : @"10737418240", // 10 GB
                           BoxAPIObjectKeySpaceUsed : @"5368709120", // 5 GB
                           BoxAPIObjectKeyMaxUploadSize: @"1073741824", // 1 GB
                           BoxAPIObjectKeyTrackingCodes: @{
                                   @"never" : @"gonna",
                                   @"give" : @"you",
                                   },
                           BoxAPIObjectKeyCanSeeManagedUsers: YES,
                           BoxAPIObjectKeyIsSyncEnabled: NO,
                           BoxAPIObjectKeyStatus: @"active",
                           BoxAPIObjectKeyJobTitle: @"Singer",
                           BoxAPIObjectKeyPhone: @"1234567890",
                           BoxAPIObjectKeyAddress: @"Never Gonna Let You Down Blvd",
                           BoxAPIObjectKeyIsExemptFromDeviceLimits: YES,
                           BoxAPIObjectKeyIsExemptFromLoginVerification: NO,
                           BoxAPIObjectKeyAvatarURL : @"https://www.box.com/avatar.jpg",
                           };
    JSONDictionaryMini = @{
                           BoxAPIObjectKeyType : BoxAPIItemTypeUser,
                           BoxAPIObjectKeyID : @"6000000000", // 6 billion > 2**32
                           BoxAPIObjectKeyName: @"Rick Astley",
                           BoxAPIObjectKeyLogin: @"rick@astley.com",
                           };
    
    user = [[BoxUser alloc] initWithResponseJSON:JSONDictionaryFull mini:NO];
    miniUser = [[BoxUser alloc] initWithResponseJSON:JSONDictionaryMini mini:YES];
}

- (void)testThatCreatedAtIsParsedCorrectlyIntoADateFromFullFormat
{
    NSDate *expectedDate = [NSDate dateWithTimeIntervalSince1970:1236128523];
    STAssertEqualObjects(expectedDate, user.createdAt, @"expected created_at did not match actual");
}

- (void)testThatCreatedAtIsReturnedAsNilIfUnsetFromMiniFormat
{
    STAssertNil(miniUser.createdAt, @"created_at should be nil");
}


@end
