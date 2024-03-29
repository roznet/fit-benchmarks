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

@interface FITDiveAlarmMesg : FITMessage
- (id)init;
// MessageIndex 
- (BOOL)isMessageIndexValid;
- (FITMessageIndex)getMessageIndex;
- (void)setMessageIndex:(FITMessageIndex)messageIndex;
// Depth 
- (BOOL)isDepthValid;
- (FITFloat32)getDepth;
- (void)setDepth:(FITFloat32)depth;
// Time 
- (BOOL)isTimeValid;
- (FITSInt32)getTime;
- (void)setTime:(FITSInt32)time;
// Enabled 
- (BOOL)isEnabledValid;
- (FITBool)getEnabled;
- (void)setEnabled:(FITBool)enabled;
// AlarmType 
- (BOOL)isAlarmTypeValid;
- (FITDiveAlarmType)getAlarmType;
- (void)setAlarmType:(FITDiveAlarmType)alarmType;
// Sound 
- (BOOL)isSoundValid;
- (FITTone)getSound;
- (void)setSound:(FITTone)sound;
// DiveTypes 
@property(readonly,nonatomic) uint8_t numDiveTypesValues;
- (BOOL)isDiveTypesValidforIndex : (uint8_t)index;
- (FITSubSport)getDiveTypesforIndex : (uint8_t)index;
- (void)setDiveTypes:(FITSubSport)diveTypes forIndex:(uint8_t)index;

@end

NS_ASSUME_NONNULL_END
