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


#import "FITMessage+Internal.h"

#import "FITString.h"

#import "FITWorkoutStepMesg.h"

@implementation FITWorkoutStepMesg

- (instancetype)init {
    self = [super initWithFitMesgIndex:fit::Profile::MESG_WORKOUT_STEP];

    return self;
}

// MessageIndex 
- (BOOL)isMessageIndexValid {
	const fit::Field* field = [super getField:254];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITMessageIndex)getMessageIndex {
    return ([super getFieldUINT16ValueForField:254 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setMessageIndex:(FITMessageIndex)messageIndex {
    [super setFieldUINT16ValueForField:254 andValue:(messageIndex) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// WktStepName 
- (BOOL)isWktStepNameValid {
	const fit::Field* field = [super getField:0];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (NSString *)getWktStepName {
    return ([super getFieldSTRINGValueForField:0 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setWktStepName:(NSString *)wktStepName {
    [super setFieldSTRINGValueForField:0 andValue:(wktStepName) forIndex:0];
} 

// DurationType 
- (BOOL)isDurationTypeValid {
	const fit::Field* field = [super getField:1];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITWktStepDuration)getDurationType {
    return ([super getFieldENUMValueForField:1 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setDurationType:(FITWktStepDuration)durationType {
    [super setFieldENUMValueForField:1 andValue:(durationType) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// DurationValue 
- (BOOL)isDurationValueValid {
	const fit::Field* field = [super getField:2];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getDurationValue {
    return ([super getFieldUINT32ValueForField:2 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setDurationValue:(FITUInt32)durationValue {
    [super setFieldUINT32ValueForField:2 andValue:(durationValue) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 
// DurationValue - Sub Fields
// DurationTime - DurationValue Field - Sub Field 
- (BOOL)isDurationTimeValid
{
    const fit::Field* field = [super getField:2];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:2 supportSubField:(FITUInt16)FITWorkoutStepMesgDurationValueFieldDurationTimeSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgDurationValueFieldDurationTimeSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITFloat32)getDurationTime
{
    return ([super getFieldFLOAT32ValueForField:2 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationTimeSubField]);
}

- (void)setDurationTime:(FITFloat32)durationTime
{
    [super setFieldFLOAT32ValueForField:2 andValue:(durationTime) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationTimeSubField];
} 
// DurationDistance - DurationValue Field - Sub Field 
- (BOOL)isDurationDistanceValid
{
    const fit::Field* field = [super getField:2];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:2 supportSubField:(FITUInt16)FITWorkoutStepMesgDurationValueFieldDurationDistanceSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgDurationValueFieldDurationDistanceSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITFloat32)getDurationDistance
{
    return ([super getFieldFLOAT32ValueForField:2 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationDistanceSubField]);
}

- (void)setDurationDistance:(FITFloat32)durationDistance
{
    [super setFieldFLOAT32ValueForField:2 andValue:(durationDistance) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationDistanceSubField];
} 
// DurationHr - DurationValue Field - Sub Field 
- (BOOL)isDurationHrValid
{
    const fit::Field* field = [super getField:2];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:2 supportSubField:(FITUInt16)FITWorkoutStepMesgDurationValueFieldDurationHrSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgDurationValueFieldDurationHrSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITWorkoutHr)getDurationHr
{
    return ([super getFieldUINT32ValueForField:2 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationHrSubField]);
}

- (void)setDurationHr:(FITWorkoutHr)durationHr
{
    [super setFieldUINT32ValueForField:2 andValue:(durationHr) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationHrSubField];
} 
// DurationCalories - DurationValue Field - Sub Field 
- (BOOL)isDurationCaloriesValid
{
    const fit::Field* field = [super getField:2];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:2 supportSubField:(FITUInt16)FITWorkoutStepMesgDurationValueFieldDurationCaloriesSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgDurationValueFieldDurationCaloriesSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getDurationCalories
{
    return ([super getFieldUINT32ValueForField:2 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationCaloriesSubField]);
}

- (void)setDurationCalories:(FITUInt32)durationCalories
{
    [super setFieldUINT32ValueForField:2 andValue:(durationCalories) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationCaloriesSubField];
} 
// DurationStep - DurationValue Field - Sub Field 
- (BOOL)isDurationStepValid
{
    const fit::Field* field = [super getField:2];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:2 supportSubField:(FITUInt16)FITWorkoutStepMesgDurationValueFieldDurationStepSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgDurationValueFieldDurationStepSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getDurationStep
{
    return ([super getFieldUINT32ValueForField:2 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationStepSubField]);
}

- (void)setDurationStep:(FITUInt32)durationStep
{
    [super setFieldUINT32ValueForField:2 andValue:(durationStep) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationStepSubField];
} 
// DurationPower - DurationValue Field - Sub Field 
- (BOOL)isDurationPowerValid
{
    const fit::Field* field = [super getField:2];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:2 supportSubField:(FITUInt16)FITWorkoutStepMesgDurationValueFieldDurationPowerSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgDurationValueFieldDurationPowerSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITWorkoutPower)getDurationPower
{
    return ([super getFieldUINT32ValueForField:2 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationPowerSubField]);
}

- (void)setDurationPower:(FITWorkoutPower)durationPower
{
    [super setFieldUINT32ValueForField:2 andValue:(durationPower) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationPowerSubField];
} 
// DurationReps - DurationValue Field - Sub Field 
- (BOOL)isDurationRepsValid
{
    const fit::Field* field = [super getField:2];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:2 supportSubField:(FITUInt16)FITWorkoutStepMesgDurationValueFieldDurationRepsSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgDurationValueFieldDurationRepsSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getDurationReps
{
    return ([super getFieldUINT32ValueForField:2 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationRepsSubField]);
}

- (void)setDurationReps:(FITUInt32)durationReps
{
    [super setFieldUINT32ValueForField:2 andValue:(durationReps) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgDurationValueFieldDurationRepsSubField];
} 

// TargetType 
- (BOOL)isTargetTypeValid {
	const fit::Field* field = [super getField:3];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITWktStepTarget)getTargetType {
    return ([super getFieldENUMValueForField:3 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setTargetType:(FITWktStepTarget)targetType {
    [super setFieldENUMValueForField:3 andValue:(targetType) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// TargetValue 
- (BOOL)isTargetValueValid {
	const fit::Field* field = [super getField:4];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getTargetValue {
    return ([super getFieldUINT32ValueForField:4 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setTargetValue:(FITUInt32)targetValue {
    [super setFieldUINT32ValueForField:4 andValue:(targetValue) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 
// TargetValue - Sub Fields
// TargetSpeedZone - TargetValue Field - Sub Field 
- (BOOL)isTargetSpeedZoneValid
{
    const fit::Field* field = [super getField:4];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:4 supportSubField:(FITUInt16)FITWorkoutStepMesgTargetValueFieldTargetSpeedZoneSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgTargetValueFieldTargetSpeedZoneSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getTargetSpeedZone
{
    return ([super getFieldUINT32ValueForField:4 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldTargetSpeedZoneSubField]);
}

- (void)setTargetSpeedZone:(FITUInt32)targetSpeedZone
{
    [super setFieldUINT32ValueForField:4 andValue:(targetSpeedZone) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldTargetSpeedZoneSubField];
} 
// TargetHrZone - TargetValue Field - Sub Field 
- (BOOL)isTargetHrZoneValid
{
    const fit::Field* field = [super getField:4];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:4 supportSubField:(FITUInt16)FITWorkoutStepMesgTargetValueFieldTargetHrZoneSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgTargetValueFieldTargetHrZoneSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getTargetHrZone
{
    return ([super getFieldUINT32ValueForField:4 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldTargetHrZoneSubField]);
}

- (void)setTargetHrZone:(FITUInt32)targetHrZone
{
    [super setFieldUINT32ValueForField:4 andValue:(targetHrZone) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldTargetHrZoneSubField];
} 
// TargetCadenceZone - TargetValue Field - Sub Field 
- (BOOL)isTargetCadenceZoneValid
{
    const fit::Field* field = [super getField:4];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:4 supportSubField:(FITUInt16)FITWorkoutStepMesgTargetValueFieldTargetCadenceZoneSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgTargetValueFieldTargetCadenceZoneSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getTargetCadenceZone
{
    return ([super getFieldUINT32ValueForField:4 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldTargetCadenceZoneSubField]);
}

- (void)setTargetCadenceZone:(FITUInt32)targetCadenceZone
{
    [super setFieldUINT32ValueForField:4 andValue:(targetCadenceZone) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldTargetCadenceZoneSubField];
} 
// TargetPowerZone - TargetValue Field - Sub Field 
- (BOOL)isTargetPowerZoneValid
{
    const fit::Field* field = [super getField:4];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:4 supportSubField:(FITUInt16)FITWorkoutStepMesgTargetValueFieldTargetPowerZoneSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgTargetValueFieldTargetPowerZoneSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getTargetPowerZone
{
    return ([super getFieldUINT32ValueForField:4 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldTargetPowerZoneSubField]);
}

- (void)setTargetPowerZone:(FITUInt32)targetPowerZone
{
    [super setFieldUINT32ValueForField:4 andValue:(targetPowerZone) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldTargetPowerZoneSubField];
} 
// RepeatSteps - TargetValue Field - Sub Field 
- (BOOL)isRepeatStepsValid
{
    const fit::Field* field = [super getField:4];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:4 supportSubField:(FITUInt16)FITWorkoutStepMesgTargetValueFieldRepeatStepsSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgTargetValueFieldRepeatStepsSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getRepeatSteps
{
    return ([super getFieldUINT32ValueForField:4 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldRepeatStepsSubField]);
}

- (void)setRepeatSteps:(FITUInt32)repeatSteps
{
    [super setFieldUINT32ValueForField:4 andValue:(repeatSteps) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldRepeatStepsSubField];
} 
// RepeatTime - TargetValue Field - Sub Field 
- (BOOL)isRepeatTimeValid
{
    const fit::Field* field = [super getField:4];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:4 supportSubField:(FITUInt16)FITWorkoutStepMesgTargetValueFieldRepeatTimeSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgTargetValueFieldRepeatTimeSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITFloat32)getRepeatTime
{
    return ([super getFieldFLOAT32ValueForField:4 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldRepeatTimeSubField]);
}

- (void)setRepeatTime:(FITFloat32)repeatTime
{
    [super setFieldFLOAT32ValueForField:4 andValue:(repeatTime) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldRepeatTimeSubField];
} 
// RepeatDistance - TargetValue Field - Sub Field 
- (BOOL)isRepeatDistanceValid
{
    const fit::Field* field = [super getField:4];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:4 supportSubField:(FITUInt16)FITWorkoutStepMesgTargetValueFieldRepeatDistanceSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgTargetValueFieldRepeatDistanceSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITFloat32)getRepeatDistance
{
    return ([super getFieldFLOAT32ValueForField:4 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldRepeatDistanceSubField]);
}

- (void)setRepeatDistance:(FITFloat32)repeatDistance
{
    [super setFieldFLOAT32ValueForField:4 andValue:(repeatDistance) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldRepeatDistanceSubField];
} 
// RepeatCalories - TargetValue Field - Sub Field 
- (BOOL)isRepeatCaloriesValid
{
    const fit::Field* field = [super getField:4];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:4 supportSubField:(FITUInt16)FITWorkoutStepMesgTargetValueFieldRepeatCaloriesSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgTargetValueFieldRepeatCaloriesSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getRepeatCalories
{
    return ([super getFieldUINT32ValueForField:4 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldRepeatCaloriesSubField]);
}

- (void)setRepeatCalories:(FITUInt32)repeatCalories
{
    [super setFieldUINT32ValueForField:4 andValue:(repeatCalories) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldRepeatCaloriesSubField];
} 
// RepeatHr - TargetValue Field - Sub Field 
- (BOOL)isRepeatHrValid
{
    const fit::Field* field = [super getField:4];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:4 supportSubField:(FITUInt16)FITWorkoutStepMesgTargetValueFieldRepeatHrSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgTargetValueFieldRepeatHrSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITWorkoutHr)getRepeatHr
{
    return ([super getFieldUINT32ValueForField:4 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldRepeatHrSubField]);
}

- (void)setRepeatHr:(FITWorkoutHr)repeatHr
{
    [super setFieldUINT32ValueForField:4 andValue:(repeatHr) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldRepeatHrSubField];
} 
// RepeatPower - TargetValue Field - Sub Field 
- (BOOL)isRepeatPowerValid
{
    const fit::Field* field = [super getField:4];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:4 supportSubField:(FITUInt16)FITWorkoutStepMesgTargetValueFieldRepeatPowerSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgTargetValueFieldRepeatPowerSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITWorkoutPower)getRepeatPower
{
    return ([super getFieldUINT32ValueForField:4 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldRepeatPowerSubField]);
}

- (void)setRepeatPower:(FITWorkoutPower)repeatPower
{
    [super setFieldUINT32ValueForField:4 andValue:(repeatPower) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldRepeatPowerSubField];
} 
// TargetStrokeType - TargetValue Field - Sub Field 
- (BOOL)isTargetStrokeTypeValid
{
    const fit::Field* field = [super getField:4];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:4 supportSubField:(FITUInt16)FITWorkoutStepMesgTargetValueFieldTargetStrokeTypeSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgTargetValueFieldTargetStrokeTypeSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITSwimStroke)getTargetStrokeType
{
    return ([super getFieldENUMValueForField:4 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldTargetStrokeTypeSubField]);
}

- (void)setTargetStrokeType:(FITSwimStroke)targetStrokeType
{
    [super setFieldENUMValueForField:4 andValue:(targetStrokeType) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgTargetValueFieldTargetStrokeTypeSubField];
} 

// CustomTargetValueLow 
- (BOOL)isCustomTargetValueLowValid {
	const fit::Field* field = [super getField:5];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getCustomTargetValueLow {
    return ([super getFieldUINT32ValueForField:5 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setCustomTargetValueLow:(FITUInt32)customTargetValueLow {
    [super setFieldUINT32ValueForField:5 andValue:(customTargetValueLow) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 
// CustomTargetValueLow - Sub Fields
// CustomTargetSpeedLow - CustomTargetValueLow Field - Sub Field 
- (BOOL)isCustomTargetSpeedLowValid
{
    const fit::Field* field = [super getField:5];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:5 supportSubField:(FITUInt16)FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetSpeedLowSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetSpeedLowSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITFloat32)getCustomTargetSpeedLow
{
    return ([super getFieldFLOAT32ValueForField:5 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetSpeedLowSubField]);
}

- (void)setCustomTargetSpeedLow:(FITFloat32)customTargetSpeedLow
{
    [super setFieldFLOAT32ValueForField:5 andValue:(customTargetSpeedLow) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetSpeedLowSubField];
} 
// CustomTargetHeartRateLow - CustomTargetValueLow Field - Sub Field 
- (BOOL)isCustomTargetHeartRateLowValid
{
    const fit::Field* field = [super getField:5];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:5 supportSubField:(FITUInt16)FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetHeartRateLowSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetHeartRateLowSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITWorkoutHr)getCustomTargetHeartRateLow
{
    return ([super getFieldUINT32ValueForField:5 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetHeartRateLowSubField]);
}

- (void)setCustomTargetHeartRateLow:(FITWorkoutHr)customTargetHeartRateLow
{
    [super setFieldUINT32ValueForField:5 andValue:(customTargetHeartRateLow) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetHeartRateLowSubField];
} 
// CustomTargetCadenceLow - CustomTargetValueLow Field - Sub Field 
- (BOOL)isCustomTargetCadenceLowValid
{
    const fit::Field* field = [super getField:5];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:5 supportSubField:(FITUInt16)FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetCadenceLowSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetCadenceLowSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getCustomTargetCadenceLow
{
    return ([super getFieldUINT32ValueForField:5 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetCadenceLowSubField]);
}

- (void)setCustomTargetCadenceLow:(FITUInt32)customTargetCadenceLow
{
    [super setFieldUINT32ValueForField:5 andValue:(customTargetCadenceLow) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetCadenceLowSubField];
} 
// CustomTargetPowerLow - CustomTargetValueLow Field - Sub Field 
- (BOOL)isCustomTargetPowerLowValid
{
    const fit::Field* field = [super getField:5];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:5 supportSubField:(FITUInt16)FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetPowerLowSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetPowerLowSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITWorkoutPower)getCustomTargetPowerLow
{
    return ([super getFieldUINT32ValueForField:5 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetPowerLowSubField]);
}

- (void)setCustomTargetPowerLow:(FITWorkoutPower)customTargetPowerLow
{
    [super setFieldUINT32ValueForField:5 andValue:(customTargetPowerLow) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueLowFieldCustomTargetPowerLowSubField];
} 

// CustomTargetValueHigh 
- (BOOL)isCustomTargetValueHighValid {
	const fit::Field* field = [super getField:6];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getCustomTargetValueHigh {
    return ([super getFieldUINT32ValueForField:6 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setCustomTargetValueHigh:(FITUInt32)customTargetValueHigh {
    [super setFieldUINT32ValueForField:6 andValue:(customTargetValueHigh) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 
// CustomTargetValueHigh - Sub Fields
// CustomTargetSpeedHigh - CustomTargetValueHigh Field - Sub Field 
- (BOOL)isCustomTargetSpeedHighValid
{
    const fit::Field* field = [super getField:6];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:6 supportSubField:(FITUInt16)FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetSpeedHighSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetSpeedHighSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITFloat32)getCustomTargetSpeedHigh
{
    return ([super getFieldFLOAT32ValueForField:6 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetSpeedHighSubField]);
}

- (void)setCustomTargetSpeedHigh:(FITFloat32)customTargetSpeedHigh
{
    [super setFieldFLOAT32ValueForField:6 andValue:(customTargetSpeedHigh) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetSpeedHighSubField];
} 
// CustomTargetHeartRateHigh - CustomTargetValueHigh Field - Sub Field 
- (BOOL)isCustomTargetHeartRateHighValid
{
    const fit::Field* field = [super getField:6];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:6 supportSubField:(FITUInt16)FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetHeartRateHighSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetHeartRateHighSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITWorkoutHr)getCustomTargetHeartRateHigh
{
    return ([super getFieldUINT32ValueForField:6 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetHeartRateHighSubField]);
}

- (void)setCustomTargetHeartRateHigh:(FITWorkoutHr)customTargetHeartRateHigh
{
    [super setFieldUINT32ValueForField:6 andValue:(customTargetHeartRateHigh) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetHeartRateHighSubField];
} 
// CustomTargetCadenceHigh - CustomTargetValueHigh Field - Sub Field 
- (BOOL)isCustomTargetCadenceHighValid
{
    const fit::Field* field = [super getField:6];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:6 supportSubField:(FITUInt16)FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetCadenceHighSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetCadenceHighSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt32)getCustomTargetCadenceHigh
{
    return ([super getFieldUINT32ValueForField:6 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetCadenceHighSubField]);
}

- (void)setCustomTargetCadenceHigh:(FITUInt32)customTargetCadenceHigh
{
    [super setFieldUINT32ValueForField:6 andValue:(customTargetCadenceHigh) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetCadenceHighSubField];
} 
// CustomTargetPowerHigh - CustomTargetValueHigh Field - Sub Field 
- (BOOL)isCustomTargetPowerHighValid
{
    const fit::Field* field = [super getField:6];
    if( FIT_NULL == field ) {
        return FIT_FALSE;
    }

    if(![super canField:6 supportSubField:(FITUInt16)FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetPowerHighSubField]) {
        return FIT_FALSE;
    }

    return field->IsValueValid(0, FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetPowerHighSubField) == FIT_TRUE ? TRUE : FALSE;
}

- (FITWorkoutPower)getCustomTargetPowerHigh
{
    return ([super getFieldUINT32ValueForField:6 forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetPowerHighSubField]);
}

- (void)setCustomTargetPowerHigh:(FITWorkoutPower)customTargetPowerHigh
{
    [super setFieldUINT32ValueForField:6 andValue:(customTargetPowerHigh) forIndex:0 andSubFieldIndex:FITWorkoutStepMesgCustomTargetValueHighFieldCustomTargetPowerHighSubField];
} 

// Intensity 
- (BOOL)isIntensityValid {
	const fit::Field* field = [super getField:7];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITIntensity)getIntensity {
    return ([super getFieldENUMValueForField:7 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setIntensity:(FITIntensity)intensity {
    [super setFieldENUMValueForField:7 andValue:(intensity) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// Notes 
- (BOOL)isNotesValid {
	const fit::Field* field = [super getField:8];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (NSString *)getNotes {
    return ([super getFieldSTRINGValueForField:8 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setNotes:(NSString *)notes {
    [super setFieldSTRINGValueForField:8 andValue:(notes) forIndex:0];
} 

// Equipment 
- (BOOL)isEquipmentValid {
	const fit::Field* field = [super getField:9];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITWorkoutEquipment)getEquipment {
    return ([super getFieldENUMValueForField:9 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setEquipment:(FITWorkoutEquipment)equipment {
    [super setFieldENUMValueForField:9 andValue:(equipment) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// ExerciseCategory 
- (BOOL)isExerciseCategoryValid {
	const fit::Field* field = [super getField:10];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITExerciseCategory)getExerciseCategory {
    return ([super getFieldUINT16ValueForField:10 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setExerciseCategory:(FITExerciseCategory)exerciseCategory {
    [super setFieldUINT16ValueForField:10 andValue:(exerciseCategory) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// ExerciseName 
- (BOOL)isExerciseNameValid {
	const fit::Field* field = [super getField:11];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt16)getExerciseName {
    return ([super getFieldUINT16ValueForField:11 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setExerciseName:(FITUInt16)exerciseName {
    [super setFieldUINT16ValueForField:11 andValue:(exerciseName) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// ExerciseWeight 
- (BOOL)isExerciseWeightValid {
	const fit::Field* field = [super getField:12];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITFloat32)getExerciseWeight {
    return ([super getFieldFLOAT32ValueForField:12 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setExerciseWeight:(FITFloat32)exerciseWeight {
    [super setFieldFLOAT32ValueForField:12 andValue:(exerciseWeight) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// WeightDisplayUnit 
- (BOOL)isWeightDisplayUnitValid {
	const fit::Field* field = [super getField:13];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITFitBaseUnit)getWeightDisplayUnit {
    return ([super getFieldUINT16ValueForField:13 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setWeightDisplayUnit:(FITFitBaseUnit)weightDisplayUnit {
    [super setFieldUINT16ValueForField:13 andValue:(weightDisplayUnit) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

@end
