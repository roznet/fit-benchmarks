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

@interface FITUserProfileMesg : FITMessage
- (id)init;
// MessageIndex 
- (BOOL)isMessageIndexValid;
- (FITMessageIndex)getMessageIndex;
- (void)setMessageIndex:(FITMessageIndex)messageIndex;
// FriendlyName 
- (BOOL)isFriendlyNameValid;
- (NSString *)getFriendlyName;
- (void)setFriendlyName:(NSString *)friendlyName;
// Gender 
- (BOOL)isGenderValid;
- (FITGender)getGender;
- (void)setGender:(FITGender)gender;
// Age 
- (BOOL)isAgeValid;
- (FITUInt8)getAge;
- (void)setAge:(FITUInt8)age;
// Height 
- (BOOL)isHeightValid;
- (FITFloat32)getHeight;
- (void)setHeight:(FITFloat32)height;
// Weight 
- (BOOL)isWeightValid;
- (FITFloat32)getWeight;
- (void)setWeight:(FITFloat32)weight;
// Language 
- (BOOL)isLanguageValid;
- (FITLanguage)getLanguage;
- (void)setLanguage:(FITLanguage)language;
// ElevSetting 
- (BOOL)isElevSettingValid;
- (FITDisplayMeasure)getElevSetting;
- (void)setElevSetting:(FITDisplayMeasure)elevSetting;
// WeightSetting 
- (BOOL)isWeightSettingValid;
- (FITDisplayMeasure)getWeightSetting;
- (void)setWeightSetting:(FITDisplayMeasure)weightSetting;
// RestingHeartRate 
- (BOOL)isRestingHeartRateValid;
- (FITUInt8)getRestingHeartRate;
- (void)setRestingHeartRate:(FITUInt8)restingHeartRate;
// DefaultMaxRunningHeartRate 
- (BOOL)isDefaultMaxRunningHeartRateValid;
- (FITUInt8)getDefaultMaxRunningHeartRate;
- (void)setDefaultMaxRunningHeartRate:(FITUInt8)defaultMaxRunningHeartRate;
// DefaultMaxBikingHeartRate 
- (BOOL)isDefaultMaxBikingHeartRateValid;
- (FITUInt8)getDefaultMaxBikingHeartRate;
- (void)setDefaultMaxBikingHeartRate:(FITUInt8)defaultMaxBikingHeartRate;
// DefaultMaxHeartRate 
- (BOOL)isDefaultMaxHeartRateValid;
- (FITUInt8)getDefaultMaxHeartRate;
- (void)setDefaultMaxHeartRate:(FITUInt8)defaultMaxHeartRate;
// HrSetting 
- (BOOL)isHrSettingValid;
- (FITDisplayHeart)getHrSetting;
- (void)setHrSetting:(FITDisplayHeart)hrSetting;
// SpeedSetting 
- (BOOL)isSpeedSettingValid;
- (FITDisplayMeasure)getSpeedSetting;
- (void)setSpeedSetting:(FITDisplayMeasure)speedSetting;
// DistSetting 
- (BOOL)isDistSettingValid;
- (FITDisplayMeasure)getDistSetting;
- (void)setDistSetting:(FITDisplayMeasure)distSetting;
// PowerSetting 
- (BOOL)isPowerSettingValid;
- (FITDisplayPower)getPowerSetting;
- (void)setPowerSetting:(FITDisplayPower)powerSetting;
// ActivityClass 
- (BOOL)isActivityClassValid;
- (FITActivityClass)getActivityClass;
- (void)setActivityClass:(FITActivityClass)activityClass;
// PositionSetting 
- (BOOL)isPositionSettingValid;
- (FITDisplayPosition)getPositionSetting;
- (void)setPositionSetting:(FITDisplayPosition)positionSetting;
// TemperatureSetting 
- (BOOL)isTemperatureSettingValid;
- (FITDisplayMeasure)getTemperatureSetting;
- (void)setTemperatureSetting:(FITDisplayMeasure)temperatureSetting;
// LocalId 
- (BOOL)isLocalIdValid;
- (FITUserLocalId)getLocalId;
- (void)setLocalId:(FITUserLocalId)localId;
// GlobalId 
@property(readonly,nonatomic) uint8_t numGlobalIdValues;
- (BOOL)isGlobalIdValidforIndex : (uint8_t)index;
- (FITByte)getGlobalIdforIndex : (uint8_t)index;
- (void)setGlobalId:(FITByte)globalId forIndex:(uint8_t)index;
// WakeTime 
- (BOOL)isWakeTimeValid;
- (FITLocaltimeIntoDay)getWakeTime;
- (void)setWakeTime:(FITLocaltimeIntoDay)wakeTime;
// SleepTime 
- (BOOL)isSleepTimeValid;
- (FITLocaltimeIntoDay)getSleepTime;
- (void)setSleepTime:(FITLocaltimeIntoDay)sleepTime;
// HeightSetting 
- (BOOL)isHeightSettingValid;
- (FITDisplayMeasure)getHeightSetting;
- (void)setHeightSetting:(FITDisplayMeasure)heightSetting;
// UserRunningStepLength 
- (BOOL)isUserRunningStepLengthValid;
- (FITFloat32)getUserRunningStepLength;
- (void)setUserRunningStepLength:(FITFloat32)userRunningStepLength;
// UserWalkingStepLength 
- (BOOL)isUserWalkingStepLengthValid;
- (FITFloat32)getUserWalkingStepLength;
- (void)setUserWalkingStepLength:(FITFloat32)userWalkingStepLength;
// DepthSetting 
- (BOOL)isDepthSettingValid;
- (FITDisplayMeasure)getDepthSetting;
- (void)setDepthSetting:(FITDisplayMeasure)depthSetting;
// DiveCount 
- (BOOL)isDiveCountValid;
- (FITUInt32)getDiveCount;
- (void)setDiveCount:(FITUInt32)diveCount;

@end

NS_ASSUME_NONNULL_END
