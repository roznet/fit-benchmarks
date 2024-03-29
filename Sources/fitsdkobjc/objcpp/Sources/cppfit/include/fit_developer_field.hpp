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


#if !defined(DEVELOPER_FIELD_HPP)
#define DEVELOPER_FIELD_HPP

#include "fit_field_base.hpp"

namespace fit
{
class DeveloperDataIdMesg;
class FieldDescriptionMesg;
class DeveloperFieldDefinition;

class DeveloperField
    : public FieldBase
{
public:
    DeveloperField(void);
    DeveloperField(const DeveloperField &field);
    DeveloperField(const FieldDescriptionMesg& definition, const DeveloperDataIdMesg& developer);
    explicit DeveloperField(const DeveloperFieldDefinition& definition);
    virtual ~DeveloperField();

    virtual FIT_BOOL GetIsAccumulated() const override;
    virtual FIT_BOOL IsValid(void) const override;
    virtual FIT_UINT8 GetNum(void) const override;
    virtual std::string GetName() const override;
    virtual FIT_UINT8 GetType() const override;
    virtual std::string GetUnits() const override;
    virtual FIT_FLOAT64 GetScale() const override;
    virtual FIT_FLOAT64 GetOffset() const override;
    virtual const Profile::SUBFIELD* GetSubField(const FIT_UINT16 subFieldIndex) const override;
    virtual FIT_UINT16 GetNumSubFields(void) const override;
    virtual const Profile::FIELD_COMPONENT* GetComponent(const FIT_UINT16 component) const override;
    virtual FIT_UINT16 GetNumComponents(void) const override;

    std::vector<FIT_BYTE> GetAppId() const;
    FIT_UINT32 GetAppVersion() const;
    FIT_UINT8 GetNativeOverride() const;

    const DeveloperFieldDefinition& GetDefinition() const;

    // Unhide the overloaded get methods from FieldBase.
    using FieldBase::GetName;
    using FieldBase::GetType;
    using FieldBase::GetUnits;
    using FieldBase::GetScale;
    using FieldBase::GetOffset;

private:
    DeveloperFieldDefinition* mDefinition;

};

} // namespace fit

#endif // defined(DEVELOPER_FIELD_HPP)
