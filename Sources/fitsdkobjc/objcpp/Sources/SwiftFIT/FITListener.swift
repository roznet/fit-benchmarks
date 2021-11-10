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


import Foundation
import ObjcFIT

public class FITListener: NSObject, FITMesgDelegate {
    private let fitMessages = FITMessages();

    public var messages: FITMessages {
        get {
            return fitMessages
        }
    }

    public func onMesg(_ mesg: FITMessage) {
        switch mesg.getNum() {
        case FITMesgNumFileId:
            fitMessages.fileIdMesgs.append(FITFileIdMesg(message: mesg));
            break;
        case FITMesgNumFileCreator:
            fitMessages.fileCreatorMesgs.append(FITFileCreatorMesg(message: mesg));
            break;
        case FITMesgNumTimestampCorrelation:
            fitMessages.timestampCorrelationMesgs.append(FITTimestampCorrelationMesg(message: mesg));
            break;
        case FITMesgNumSoftware:
            fitMessages.softwareMesgs.append(FITSoftwareMesg(message: mesg));
            break;
        case FITMesgNumSlaveDevice:
            fitMessages.slaveDeviceMesgs.append(FITSlaveDeviceMesg(message: mesg));
            break;
        case FITMesgNumCapabilities:
            fitMessages.capabilitiesMesgs.append(FITCapabilitiesMesg(message: mesg));
            break;
        case FITMesgNumFileCapabilities:
            fitMessages.fileCapabilitiesMesgs.append(FITFileCapabilitiesMesg(message: mesg));
            break;
        case FITMesgNumMesgCapabilities:
            fitMessages.mesgCapabilitiesMesgs.append(FITMesgCapabilitiesMesg(message: mesg));
            break;
        case FITMesgNumFieldCapabilities:
            fitMessages.fieldCapabilitiesMesgs.append(FITFieldCapabilitiesMesg(message: mesg));
            break;
        case FITMesgNumDeviceSettings:
            fitMessages.deviceSettingsMesgs.append(FITDeviceSettingsMesg(message: mesg));
            break;
        case FITMesgNumUserProfile:
            fitMessages.userProfileMesgs.append(FITUserProfileMesg(message: mesg));
            break;
        case FITMesgNumHrmProfile:
            fitMessages.hrmProfileMesgs.append(FITHrmProfileMesg(message: mesg));
            break;
        case FITMesgNumSdmProfile:
            fitMessages.sdmProfileMesgs.append(FITSdmProfileMesg(message: mesg));
            break;
        case FITMesgNumBikeProfile:
            fitMessages.bikeProfileMesgs.append(FITBikeProfileMesg(message: mesg));
            break;
        case FITMesgNumConnectivity:
            fitMessages.connectivityMesgs.append(FITConnectivityMesg(message: mesg));
            break;
        case FITMesgNumWatchfaceSettings:
            fitMessages.watchfaceSettingsMesgs.append(FITWatchfaceSettingsMesg(message: mesg));
            break;
        case FITMesgNumOhrSettings:
            fitMessages.ohrSettingsMesgs.append(FITOhrSettingsMesg(message: mesg));
            break;
        case FITMesgNumZonesTarget:
            fitMessages.zonesTargetMesgs.append(FITZonesTargetMesg(message: mesg));
            break;
        case FITMesgNumSport:
            fitMessages.sportMesgs.append(FITSportMesg(message: mesg));
            break;
        case FITMesgNumHrZone:
            fitMessages.hrZoneMesgs.append(FITHrZoneMesg(message: mesg));
            break;
        case FITMesgNumSpeedZone:
            fitMessages.speedZoneMesgs.append(FITSpeedZoneMesg(message: mesg));
            break;
        case FITMesgNumCadenceZone:
            fitMessages.cadenceZoneMesgs.append(FITCadenceZoneMesg(message: mesg));
            break;
        case FITMesgNumPowerZone:
            fitMessages.powerZoneMesgs.append(FITPowerZoneMesg(message: mesg));
            break;
        case FITMesgNumMetZone:
            fitMessages.metZoneMesgs.append(FITMetZoneMesg(message: mesg));
            break;
        case FITMesgNumDiveSettings:
            fitMessages.diveSettingsMesgs.append(FITDiveSettingsMesg(message: mesg));
            break;
        case FITMesgNumDiveAlarm:
            fitMessages.diveAlarmMesgs.append(FITDiveAlarmMesg(message: mesg));
            break;
        case FITMesgNumDiveGas:
            fitMessages.diveGasMesgs.append(FITDiveGasMesg(message: mesg));
            break;
        case FITMesgNumGoal:
            fitMessages.goalMesgs.append(FITGoalMesg(message: mesg));
            break;
        case FITMesgNumActivity:
            fitMessages.activityMesgs.append(FITActivityMesg(message: mesg));
            break;
        case FITMesgNumSession:
            fitMessages.sessionMesgs.append(FITSessionMesg(message: mesg));
            break;
        case FITMesgNumLap:
            fitMessages.lapMesgs.append(FITLapMesg(message: mesg));
            break;
        case FITMesgNumLength:
            fitMessages.lengthMesgs.append(FITLengthMesg(message: mesg));
            break;
        case FITMesgNumRecord:
            fitMessages.recordMesgs.append(FITRecordMesg(message: mesg));
            break;
        case FITMesgNumEvent:
            fitMessages.eventMesgs.append(FITEventMesg(message: mesg));
            break;
        case FITMesgNumDeviceInfo:
            fitMessages.deviceInfoMesgs.append(FITDeviceInfoMesg(message: mesg));
            break;
        case FITMesgNumTrainingFile:
            fitMessages.trainingFileMesgs.append(FITTrainingFileMesg(message: mesg));
            break;
        case FITMesgNumWeatherConditions:
            fitMessages.weatherConditionsMesgs.append(FITWeatherConditionsMesg(message: mesg));
            break;
        case FITMesgNumWeatherAlert:
            fitMessages.weatherAlertMesgs.append(FITWeatherAlertMesg(message: mesg));
            break;
        case FITMesgNumGpsMetadata:
            fitMessages.gpsMetadataMesgs.append(FITGpsMetadataMesg(message: mesg));
            break;
        case FITMesgNumCameraEvent:
            fitMessages.cameraEventMesgs.append(FITCameraEventMesg(message: mesg));
            break;
        case FITMesgNumGyroscopeData:
            fitMessages.gyroscopeDataMesgs.append(FITGyroscopeDataMesg(message: mesg));
            break;
        case FITMesgNumAccelerometerData:
            fitMessages.accelerometerDataMesgs.append(FITAccelerometerDataMesg(message: mesg));
            break;
        case FITMesgNumMagnetometerData:
            fitMessages.magnetometerDataMesgs.append(FITMagnetometerDataMesg(message: mesg));
            break;
        case FITMesgNumBarometerData:
            fitMessages.barometerDataMesgs.append(FITBarometerDataMesg(message: mesg));
            break;
        case FITMesgNumThreeDSensorCalibration:
            fitMessages.threeDSensorCalibrationMesgs.append(FITThreeDSensorCalibrationMesg(message: mesg));
            break;
        case FITMesgNumOneDSensorCalibration:
            fitMessages.oneDSensorCalibrationMesgs.append(FITOneDSensorCalibrationMesg(message: mesg));
            break;
        case FITMesgNumVideoFrame:
            fitMessages.videoFrameMesgs.append(FITVideoFrameMesg(message: mesg));
            break;
        case FITMesgNumObdiiData:
            fitMessages.obdiiDataMesgs.append(FITObdiiDataMesg(message: mesg));
            break;
        case FITMesgNumNmeaSentence:
            fitMessages.nmeaSentenceMesgs.append(FITNmeaSentenceMesg(message: mesg));
            break;
        case FITMesgNumAviationAttitude:
            fitMessages.aviationAttitudeMesgs.append(FITAviationAttitudeMesg(message: mesg));
            break;
        case FITMesgNumVideo:
            fitMessages.videoMesgs.append(FITVideoMesg(message: mesg));
            break;
        case FITMesgNumVideoTitle:
            fitMessages.videoTitleMesgs.append(FITVideoTitleMesg(message: mesg));
            break;
        case FITMesgNumVideoDescription:
            fitMessages.videoDescriptionMesgs.append(FITVideoDescriptionMesg(message: mesg));
            break;
        case FITMesgNumVideoClip:
            fitMessages.videoClipMesgs.append(FITVideoClipMesg(message: mesg));
            break;
        case FITMesgNumSet:
            fitMessages.setMesgs.append(FITSetMesg(message: mesg));
            break;
        case FITMesgNumJump:
            fitMessages.jumpMesgs.append(FITJumpMesg(message: mesg));
            break;
        case FITMesgNumClimbPro:
            fitMessages.climbProMesgs.append(FITClimbProMesg(message: mesg));
            break;
        case FITMesgNumFieldDescription:
            fitMessages.fieldDescriptionMesgs.append(FITFieldDescriptionMesg(message: mesg));
            break;
        case FITMesgNumDeveloperDataId:
            fitMessages.developerDataIdMesgs.append(FITDeveloperDataIdMesg(message: mesg));
            break;
        case FITMesgNumCourse:
            fitMessages.courseMesgs.append(FITCourseMesg(message: mesg));
            break;
        case FITMesgNumCoursePoint:
            fitMessages.coursePointMesgs.append(FITCoursePointMesg(message: mesg));
            break;
        case FITMesgNumSegmentId:
            fitMessages.segmentIdMesgs.append(FITSegmentIdMesg(message: mesg));
            break;
        case FITMesgNumSegmentLeaderboardEntry:
            fitMessages.segmentLeaderboardEntryMesgs.append(FITSegmentLeaderboardEntryMesg(message: mesg));
            break;
        case FITMesgNumSegmentPoint:
            fitMessages.segmentPointMesgs.append(FITSegmentPointMesg(message: mesg));
            break;
        case FITMesgNumSegmentLap:
            fitMessages.segmentLapMesgs.append(FITSegmentLapMesg(message: mesg));
            break;
        case FITMesgNumSegmentFile:
            fitMessages.segmentFileMesgs.append(FITSegmentFileMesg(message: mesg));
            break;
        case FITMesgNumWorkout:
            fitMessages.workoutMesgs.append(FITWorkoutMesg(message: mesg));
            break;
        case FITMesgNumWorkoutSession:
            fitMessages.workoutSessionMesgs.append(FITWorkoutSessionMesg(message: mesg));
            break;
        case FITMesgNumWorkoutStep:
            fitMessages.workoutStepMesgs.append(FITWorkoutStepMesg(message: mesg));
            break;
        case FITMesgNumExerciseTitle:
            fitMessages.exerciseTitleMesgs.append(FITExerciseTitleMesg(message: mesg));
            break;
        case FITMesgNumSchedule:
            fitMessages.scheduleMesgs.append(FITScheduleMesg(message: mesg));
            break;
        case FITMesgNumTotals:
            fitMessages.totalsMesgs.append(FITTotalsMesg(message: mesg));
            break;
        case FITMesgNumWeightScale:
            fitMessages.weightScaleMesgs.append(FITWeightScaleMesg(message: mesg));
            break;
        case FITMesgNumBloodPressure:
            fitMessages.bloodPressureMesgs.append(FITBloodPressureMesg(message: mesg));
            break;
        case FITMesgNumMonitoringInfo:
            fitMessages.monitoringInfoMesgs.append(FITMonitoringInfoMesg(message: mesg));
            break;
        case FITMesgNumMonitoring:
            fitMessages.monitoringMesgs.append(FITMonitoringMesg(message: mesg));
            break;
        case FITMesgNumHr:
            fitMessages.hrMesgs.append(FITHrMesg(message: mesg));
            break;
        case FITMesgNumStressLevel:
            fitMessages.stressLevelMesgs.append(FITStressLevelMesg(message: mesg));
            break;
        case FITMesgNumMemoGlob:
            fitMessages.memoGlobMesgs.append(FITMemoGlobMesg(message: mesg));
            break;
        case FITMesgNumAntChannelId:
            fitMessages.antChannelIdMesgs.append(FITAntChannelIdMesg(message: mesg));
            break;
        case FITMesgNumAntRx:
            fitMessages.antRxMesgs.append(FITAntRxMesg(message: mesg));
            break;
        case FITMesgNumAntTx:
            fitMessages.antTxMesgs.append(FITAntTxMesg(message: mesg));
            break;
        case FITMesgNumExdScreenConfiguration:
            fitMessages.exdScreenConfigurationMesgs.append(FITExdScreenConfigurationMesg(message: mesg));
            break;
        case FITMesgNumExdDataFieldConfiguration:
            fitMessages.exdDataFieldConfigurationMesgs.append(FITExdDataFieldConfigurationMesg(message: mesg));
            break;
        case FITMesgNumExdDataConceptConfiguration:
            fitMessages.exdDataConceptConfigurationMesgs.append(FITExdDataConceptConfigurationMesg(message: mesg));
            break;
        case FITMesgNumDiveSummary:
            fitMessages.diveSummaryMesgs.append(FITDiveSummaryMesg(message: mesg));
            break;
        case FITMesgNumHrv:
            fitMessages.hrvMesgs.append(FITHrvMesg(message: mesg));
            break;
        case FITMesgNumPad:
            fitMessages.padMesgs.append(FITPadMesg(message: mesg));
            break;
        default:
            break;
        }
    }
}