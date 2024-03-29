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


#import "FITTimestampCorrelationMesg.h"

@implementation FITTimestampCorrelationMesg

- (instancetype)init {
    self = [super initWithFitMesgIndex:fit::Profile::MESG_TIMESTAMP_CORRELATION];

    return self;
}

// Timestamp 
- (BOOL)isTimestampValid {
	const fit::Field* field = [super getField:253];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITDate *)getTimestamp {
    return FITDateFromTimestamp([super getFieldUINT32ValueForField:253 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setTimestamp:(FITDate *)timestamp {
    [super setFieldUINT32ValueForField:253 andValue:TimestampFromFITDate(timestamp) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// FractionalTimestamp 
- (BOOL)isFractionalTimestampValid {
	const fit::Field* field = [super getField:0];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITFloat32)getFractionalTimestamp {
    return ([super getFieldFLOAT32ValueForField:0 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setFractionalTimestamp:(FITFloat32)fractionalTimestamp {
    [super setFieldFLOAT32ValueForField:0 andValue:(fractionalTimestamp) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// SystemTimestamp 
- (BOOL)isSystemTimestampValid {
	const fit::Field* field = [super getField:1];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITDate *)getSystemTimestamp {
    return FITDateFromTimestamp([super getFieldUINT32ValueForField:1 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setSystemTimestamp:(FITDate *)systemTimestamp {
    [super setFieldUINT32ValueForField:1 andValue:TimestampFromFITDate(systemTimestamp) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// FractionalSystemTimestamp 
- (BOOL)isFractionalSystemTimestampValid {
	const fit::Field* field = [super getField:2];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITFloat32)getFractionalSystemTimestamp {
    return ([super getFieldFLOAT32ValueForField:2 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setFractionalSystemTimestamp:(FITFloat32)fractionalSystemTimestamp {
    [super setFieldFLOAT32ValueForField:2 andValue:(fractionalSystemTimestamp) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// LocalTimestamp 
- (BOOL)isLocalTimestampValid {
	const fit::Field* field = [super getField:3];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITLocalDateTime)getLocalTimestamp {
    return ([super getFieldUINT32ValueForField:3 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setLocalTimestamp:(FITLocalDateTime)localTimestamp {
    [super setFieldUINT32ValueForField:3 andValue:(localTimestamp) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// TimestampMs 
- (BOOL)isTimestampMsValid {
	const fit::Field* field = [super getField:4];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt16)getTimestampMs {
    return ([super getFieldUINT16ValueForField:4 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setTimestampMs:(FITUInt16)timestampMs {
    [super setFieldUINT16ValueForField:4 andValue:(timestampMs) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

// SystemTimestampMs 
- (BOOL)isSystemTimestampMsValid {
	const fit::Field* field = [super getField:5];
	if( FIT_NULL == field ) {
		return FALSE;
	}

	return field->IsValueValid() == FIT_TRUE ? TRUE : FALSE;
}

- (FITUInt16)getSystemTimestampMs {
    return ([super getFieldUINT16ValueForField:5 forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD]);
}

- (void)setSystemTimestampMs:(FITUInt16)systemTimestampMs {
    [super setFieldUINT16ValueForField:5 andValue:(systemTimestampMs) forIndex:0 andSubFieldIndex:FIT_SUBFIELD_INDEX_MAIN_FIELD];
} 

@end
