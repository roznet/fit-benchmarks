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

@interface FITWeatherConditionsMesg : FITMessage
- (id)init;
// Timestamp 
- (BOOL)isTimestampValid;
- (FITDate *)getTimestamp;
- (void)setTimestamp:(FITDate *)timestamp;
// WeatherReport 
- (BOOL)isWeatherReportValid;
- (FITWeatherReport)getWeatherReport;
- (void)setWeatherReport:(FITWeatherReport)weatherReport;
// Temperature 
- (BOOL)isTemperatureValid;
- (FITSInt8)getTemperature;
- (void)setTemperature:(FITSInt8)temperature;
// Condition 
- (BOOL)isConditionValid;
- (FITWeatherStatus)getCondition;
- (void)setCondition:(FITWeatherStatus)condition;
// WindDirection 
- (BOOL)isWindDirectionValid;
- (FITUInt16)getWindDirection;
- (void)setWindDirection:(FITUInt16)windDirection;
// WindSpeed 
- (BOOL)isWindSpeedValid;
- (FITFloat32)getWindSpeed;
- (void)setWindSpeed:(FITFloat32)windSpeed;
// PrecipitationProbability 
- (BOOL)isPrecipitationProbabilityValid;
- (FITUInt8)getPrecipitationProbability;
- (void)setPrecipitationProbability:(FITUInt8)precipitationProbability;
// TemperatureFeelsLike 
- (BOOL)isTemperatureFeelsLikeValid;
- (FITSInt8)getTemperatureFeelsLike;
- (void)setTemperatureFeelsLike:(FITSInt8)temperatureFeelsLike;
// RelativeHumidity 
- (BOOL)isRelativeHumidityValid;
- (FITUInt8)getRelativeHumidity;
- (void)setRelativeHumidity:(FITUInt8)relativeHumidity;
// Location 
- (BOOL)isLocationValid;
- (NSString *)getLocation;
- (void)setLocation:(NSString *)location;
// ObservedAtTime 
- (BOOL)isObservedAtTimeValid;
- (FITDate *)getObservedAtTime;
- (void)setObservedAtTime:(FITDate *)observedAtTime;
// ObservedLocationLat 
- (BOOL)isObservedLocationLatValid;
- (FITSInt32)getObservedLocationLat;
- (void)setObservedLocationLat:(FITSInt32)observedLocationLat;
// ObservedLocationLong 
- (BOOL)isObservedLocationLongValid;
- (FITSInt32)getObservedLocationLong;
- (void)setObservedLocationLong:(FITSInt32)observedLocationLong;
// DayOfWeek 
- (BOOL)isDayOfWeekValid;
- (FITDayOfWeek)getDayOfWeek;
- (void)setDayOfWeek:(FITDayOfWeek)dayOfWeek;
// HighTemperature 
- (BOOL)isHighTemperatureValid;
- (FITSInt8)getHighTemperature;
- (void)setHighTemperature:(FITSInt8)highTemperature;
// LowTemperature 
- (BOOL)isLowTemperatureValid;
- (FITSInt8)getLowTemperature;
- (void)setLowTemperature:(FITSInt8)lowTemperature;

@end

NS_ASSUME_NONNULL_END
