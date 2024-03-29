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


#import "FITMessage.h"

#import <fit_mesg.hpp>
#import <fit_field.hpp>

@interface FITMessage ()
-(instancetype)initWithFitMesgIndex:(fit::Profile::MESG_INDEX)index NS_DESIGNATED_INITIALIZER;
-(instancetype)initWithFitMesg:(fit::Mesg *)fit_mesg NS_DESIGNATED_INITIALIZER;
-(fit::Mesg *)getInternalFitMesg;
-(fit::Field *)getField:(FIT_UINT8)fieldNum;
@end
