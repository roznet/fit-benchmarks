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

@interface FITTrainingFileMesg : FITMessage
- (id)init;
// Timestamp 
- (BOOL)isTimestampValid;
- (FITDate *)getTimestamp;
- (void)setTimestamp:(FITDate *)timestamp;
// Type 
- (BOOL)isTypeValid;
- (FITFile)getType;
- (void)setType:(FITFile)type;
// Manufacturer 
- (BOOL)isManufacturerValid;
- (FITManufacturer)getManufacturer;
- (void)setManufacturer:(FITManufacturer)manufacturer;
// Product 
- (BOOL)isProductValid;
- (FITUInt16)getProduct;
- (void)setProduct:(FITUInt16)product;
// Product Sub Fields
- (BOOL)isFaveroProductValid;
- (FITFaveroProduct) getFaveroProduct;
- (void)setFaveroProduct:(FITFaveroProduct)faveroProduct;
- (BOOL)isGarminProductValid;
- (FITGarminProduct) getGarminProduct;
- (void)setGarminProduct:(FITGarminProduct)garminProduct;
// SerialNumber 
- (BOOL)isSerialNumberValid;
- (FITUInt32z)getSerialNumber;
- (void)setSerialNumber:(FITUInt32z)serialNumber;
// TimeCreated 
- (BOOL)isTimeCreatedValid;
- (FITDate *)getTimeCreated;
- (void)setTimeCreated:(FITDate *)timeCreated;

@end

NS_ASSUME_NONNULL_END
