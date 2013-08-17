//
//  BoxUsersRequestBuilderTests.m
//  BoxSDK
//
//  Created on 8/16/13.
//  Copyright (c) 2013 Box. All rights reserved.
//

#import "BoxUsersRequestBuilderTests.h"

@implementation BoxUsersRequestBuilderTests

- (void)setUp
{
    builder = [[BoxUsersRequestBuilder alloc] init];
}

#pragma mark - Body Dictionary

- (void)testThatBodyDictionaryIsEmptyWhenNoPropertiesAreSet
{
    STAssertEqualObjects(@{}, builder.bodyParameters, @"body parameters should be an empty dictionary if no properties are set");
}

@end
