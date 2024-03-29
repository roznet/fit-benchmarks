////////////////////////////////////////////////////////////////////////////////
// The following FIT Protocol software provided may be used with FIT protocol
// devices only and remains the copyrighted property of Garmin Canada Inc.
// The software is being provided on an "as-is" basis and as an accommodation,
// and therefore all warranties, representations, or guarantees of any kind
// (whether express, implied or statutory) including, without limitation,
// warranties of merchantability, non-infringement, or fitness for a particular
// purpose, are specifically disclaimed.
//
// Copyright 2021 Garmin International, Inc.
////////////////////////////////////////////////////////////////////////////////
// ****WARNING****  This file is auto-generated!  Do NOT edit this file.
// Profile Version = 21.67Release
// Tag = production/akw/21.67.00-0-gd790f76b
////////////////////////////////////////////////////////////////////////////////


#import <Foundation/Foundation.h>

#import "FITMessage.h"
#import "FITTypes.h"

NS_ASSUME_NONNULL_BEGIN

@interface FITSegmentFileMesg : FITMessage
- (id)init;
// MessageIndex 
- (BOOL)isMessageIndexValid;
- (FITMessageIndex)getMessageIndex;
- (void)setMessageIndex:(FITMessageIndex)messageIndex;
// FileUuid 
- (BOOL)isFileUuidValid;
- (NSString *)getFileUuid;
- (void)setFileUuid:(NSString *)fileUuid;
// Enabled 
- (BOOL)isEnabledValid;
- (FITBool)getEnabled;
- (void)setEnabled:(FITBool)enabled;
// UserProfilePrimaryKey 
- (BOOL)isUserProfilePrimaryKeyValid;
- (FITUInt32)getUserProfilePrimaryKey;
- (void)setUserProfilePrimaryKey:(FITUInt32)userProfilePrimaryKey;
// LeaderType 
@property(readonly,nonatomic) uint8_t numLeaderTypeValues;
- (BOOL)isLeaderTypeValidforIndex : (uint8_t)index;
- (FITSegmentLeaderboardType)getLeaderTypeforIndex : (uint8_t)index;
- (void)setLeaderType:(FITSegmentLeaderboardType)leaderType forIndex:(uint8_t)index;
// LeaderGroupPrimaryKey 
@property(readonly,nonatomic) uint8_t numLeaderGroupPrimaryKeyValues;
- (BOOL)isLeaderGroupPrimaryKeyValidforIndex : (uint8_t)index;
- (FITUInt32)getLeaderGroupPrimaryKeyforIndex : (uint8_t)index;
- (void)setLeaderGroupPrimaryKey:(FITUInt32)leaderGroupPrimaryKey forIndex:(uint8_t)index;
// LeaderActivityId 
@property(readonly,nonatomic) uint8_t numLeaderActivityIdValues;
- (BOOL)isLeaderActivityIdValidforIndex : (uint8_t)index;
- (FITUInt32)getLeaderActivityIdforIndex : (uint8_t)index;
- (void)setLeaderActivityId:(FITUInt32)leaderActivityId forIndex:(uint8_t)index;
// LeaderActivityIdString 
@property(readonly,nonatomic) uint8_t numLeaderActivityIdStringValues;
- (BOOL)isLeaderActivityIdStringValidforIndex : (uint8_t)index;
- (NSString *)getLeaderActivityIdStringforIndex : (uint8_t)index;
- (void)setLeaderActivityIdString:(NSString *)leaderActivityIdString forIndex:(uint8_t)index;
// DefaultRaceLeader 
- (BOOL)isDefaultRaceLeaderValid;
- (FITUInt8)getDefaultRaceLeader;
- (void)setDefaultRaceLeader:(FITUInt8)defaultRaceLeader;

@end

NS_ASSUME_NONNULL_END
