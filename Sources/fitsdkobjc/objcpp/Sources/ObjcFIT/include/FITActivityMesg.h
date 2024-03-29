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

#import "FITDate.h"
#import "FITMessage.h"
#import "FITTypes.h"

NS_ASSUME_NONNULL_BEGIN

@interface FITActivityMesg : FITMessage
- (id)init;
// Timestamp 
- (BOOL)isTimestampValid;
- (FITDate *)getTimestamp;
- (void)setTimestamp:(FITDate *)timestamp;
// TotalTimerTime 
- (BOOL)isTotalTimerTimeValid;
- (FITFloat32)getTotalTimerTime;
- (void)setTotalTimerTime:(FITFloat32)totalTimerTime;
// NumSessions 
- (BOOL)isNumSessionsValid;
- (FITUInt16)getNumSessions;
- (void)setNumSessions:(FITUInt16)numSessions;
// Type 
- (BOOL)isTypeValid;
- (FITActivity)getType;
- (void)setType:(FITActivity)type;
// Event 
- (BOOL)isEventValid;
- (FITEvent)getEvent;
- (void)setEvent:(FITEvent)event;
// EventType 
- (BOOL)isEventTypeValid;
- (FITEventType)getEventType;
- (void)setEventType:(FITEventType)eventType;
// LocalTimestamp 
- (BOOL)isLocalTimestampValid;
- (FITLocalDateTime)getLocalTimestamp;
- (void)setLocalTimestamp:(FITLocalDateTime)localTimestamp;
// EventGroup 
- (BOOL)isEventGroupValid;
- (FITUInt8)getEventGroup;
- (void)setEventGroup:(FITUInt8)eventGroup;

@end

NS_ASSUME_NONNULL_END
