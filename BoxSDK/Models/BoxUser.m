//
//  BoxUser.m
//  BoxSDK
//
//  Created on 3/14/13.
//  Copyright (c) 2013 Box. All rights reserved.
//

#import "BoxUser.h"

#import "BoxCollection.h"
#import "BoxLog.h"
#import "BoxSDKConstants.h"

@implementation BoxUser

- (NSString *)name
{
    id name = [self.rawResponseJSON objectForKey:BoxAPIObjectKeyName];
    if (name == nil)
    {
        return nil;
    }
    else if (![name isKindOfClass:[NSString class]])
    {
        BOXAssertFail(@"name should be a string");
        return nil;
    }
    return (NSString *)name;
}

- (NSString *)login
{
    id login = [self.rawResponseJSON objectForKey:BoxAPIObjectKeyLogin];
    if (login == nil)
    {
        return nil;
    }
    else if (![login isKindOfClass:[NSString class]])
    {
        BOXAssertFail(@"login should be a string");
        return nil;
    }
    return (NSString *)login;
}

- (NSDate *)createdAt
{
    id createdAt = [self.rawResponseJSON objectForKey:BoxAPIObjectKeyCreatedAt];
    if (createdAt == nil)
    {
        return nil;
    }
    else if (![createdAt isKindOfClass:[NSString class]])
    {
        BOXAssertFail(@"created_at should be a string");
        return nil;
    }
    
    return [self dateWithISO8601String:(NSString *)createdAt];
}

- (NSDate *)modifiedAt
{
    id modifiedAt = [self.rawResponseJSON objectForKey:BoxAPIObjectKeyModifiedAt];
    if (modifiedAt == nil)
    {
        return nil;
    }
    else if (![modifiedAt isKindOfClass:[NSString class]])
    {
        BOXAssertFail(@"modified_at should be a string");
        return nil;
    }
    
    return [self dateWithISO8601String:(NSString *)modifiedAt];
}

- (NSString *)role
{
    id role = [self.rawResponseJSON objectForKey:BoxAPIObjectKeyRole];
    if (role == nil)
    {
        return nil;
    }
    else if (![role isKindOfClass:[NSString class]])
    {
        BOXAssertFail(@"role should be a string");
        return nil;
    }
    return (NSString *)role;
}

- (NSNumber *)spaceAmount
{
    id spaceAmount = [self.rawResponseJSON valueForKey:BoxAPIObjectKeySpaceAmount];
    if (spaceAmount == nil)
    {
        return nil;
    }
    else if (![spaceAmount isKindOfClass:[NSNumber class]])
    {
        BOXAssertFail(@"space_amount should be a number");
        return nil;
    }
    return [NSNumber numberWithDouble:[spaceAmount doubleValue]];
}

- (NSNumber *)spaceUsed
{
    id spaceUsed = [self.rawResponseJSON valueForKey:BoxAPIObjectKeySpaceUsed];
    if (spaceUsed == nil)
    {
        return nil;
    }
    else if (![spaceUsed isKindOfClass:[NSNumber class]])
    {
        BOXAssertFail(@"space_used should be a number");
        return nil;
    }
    return [NSNumber numberWithDouble:[spaceUsed doubleValue]];
}

- (NSNumber *)maxUploadSize
{
    id maxUploadSize = [self.rawResponseJSON valueForKey:BoxAPIObjectKeyMaxUploadSize];
    if (maxUploadSize == nil)
    {
        return nil;
    }
    else if (![maxUploadSize isKindOfClass:[NSNumber class]])
    {
        BOXAssertFail(@"max_upload_size should be a number");
        return nil;
    }
    return [NSNumber numberWithDouble:[maxUploadSize doubleValue]];
}

- (id)trackingCodes
{
    id trackingCodes = [self.rawResponseJSON objectForKey:BoxAPIObjectKeyTrackingCodes];
    if ([trackingCodes isEqual:[NSNull null]])
    {
        return [NSNull null];
    }
    else if (trackingCodes == nil)
    {
        return nil;
    }
    else if (![trackingCodes isKindOfClass:[NSDictionary class]])
    {
        BOXAssertFail(@"tracking_codes should be a dictionary");
        return nil;
    }
    return (NSDictionary *)trackingCodes;
}

- (NSNumber *)canSeeManagedUsers
{
    id canSeeManagedUsers = [self.rawResponseJSON valueForKey:BoxAPIObjectKeyCanSeeManagedUsers];
    if (canSeeManagedUsers == nil)
    {
        return nil;
    }
    else if (![canSeeManagedUsers isKindOfClass:[NSNumber class]])
    {
        BOXAssertFail(@"can_see_managed_users should be a boolean");
        return nil;
    }
    return [NSNumber numberWithBool:[canSeeManagedUsers boolValue]];
}

- (NSNumber *) isSyncEnabled
{
    id isSyncEnabled = [self.rawResponseJSON valueForKey:BoxAPIObjectKeyIsSyncEnabled];
    if (isSyncEnabled == nil)
    {
        return nil;
    }
    else if (![isSyncEnabled isKindOfClass:[NSNumber class]])
    {
        BOXAssertFail(@"is_sync_enabled should be a boolean");
        return nil;
    }
    return [NSNumber numberWithBool:[isSyncEnabled boolValue]];
}

- (NSString *) status
{
    id status = [self.rawResponseJSON objectForKey:BoxAPIObjectKeyStatus];
    if (status == nil)
    {
        return nil;
    }
    else if (![status isKindOfClass:[NSString class]])
    {
        BOXAssertFail(@"status should be a string");
        return nil;
    }
    return (NSString *)status;
}

- (NSString *) jobTitle
{
    id jobTitle = [self.rawResponseJSON objectForKey:BoxAPIObjectKeyJobTitle];
    if (jobTitle == nil)
    {
        return nil;
    }
    else if (![jobTitle isKindOfClass:[NSString class]])
    {
        BOXAssertFail(@"job_title should be a string");
        return nil;
    }
    return (NSString *)jobTitle;
}

- (NSString *)phone
{
    id phone = [self.rawResponseJSON objectForKey:BoxAPIObjectKeyPhone];
    if (phone == nil)
    {
        return nil;
    }
    else if (![phone isKindOfClass:[NSString class]])
    {
        BOXAssertFail(@"phone should be a string");
        return nil;
    }
    return (NSString *)phone;
}

- (NSString *)address
{
    id address = [self.rawResponseJSON objectForKey:BoxAPIObjectKeyAddress];
    if (address == nil)
    {
        return nil;
    }
    else if (![address isKindOfClass:[NSString class]])
    {
        BOXAssertFail(@"address should be a string");
        return nil;
    }
    return (NSString *)address;
}

- (NSURL *)avatarUrl
{
    id avatarUrl = [self.rawResponseJSON objectForKey:BoxAPIObjectKeyAvatarURL];
    if (avatarUrl == nil)
    {
        return nil;
    }
    else if (![avatarUrl isKindOfClass:[NSString class]])
    {
        BOXAssertFail(@"avatar_url should be a string");
        return nil;
    }
    return [NSURL URLWithString:avatarUrl];
}

- (NSNumber *)isExemptFromDeviceLimits
{
    id isExemptFromDeviceLimits = [self.rawResponseJSON valueForKey:BoxAPIObjectKeyIsExemptFromDeviceLimits];
    if (isExemptFromDeviceLimits == nil)
    {
        return nil;
    }
    else if (![isExemptFromDeviceLimits isKindOfClass:[NSNumber class]])
    {
        BOXAssertFail(@"is_exempt_from_device_limits should be a boolean");
        return nil;
    }
    return [NSNumber numberWithBool:[isExemptFromDeviceLimits boolValue]];
}

- (NSNumber *)isExemptFromLoginVerification
{
    id isExemptFromLoginVerification = [self.rawResponseJSON valueForKey:BoxAPIObjectKeyIsExemptFromLoginVerification];
    if (isExemptFromLoginVerification == nil)
    {
        return nil;
    }
    else if (![isExemptFromLoginVerification isKindOfClass:[NSNumber class]])
    {
        BOXAssertFail(@"is_exempt_from_login_verification should be a boolean");
        return nil;
    }
    return [NSNumber numberWithBool:[isExemptFromLoginVerification boolValue]];
}

- (NSNumber *)isDeactivated
{
    id isDeactivated = [self.rawResponseJSON valueForKey:BoxAPIObjectKeyIsDeactivated];
    if (isDeactivated == nil)
    {
        return nil;
    }
    else if (![isDeactivated isKindOfClass:[NSNumber class]])
    {
        BOXAssertFail(@"is_deactivated should be a number");
        return nil;
    }
    return [NSNumber numberWithBool:[isDeactivated boolValue]];
}

- (NSNumber *)isPasswordResetRequired
{
    id isPasswordResetRequired = [self.rawResponseJSON valueForKey:BoxAPIObjectKeyIsPasswordResetRequired];
    if (isPasswordResetRequired == nil)
    {
        return nil;
    }
    else if (![isPasswordResetRequired isKindOfClass:[NSNumber class]])
    {
        BOXAssertFail(@"is_password_reset_required should be a number");
        return nil;
    }
    return [NSNumber numberWithBool:[isPasswordResetRequired boolValue]];
}

- (NSString *)deactivatedReason
{
    id role = [self.rawResponseJSON objectForKey:BoxAPIObjectKeyRole];
    if (role == nil)
    {
        return nil;
    }
    else if (![role isKindOfClass:[NSString class]])
    {
        BOXAssertFail(@"role should be a string");
        return nil;
    }
    return (NSString *)role;
}

- (NSNumber *)hasCustomAvatar
{
    id hasCustomAvatar = [self.rawResponseJSON valueForKey:BoxAPIObjectKeyHasCustomAvatar];
    if (hasCustomAvatar == nil)
    {
        return nil;
    }
    else if (![hasCustomAvatar isKindOfClass:[NSNumber class]])
    {
        BOXAssertFail(@"has_custom_avatar should be a number");
        return nil;
    }
    return [NSNumber numberWithBool:[hasCustomAvatar boolValue]];
}

@end
