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



#if !defined(FIT_MESG_HPP)
#define FIT_MESG_HPP

#include <iosfwd>
#include <string>
#include <vector>
#include "fit.hpp"
#include "fit_field.hpp"
#include "fit_developer_field.hpp"
#include "fit_field_definition.hpp"

namespace fit
{
class MesgDefinition;   // Forward declaration.

class Mesg
{
public:
    Mesg(void);
    Mesg(const Mesg &mesg);
    Mesg(const Profile::MESG_INDEX index);
    Mesg(const std::string& name);
    Mesg(const FIT_UINT16 num);
    FIT_BOOL IsValid(void) const;
    FIT_BOOL GetIsFieldAccumulated(const FIT_UINT8 num) const;
    const DeveloperField* GetDeveloperField(FIT_UINT8 developerDataIndex, FIT_UINT8 num) const;
    int Write(std::ostream& file, const MesgDefinition* mesgDef = FIT_NULL) const;
    std::string GetName() const;
    FIT_UINT16 GetNum() const;
    FIT_UINT8 GetLocalNum() const;
    void SetLocalNum(const FIT_UINT8 newLocalNum);
    FIT_BOOL HasField(const int fieldNum) const;
    void AddField(const Field& field);
    Field* AddField(const FIT_UINT8 fieldNum);
    void AddDeveloperField(const DeveloperField& field);
    void SetField(const Field& field);
    void SetFields(const Mesg& mesg);
    int GetNumFields() const;
    int GetNumDevFields() const;
    Field* GetFieldByIndex(const FIT_UINT16 index);
    Field* GetField(const FIT_UINT8 fieldNum);
    Field* GetField(const std::string& name);
    const Field* GetFieldByIndex(const FIT_UINT16 index) const;
    const Field* GetField(const FIT_UINT8 fieldNum) const;
    const Field* GetField(const std::string& name) const;
    const std::vector<DeveloperField>& GetDeveloperFields() const;
    FIT_BOOL CanSupportSubField(const FIT_UINT8 fieldNum, const FIT_UINT16 subFieldIndex) const;
    FIT_BOOL CanSupportSubField(const Field* field, const FIT_UINT16 subFieldIndex) const;
    FIT_UINT16 GetActiveSubFieldIndexByFieldIndex(const FIT_UINT16 fieldIndex) const;
    FIT_UINT16 GetActiveSubFieldIndex(const FIT_UINT8 fieldNum) const;
    FIT_UINT8 GetFieldNumValues(const FIT_UINT8 fieldNum, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_ENUM GetFieldENUMValue(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_BYTE GetFieldBYTEValue(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_SINT8 GetFieldSINT8Value(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_UINT8 GetFieldUINT8Value(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_UINT8Z GetFieldUINT8ZValue(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_SINT16 GetFieldSINT16Value(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_UINT16 GetFieldUINT16Value(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_UINT16Z GetFieldUINT16ZValue(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_SINT32 GetFieldSINT32Value(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_UINT32 GetFieldUINT32Value(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_UINT32Z GetFieldUINT32ZValue(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_SINT64 GetFieldSINT64Value(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_UINT64 GetFieldUINT64Value(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_UINT64Z GetFieldUINT64ZValue(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_FLOAT32 GetFieldFLOAT32Value(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_FLOAT64 GetFieldFLOAT64Value(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    FIT_WSTRING GetFieldSTRINGValue(const FIT_UINT8 fieldNum, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD) const;
    void SetFieldENUMValue(const FIT_UINT8 fieldNum, const FIT_ENUM value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldBYTEValue(const FIT_UINT8 fieldNum, const FIT_BYTE value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldSINT8Value(const FIT_UINT8 fieldNum, const FIT_SINT8 value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldUINT8Value(const FIT_UINT8 fieldNum, const FIT_UINT8 value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldUINT8ZValue(const FIT_UINT8 fieldNum, const FIT_UINT8 value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldSINT16Value(const FIT_UINT8 fieldNum, const FIT_SINT16 value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldUINT16Value(const FIT_UINT8 fieldNum, const FIT_UINT16 value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldUINT16ZValue(const FIT_UINT8 fieldNum, const FIT_UINT16Z value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldSINT32Value(const FIT_UINT8 fieldNum, const FIT_SINT32 value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldUINT32Value(const FIT_UINT8 fieldNum, const FIT_UINT32 value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldUINT32ZValue(const FIT_UINT8 fieldNum, const FIT_UINT32Z value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldSINT64Value(const FIT_UINT8 fieldNum, const FIT_SINT64 value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldUINT64Value(const FIT_UINT8 fieldNum, const FIT_UINT64 value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldUINT64ZValue(const FIT_UINT8 fieldNum, const FIT_UINT64Z value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldFLOAT32Value(const FIT_UINT8 fieldNum, const FIT_FLOAT32 value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldFLOAT64Value(const FIT_UINT8 fieldNum, const FIT_FLOAT64 value, const FIT_UINT8 fieldArrayIndex = 0, const FIT_UINT16 subFieldIndex = FIT_SUBFIELD_INDEX_ACTIVE_SUBFIELD);
    void SetFieldSTRINGValue(const FIT_UINT8 fieldNum, const FIT_WSTRING& value, const FIT_UINT8 fieldArrayIndex = 0);

    std::vector<const FieldBase*> GetOverrideFields(const FIT_UINT8 fieldNum) const;
    void RemoveExpandedFields(void);

private:

    static int WriteField(std::ostream& file, const FieldBase* field, FIT_UINT8 defSize, FIT_UINT8 defType);
    const Profile::MESG* profile;
    FIT_UINT8 localNum;
    std::vector<Field> fields;
    std::vector<DeveloperField> devFields;
};

} // namespace fit

#endif // defined(FIT_MESG_HPP)
