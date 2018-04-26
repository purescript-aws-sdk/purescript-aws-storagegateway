
module AWS.StorageGateway.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>ActivateGatewayInput$ActivationKey</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayName</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayRegion</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayTimezone</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayType</a> </p> </li> <li> <p> <a>ActivateGatewayInput$TapeDriveType</a> </p> </li> <li> <p> <a>ActivateGatewayInput$MediumChangerType</a> </p> </li> </ul>
newtype ActivateGatewayInput = ActivateGatewayInput 
  { "ActivationKey" :: (ActivationKey)
  , "GatewayName" :: (GatewayName)
  , "GatewayTimezone" :: (GatewayTimezone)
  , "GatewayRegion" :: (RegionId)
  , "GatewayType" :: Maybe (GatewayType)
  , "TapeDriveType" :: Maybe (TapeDriveType)
  , "MediumChangerType" :: Maybe (MediumChangerType)
  }
derive instance newtypeActivateGatewayInput :: Newtype ActivateGatewayInput _
derive instance repGenericActivateGatewayInput :: Generic ActivateGatewayInput _
instance showActivateGatewayInput :: Show ActivateGatewayInput where show = genericShow
instance decodeActivateGatewayInput :: Decode ActivateGatewayInput where decode = genericDecode options
instance encodeActivateGatewayInput :: Encode ActivateGatewayInput where encode = genericEncode options

-- | Constructs ActivateGatewayInput from required parameters
newActivateGatewayInput :: ActivationKey -> GatewayName -> RegionId -> GatewayTimezone -> ActivateGatewayInput
newActivateGatewayInput _ActivationKey _GatewayName _GatewayRegion _GatewayTimezone = ActivateGatewayInput { "ActivationKey": _ActivationKey, "GatewayName": _GatewayName, "GatewayRegion": _GatewayRegion, "GatewayTimezone": _GatewayTimezone, "GatewayType": Nothing, "MediumChangerType": Nothing, "TapeDriveType": Nothing }

-- | Constructs ActivateGatewayInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivateGatewayInput' :: ActivationKey -> GatewayName -> RegionId -> GatewayTimezone -> ( { "ActivationKey" :: (ActivationKey) , "GatewayName" :: (GatewayName) , "GatewayTimezone" :: (GatewayTimezone) , "GatewayRegion" :: (RegionId) , "GatewayType" :: Maybe (GatewayType) , "TapeDriveType" :: Maybe (TapeDriveType) , "MediumChangerType" :: Maybe (MediumChangerType) } -> {"ActivationKey" :: (ActivationKey) , "GatewayName" :: (GatewayName) , "GatewayTimezone" :: (GatewayTimezone) , "GatewayRegion" :: (RegionId) , "GatewayType" :: Maybe (GatewayType) , "TapeDriveType" :: Maybe (TapeDriveType) , "MediumChangerType" :: Maybe (MediumChangerType) } ) -> ActivateGatewayInput
newActivateGatewayInput' _ActivationKey _GatewayName _GatewayRegion _GatewayTimezone customize = (ActivateGatewayInput <<< customize) { "ActivationKey": _ActivationKey, "GatewayName": _GatewayName, "GatewayRegion": _GatewayRegion, "GatewayTimezone": _GatewayTimezone, "GatewayType": Nothing, "MediumChangerType": Nothing, "TapeDriveType": Nothing }



-- | <p>AWS Storage Gateway returns the Amazon Resource Name (ARN) of the activated gateway. It is a string made of information such as your account, gateway name, and region. This ARN is used to reference the gateway in other API operations as well as resource-based authorization.</p> <note> <p>For gateways activated prior to September 02, 2015, the gateway ARN contains the gateway name rather than the gateway ID. Changing the name of the gateway has no effect on the gateway ARN.</p> </note>
newtype ActivateGatewayOutput = ActivateGatewayOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeActivateGatewayOutput :: Newtype ActivateGatewayOutput _
derive instance repGenericActivateGatewayOutput :: Generic ActivateGatewayOutput _
instance showActivateGatewayOutput :: Show ActivateGatewayOutput where show = genericShow
instance decodeActivateGatewayOutput :: Decode ActivateGatewayOutput where decode = genericDecode options
instance encodeActivateGatewayOutput :: Encode ActivateGatewayOutput where encode = genericEncode options

-- | Constructs ActivateGatewayOutput from required parameters
newActivateGatewayOutput :: ActivateGatewayOutput
newActivateGatewayOutput  = ActivateGatewayOutput { "GatewayARN": Nothing }

-- | Constructs ActivateGatewayOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivateGatewayOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> ActivateGatewayOutput
newActivateGatewayOutput'  customize = (ActivateGatewayOutput <<< customize) { "GatewayARN": Nothing }



newtype ActivationKey = ActivationKey String
derive instance newtypeActivationKey :: Newtype ActivationKey _
derive instance repGenericActivationKey :: Generic ActivationKey _
instance showActivationKey :: Show ActivationKey where show = genericShow
instance decodeActivationKey :: Decode ActivationKey where decode = genericDecode options
instance encodeActivationKey :: Encode ActivationKey where encode = genericEncode options



newtype AddCacheInput = AddCacheInput 
  { "GatewayARN" :: (GatewayARN)
  , "DiskIds" :: (DiskIds)
  }
derive instance newtypeAddCacheInput :: Newtype AddCacheInput _
derive instance repGenericAddCacheInput :: Generic AddCacheInput _
instance showAddCacheInput :: Show AddCacheInput where show = genericShow
instance decodeAddCacheInput :: Decode AddCacheInput where decode = genericDecode options
instance encodeAddCacheInput :: Encode AddCacheInput where encode = genericEncode options

-- | Constructs AddCacheInput from required parameters
newAddCacheInput :: DiskIds -> GatewayARN -> AddCacheInput
newAddCacheInput _DiskIds _GatewayARN = AddCacheInput { "DiskIds": _DiskIds, "GatewayARN": _GatewayARN }

-- | Constructs AddCacheInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddCacheInput' :: DiskIds -> GatewayARN -> ( { "GatewayARN" :: (GatewayARN) , "DiskIds" :: (DiskIds) } -> {"GatewayARN" :: (GatewayARN) , "DiskIds" :: (DiskIds) } ) -> AddCacheInput
newAddCacheInput' _DiskIds _GatewayARN customize = (AddCacheInput <<< customize) { "DiskIds": _DiskIds, "GatewayARN": _GatewayARN }



newtype AddCacheOutput = AddCacheOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeAddCacheOutput :: Newtype AddCacheOutput _
derive instance repGenericAddCacheOutput :: Generic AddCacheOutput _
instance showAddCacheOutput :: Show AddCacheOutput where show = genericShow
instance decodeAddCacheOutput :: Decode AddCacheOutput where decode = genericDecode options
instance encodeAddCacheOutput :: Encode AddCacheOutput where encode = genericEncode options

-- | Constructs AddCacheOutput from required parameters
newAddCacheOutput :: AddCacheOutput
newAddCacheOutput  = AddCacheOutput { "GatewayARN": Nothing }

-- | Constructs AddCacheOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddCacheOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> AddCacheOutput
newAddCacheOutput'  customize = (AddCacheOutput <<< customize) { "GatewayARN": Nothing }



-- | <p>AddTagsToResourceInput</p>
newtype AddTagsToResourceInput = AddTagsToResourceInput 
  { "ResourceARN" :: (ResourceARN)
  , "Tags" :: (Tags)
  }
derive instance newtypeAddTagsToResourceInput :: Newtype AddTagsToResourceInput _
derive instance repGenericAddTagsToResourceInput :: Generic AddTagsToResourceInput _
instance showAddTagsToResourceInput :: Show AddTagsToResourceInput where show = genericShow
instance decodeAddTagsToResourceInput :: Decode AddTagsToResourceInput where decode = genericDecode options
instance encodeAddTagsToResourceInput :: Encode AddTagsToResourceInput where encode = genericEncode options

-- | Constructs AddTagsToResourceInput from required parameters
newAddTagsToResourceInput :: ResourceARN -> Tags -> AddTagsToResourceInput
newAddTagsToResourceInput _ResourceARN _Tags = AddTagsToResourceInput { "ResourceARN": _ResourceARN, "Tags": _Tags }

-- | Constructs AddTagsToResourceInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddTagsToResourceInput' :: ResourceARN -> Tags -> ( { "ResourceARN" :: (ResourceARN) , "Tags" :: (Tags) } -> {"ResourceARN" :: (ResourceARN) , "Tags" :: (Tags) } ) -> AddTagsToResourceInput
newAddTagsToResourceInput' _ResourceARN _Tags customize = (AddTagsToResourceInput <<< customize) { "ResourceARN": _ResourceARN, "Tags": _Tags }



-- | <p>AddTagsToResourceOutput</p>
newtype AddTagsToResourceOutput = AddTagsToResourceOutput 
  { "ResourceARN" :: Maybe (ResourceARN)
  }
derive instance newtypeAddTagsToResourceOutput :: Newtype AddTagsToResourceOutput _
derive instance repGenericAddTagsToResourceOutput :: Generic AddTagsToResourceOutput _
instance showAddTagsToResourceOutput :: Show AddTagsToResourceOutput where show = genericShow
instance decodeAddTagsToResourceOutput :: Decode AddTagsToResourceOutput where decode = genericDecode options
instance encodeAddTagsToResourceOutput :: Encode AddTagsToResourceOutput where encode = genericEncode options

-- | Constructs AddTagsToResourceOutput from required parameters
newAddTagsToResourceOutput :: AddTagsToResourceOutput
newAddTagsToResourceOutput  = AddTagsToResourceOutput { "ResourceARN": Nothing }

-- | Constructs AddTagsToResourceOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddTagsToResourceOutput' :: ( { "ResourceARN" :: Maybe (ResourceARN) } -> {"ResourceARN" :: Maybe (ResourceARN) } ) -> AddTagsToResourceOutput
newAddTagsToResourceOutput'  customize = (AddTagsToResourceOutput <<< customize) { "ResourceARN": Nothing }



newtype AddUploadBufferInput = AddUploadBufferInput 
  { "GatewayARN" :: (GatewayARN)
  , "DiskIds" :: (DiskIds)
  }
derive instance newtypeAddUploadBufferInput :: Newtype AddUploadBufferInput _
derive instance repGenericAddUploadBufferInput :: Generic AddUploadBufferInput _
instance showAddUploadBufferInput :: Show AddUploadBufferInput where show = genericShow
instance decodeAddUploadBufferInput :: Decode AddUploadBufferInput where decode = genericDecode options
instance encodeAddUploadBufferInput :: Encode AddUploadBufferInput where encode = genericEncode options

-- | Constructs AddUploadBufferInput from required parameters
newAddUploadBufferInput :: DiskIds -> GatewayARN -> AddUploadBufferInput
newAddUploadBufferInput _DiskIds _GatewayARN = AddUploadBufferInput { "DiskIds": _DiskIds, "GatewayARN": _GatewayARN }

-- | Constructs AddUploadBufferInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddUploadBufferInput' :: DiskIds -> GatewayARN -> ( { "GatewayARN" :: (GatewayARN) , "DiskIds" :: (DiskIds) } -> {"GatewayARN" :: (GatewayARN) , "DiskIds" :: (DiskIds) } ) -> AddUploadBufferInput
newAddUploadBufferInput' _DiskIds _GatewayARN customize = (AddUploadBufferInput <<< customize) { "DiskIds": _DiskIds, "GatewayARN": _GatewayARN }



newtype AddUploadBufferOutput = AddUploadBufferOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeAddUploadBufferOutput :: Newtype AddUploadBufferOutput _
derive instance repGenericAddUploadBufferOutput :: Generic AddUploadBufferOutput _
instance showAddUploadBufferOutput :: Show AddUploadBufferOutput where show = genericShow
instance decodeAddUploadBufferOutput :: Decode AddUploadBufferOutput where decode = genericDecode options
instance encodeAddUploadBufferOutput :: Encode AddUploadBufferOutput where encode = genericEncode options

-- | Constructs AddUploadBufferOutput from required parameters
newAddUploadBufferOutput :: AddUploadBufferOutput
newAddUploadBufferOutput  = AddUploadBufferOutput { "GatewayARN": Nothing }

-- | Constructs AddUploadBufferOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddUploadBufferOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> AddUploadBufferOutput
newAddUploadBufferOutput'  customize = (AddUploadBufferOutput <<< customize) { "GatewayARN": Nothing }



-- | <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>AddWorkingStorageInput$DiskIds</a> </p> </li> </ul>
newtype AddWorkingStorageInput = AddWorkingStorageInput 
  { "GatewayARN" :: (GatewayARN)
  , "DiskIds" :: (DiskIds)
  }
derive instance newtypeAddWorkingStorageInput :: Newtype AddWorkingStorageInput _
derive instance repGenericAddWorkingStorageInput :: Generic AddWorkingStorageInput _
instance showAddWorkingStorageInput :: Show AddWorkingStorageInput where show = genericShow
instance decodeAddWorkingStorageInput :: Decode AddWorkingStorageInput where decode = genericDecode options
instance encodeAddWorkingStorageInput :: Encode AddWorkingStorageInput where encode = genericEncode options

-- | Constructs AddWorkingStorageInput from required parameters
newAddWorkingStorageInput :: DiskIds -> GatewayARN -> AddWorkingStorageInput
newAddWorkingStorageInput _DiskIds _GatewayARN = AddWorkingStorageInput { "DiskIds": _DiskIds, "GatewayARN": _GatewayARN }

-- | Constructs AddWorkingStorageInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddWorkingStorageInput' :: DiskIds -> GatewayARN -> ( { "GatewayARN" :: (GatewayARN) , "DiskIds" :: (DiskIds) } -> {"GatewayARN" :: (GatewayARN) , "DiskIds" :: (DiskIds) } ) -> AddWorkingStorageInput
newAddWorkingStorageInput' _DiskIds _GatewayARN customize = (AddWorkingStorageInput <<< customize) { "DiskIds": _DiskIds, "GatewayARN": _GatewayARN }



-- | <p>A JSON object containing the of the gateway for which working storage was configured.</p>
newtype AddWorkingStorageOutput = AddWorkingStorageOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeAddWorkingStorageOutput :: Newtype AddWorkingStorageOutput _
derive instance repGenericAddWorkingStorageOutput :: Generic AddWorkingStorageOutput _
instance showAddWorkingStorageOutput :: Show AddWorkingStorageOutput where show = genericShow
instance decodeAddWorkingStorageOutput :: Decode AddWorkingStorageOutput where decode = genericDecode options
instance encodeAddWorkingStorageOutput :: Encode AddWorkingStorageOutput where encode = genericEncode options

-- | Constructs AddWorkingStorageOutput from required parameters
newAddWorkingStorageOutput :: AddWorkingStorageOutput
newAddWorkingStorageOutput  = AddWorkingStorageOutput { "GatewayARN": Nothing }

-- | Constructs AddWorkingStorageOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddWorkingStorageOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> AddWorkingStorageOutput
newAddWorkingStorageOutput'  customize = (AddWorkingStorageOutput <<< customize) { "GatewayARN": Nothing }



newtype BandwidthDownloadRateLimit = BandwidthDownloadRateLimit Number
derive instance newtypeBandwidthDownloadRateLimit :: Newtype BandwidthDownloadRateLimit _
derive instance repGenericBandwidthDownloadRateLimit :: Generic BandwidthDownloadRateLimit _
instance showBandwidthDownloadRateLimit :: Show BandwidthDownloadRateLimit where show = genericShow
instance decodeBandwidthDownloadRateLimit :: Decode BandwidthDownloadRateLimit where decode = genericDecode options
instance encodeBandwidthDownloadRateLimit :: Encode BandwidthDownloadRateLimit where encode = genericEncode options



newtype BandwidthType = BandwidthType String
derive instance newtypeBandwidthType :: Newtype BandwidthType _
derive instance repGenericBandwidthType :: Generic BandwidthType _
instance showBandwidthType :: Show BandwidthType where show = genericShow
instance decodeBandwidthType :: Decode BandwidthType where decode = genericDecode options
instance encodeBandwidthType :: Encode BandwidthType where encode = genericEncode options



newtype BandwidthUploadRateLimit = BandwidthUploadRateLimit Number
derive instance newtypeBandwidthUploadRateLimit :: Newtype BandwidthUploadRateLimit _
derive instance repGenericBandwidthUploadRateLimit :: Generic BandwidthUploadRateLimit _
instance showBandwidthUploadRateLimit :: Show BandwidthUploadRateLimit where show = genericShow
instance decodeBandwidthUploadRateLimit :: Decode BandwidthUploadRateLimit where decode = genericDecode options
instance encodeBandwidthUploadRateLimit :: Encode BandwidthUploadRateLimit where encode = genericEncode options



-- | <p>Describes an iSCSI cached volume.</p>
newtype CachediSCSIVolume = CachediSCSIVolume 
  { "VolumeARN" :: Maybe (VolumeARN)
  , "VolumeId" :: Maybe (VolumeId)
  , "VolumeType" :: Maybe (VolumeType)
  , "VolumeStatus" :: Maybe (VolumeStatus)
  , "VolumeSizeInBytes" :: Maybe (Number)
  , "VolumeProgress" :: Maybe (DoubleObject)
  , "SourceSnapshotId" :: Maybe (SnapshotId)
  , "VolumeiSCSIAttributes" :: Maybe (VolumeiSCSIAttributes)
  , "CreatedDate" :: Maybe (CreatedDate)
  , "VolumeUsedInBytes" :: Maybe (VolumeUsedInBytes)
  }
derive instance newtypeCachediSCSIVolume :: Newtype CachediSCSIVolume _
derive instance repGenericCachediSCSIVolume :: Generic CachediSCSIVolume _
instance showCachediSCSIVolume :: Show CachediSCSIVolume where show = genericShow
instance decodeCachediSCSIVolume :: Decode CachediSCSIVolume where decode = genericDecode options
instance encodeCachediSCSIVolume :: Encode CachediSCSIVolume where encode = genericEncode options

-- | Constructs CachediSCSIVolume from required parameters
newCachediSCSIVolume :: CachediSCSIVolume
newCachediSCSIVolume  = CachediSCSIVolume { "CreatedDate": Nothing, "SourceSnapshotId": Nothing, "VolumeARN": Nothing, "VolumeId": Nothing, "VolumeProgress": Nothing, "VolumeSizeInBytes": Nothing, "VolumeStatus": Nothing, "VolumeType": Nothing, "VolumeUsedInBytes": Nothing, "VolumeiSCSIAttributes": Nothing }

-- | Constructs CachediSCSIVolume's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCachediSCSIVolume' :: ( { "VolumeARN" :: Maybe (VolumeARN) , "VolumeId" :: Maybe (VolumeId) , "VolumeType" :: Maybe (VolumeType) , "VolumeStatus" :: Maybe (VolumeStatus) , "VolumeSizeInBytes" :: Maybe (Number) , "VolumeProgress" :: Maybe (DoubleObject) , "SourceSnapshotId" :: Maybe (SnapshotId) , "VolumeiSCSIAttributes" :: Maybe (VolumeiSCSIAttributes) , "CreatedDate" :: Maybe (CreatedDate) , "VolumeUsedInBytes" :: Maybe (VolumeUsedInBytes) } -> {"VolumeARN" :: Maybe (VolumeARN) , "VolumeId" :: Maybe (VolumeId) , "VolumeType" :: Maybe (VolumeType) , "VolumeStatus" :: Maybe (VolumeStatus) , "VolumeSizeInBytes" :: Maybe (Number) , "VolumeProgress" :: Maybe (DoubleObject) , "SourceSnapshotId" :: Maybe (SnapshotId) , "VolumeiSCSIAttributes" :: Maybe (VolumeiSCSIAttributes) , "CreatedDate" :: Maybe (CreatedDate) , "VolumeUsedInBytes" :: Maybe (VolumeUsedInBytes) } ) -> CachediSCSIVolume
newCachediSCSIVolume'  customize = (CachediSCSIVolume <<< customize) { "CreatedDate": Nothing, "SourceSnapshotId": Nothing, "VolumeARN": Nothing, "VolumeId": Nothing, "VolumeProgress": Nothing, "VolumeSizeInBytes": Nothing, "VolumeStatus": Nothing, "VolumeType": Nothing, "VolumeUsedInBytes": Nothing, "VolumeiSCSIAttributes": Nothing }



newtype CachediSCSIVolumes = CachediSCSIVolumes (Array CachediSCSIVolume)
derive instance newtypeCachediSCSIVolumes :: Newtype CachediSCSIVolumes _
derive instance repGenericCachediSCSIVolumes :: Generic CachediSCSIVolumes _
instance showCachediSCSIVolumes :: Show CachediSCSIVolumes where show = genericShow
instance decodeCachediSCSIVolumes :: Decode CachediSCSIVolumes where decode = genericDecode options
instance encodeCachediSCSIVolumes :: Encode CachediSCSIVolumes where encode = genericEncode options



-- | <p>CancelArchivalInput</p>
newtype CancelArchivalInput = CancelArchivalInput 
  { "GatewayARN" :: (GatewayARN)
  , "TapeARN" :: (TapeARN)
  }
derive instance newtypeCancelArchivalInput :: Newtype CancelArchivalInput _
derive instance repGenericCancelArchivalInput :: Generic CancelArchivalInput _
instance showCancelArchivalInput :: Show CancelArchivalInput where show = genericShow
instance decodeCancelArchivalInput :: Decode CancelArchivalInput where decode = genericDecode options
instance encodeCancelArchivalInput :: Encode CancelArchivalInput where encode = genericEncode options

-- | Constructs CancelArchivalInput from required parameters
newCancelArchivalInput :: GatewayARN -> TapeARN -> CancelArchivalInput
newCancelArchivalInput _GatewayARN _TapeARN = CancelArchivalInput { "GatewayARN": _GatewayARN, "TapeARN": _TapeARN }

-- | Constructs CancelArchivalInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelArchivalInput' :: GatewayARN -> TapeARN -> ( { "GatewayARN" :: (GatewayARN) , "TapeARN" :: (TapeARN) } -> {"GatewayARN" :: (GatewayARN) , "TapeARN" :: (TapeARN) } ) -> CancelArchivalInput
newCancelArchivalInput' _GatewayARN _TapeARN customize = (CancelArchivalInput <<< customize) { "GatewayARN": _GatewayARN, "TapeARN": _TapeARN }



-- | <p>CancelArchivalOutput</p>
newtype CancelArchivalOutput = CancelArchivalOutput 
  { "TapeARN" :: Maybe (TapeARN)
  }
derive instance newtypeCancelArchivalOutput :: Newtype CancelArchivalOutput _
derive instance repGenericCancelArchivalOutput :: Generic CancelArchivalOutput _
instance showCancelArchivalOutput :: Show CancelArchivalOutput where show = genericShow
instance decodeCancelArchivalOutput :: Decode CancelArchivalOutput where decode = genericDecode options
instance encodeCancelArchivalOutput :: Encode CancelArchivalOutput where encode = genericEncode options

-- | Constructs CancelArchivalOutput from required parameters
newCancelArchivalOutput :: CancelArchivalOutput
newCancelArchivalOutput  = CancelArchivalOutput { "TapeARN": Nothing }

-- | Constructs CancelArchivalOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelArchivalOutput' :: ( { "TapeARN" :: Maybe (TapeARN) } -> {"TapeARN" :: Maybe (TapeARN) } ) -> CancelArchivalOutput
newCancelArchivalOutput'  customize = (CancelArchivalOutput <<< customize) { "TapeARN": Nothing }



-- | <p>CancelRetrievalInput</p>
newtype CancelRetrievalInput = CancelRetrievalInput 
  { "GatewayARN" :: (GatewayARN)
  , "TapeARN" :: (TapeARN)
  }
derive instance newtypeCancelRetrievalInput :: Newtype CancelRetrievalInput _
derive instance repGenericCancelRetrievalInput :: Generic CancelRetrievalInput _
instance showCancelRetrievalInput :: Show CancelRetrievalInput where show = genericShow
instance decodeCancelRetrievalInput :: Decode CancelRetrievalInput where decode = genericDecode options
instance encodeCancelRetrievalInput :: Encode CancelRetrievalInput where encode = genericEncode options

-- | Constructs CancelRetrievalInput from required parameters
newCancelRetrievalInput :: GatewayARN -> TapeARN -> CancelRetrievalInput
newCancelRetrievalInput _GatewayARN _TapeARN = CancelRetrievalInput { "GatewayARN": _GatewayARN, "TapeARN": _TapeARN }

-- | Constructs CancelRetrievalInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelRetrievalInput' :: GatewayARN -> TapeARN -> ( { "GatewayARN" :: (GatewayARN) , "TapeARN" :: (TapeARN) } -> {"GatewayARN" :: (GatewayARN) , "TapeARN" :: (TapeARN) } ) -> CancelRetrievalInput
newCancelRetrievalInput' _GatewayARN _TapeARN customize = (CancelRetrievalInput <<< customize) { "GatewayARN": _GatewayARN, "TapeARN": _TapeARN }



-- | <p>CancelRetrievalOutput</p>
newtype CancelRetrievalOutput = CancelRetrievalOutput 
  { "TapeARN" :: Maybe (TapeARN)
  }
derive instance newtypeCancelRetrievalOutput :: Newtype CancelRetrievalOutput _
derive instance repGenericCancelRetrievalOutput :: Generic CancelRetrievalOutput _
instance showCancelRetrievalOutput :: Show CancelRetrievalOutput where show = genericShow
instance decodeCancelRetrievalOutput :: Decode CancelRetrievalOutput where decode = genericDecode options
instance encodeCancelRetrievalOutput :: Encode CancelRetrievalOutput where encode = genericEncode options

-- | Constructs CancelRetrievalOutput from required parameters
newCancelRetrievalOutput :: CancelRetrievalOutput
newCancelRetrievalOutput  = CancelRetrievalOutput { "TapeARN": Nothing }

-- | Constructs CancelRetrievalOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelRetrievalOutput' :: ( { "TapeARN" :: Maybe (TapeARN) } -> {"TapeARN" :: Maybe (TapeARN) } ) -> CancelRetrievalOutput
newCancelRetrievalOutput'  customize = (CancelRetrievalOutput <<< customize) { "TapeARN": Nothing }



newtype ChapCredentials = ChapCredentials (Array ChapInfo)
derive instance newtypeChapCredentials :: Newtype ChapCredentials _
derive instance repGenericChapCredentials :: Generic ChapCredentials _
instance showChapCredentials :: Show ChapCredentials where show = genericShow
instance decodeChapCredentials :: Decode ChapCredentials where decode = genericDecode options
instance encodeChapCredentials :: Encode ChapCredentials where encode = genericEncode options



-- | <p>Describes Challenge-Handshake Authentication Protocol (CHAP) information that supports authentication between your gateway and iSCSI initiators.</p>
newtype ChapInfo = ChapInfo 
  { "TargetARN" :: Maybe (TargetARN)
  , "SecretToAuthenticateInitiator" :: Maybe (ChapSecret)
  , "InitiatorName" :: Maybe (IqnName)
  , "SecretToAuthenticateTarget" :: Maybe (ChapSecret)
  }
derive instance newtypeChapInfo :: Newtype ChapInfo _
derive instance repGenericChapInfo :: Generic ChapInfo _
instance showChapInfo :: Show ChapInfo where show = genericShow
instance decodeChapInfo :: Decode ChapInfo where decode = genericDecode options
instance encodeChapInfo :: Encode ChapInfo where encode = genericEncode options

-- | Constructs ChapInfo from required parameters
newChapInfo :: ChapInfo
newChapInfo  = ChapInfo { "InitiatorName": Nothing, "SecretToAuthenticateInitiator": Nothing, "SecretToAuthenticateTarget": Nothing, "TargetARN": Nothing }

-- | Constructs ChapInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChapInfo' :: ( { "TargetARN" :: Maybe (TargetARN) , "SecretToAuthenticateInitiator" :: Maybe (ChapSecret) , "InitiatorName" :: Maybe (IqnName) , "SecretToAuthenticateTarget" :: Maybe (ChapSecret) } -> {"TargetARN" :: Maybe (TargetARN) , "SecretToAuthenticateInitiator" :: Maybe (ChapSecret) , "InitiatorName" :: Maybe (IqnName) , "SecretToAuthenticateTarget" :: Maybe (ChapSecret) } ) -> ChapInfo
newChapInfo'  customize = (ChapInfo <<< customize) { "InitiatorName": Nothing, "SecretToAuthenticateInitiator": Nothing, "SecretToAuthenticateTarget": Nothing, "TargetARN": Nothing }



newtype ChapSecret = ChapSecret String
derive instance newtypeChapSecret :: Newtype ChapSecret _
derive instance repGenericChapSecret :: Generic ChapSecret _
instance showChapSecret :: Show ChapSecret where show = genericShow
instance decodeChapSecret :: Decode ChapSecret where decode = genericDecode options
instance encodeChapSecret :: Encode ChapSecret where encode = genericEncode options



newtype ClientToken = ClientToken String
derive instance newtypeClientToken :: Newtype ClientToken _
derive instance repGenericClientToken :: Generic ClientToken _
instance showClientToken :: Show ClientToken where show = genericShow
instance decodeClientToken :: Decode ClientToken where decode = genericDecode options
instance encodeClientToken :: Encode ClientToken where encode = genericEncode options



newtype CreateCachediSCSIVolumeInput = CreateCachediSCSIVolumeInput 
  { "GatewayARN" :: (GatewayARN)
  , "VolumeSizeInBytes" :: (Number)
  , "SnapshotId" :: Maybe (SnapshotId)
  , "TargetName" :: (TargetName)
  , "SourceVolumeARN" :: Maybe (VolumeARN)
  , "NetworkInterfaceId" :: (NetworkInterfaceId)
  , "ClientToken" :: (ClientToken)
  }
derive instance newtypeCreateCachediSCSIVolumeInput :: Newtype CreateCachediSCSIVolumeInput _
derive instance repGenericCreateCachediSCSIVolumeInput :: Generic CreateCachediSCSIVolumeInput _
instance showCreateCachediSCSIVolumeInput :: Show CreateCachediSCSIVolumeInput where show = genericShow
instance decodeCreateCachediSCSIVolumeInput :: Decode CreateCachediSCSIVolumeInput where decode = genericDecode options
instance encodeCreateCachediSCSIVolumeInput :: Encode CreateCachediSCSIVolumeInput where encode = genericEncode options

-- | Constructs CreateCachediSCSIVolumeInput from required parameters
newCreateCachediSCSIVolumeInput :: ClientToken -> GatewayARN -> NetworkInterfaceId -> TargetName -> Number -> CreateCachediSCSIVolumeInput
newCreateCachediSCSIVolumeInput _ClientToken _GatewayARN _NetworkInterfaceId _TargetName _VolumeSizeInBytes = CreateCachediSCSIVolumeInput { "ClientToken": _ClientToken, "GatewayARN": _GatewayARN, "NetworkInterfaceId": _NetworkInterfaceId, "TargetName": _TargetName, "VolumeSizeInBytes": _VolumeSizeInBytes, "SnapshotId": Nothing, "SourceVolumeARN": Nothing }

-- | Constructs CreateCachediSCSIVolumeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCachediSCSIVolumeInput' :: ClientToken -> GatewayARN -> NetworkInterfaceId -> TargetName -> Number -> ( { "GatewayARN" :: (GatewayARN) , "VolumeSizeInBytes" :: (Number) , "SnapshotId" :: Maybe (SnapshotId) , "TargetName" :: (TargetName) , "SourceVolumeARN" :: Maybe (VolumeARN) , "NetworkInterfaceId" :: (NetworkInterfaceId) , "ClientToken" :: (ClientToken) } -> {"GatewayARN" :: (GatewayARN) , "VolumeSizeInBytes" :: (Number) , "SnapshotId" :: Maybe (SnapshotId) , "TargetName" :: (TargetName) , "SourceVolumeARN" :: Maybe (VolumeARN) , "NetworkInterfaceId" :: (NetworkInterfaceId) , "ClientToken" :: (ClientToken) } ) -> CreateCachediSCSIVolumeInput
newCreateCachediSCSIVolumeInput' _ClientToken _GatewayARN _NetworkInterfaceId _TargetName _VolumeSizeInBytes customize = (CreateCachediSCSIVolumeInput <<< customize) { "ClientToken": _ClientToken, "GatewayARN": _GatewayARN, "NetworkInterfaceId": _NetworkInterfaceId, "TargetName": _TargetName, "VolumeSizeInBytes": _VolumeSizeInBytes, "SnapshotId": Nothing, "SourceVolumeARN": Nothing }



newtype CreateCachediSCSIVolumeOutput = CreateCachediSCSIVolumeOutput 
  { "VolumeARN" :: Maybe (VolumeARN)
  , "TargetARN" :: Maybe (TargetARN)
  }
derive instance newtypeCreateCachediSCSIVolumeOutput :: Newtype CreateCachediSCSIVolumeOutput _
derive instance repGenericCreateCachediSCSIVolumeOutput :: Generic CreateCachediSCSIVolumeOutput _
instance showCreateCachediSCSIVolumeOutput :: Show CreateCachediSCSIVolumeOutput where show = genericShow
instance decodeCreateCachediSCSIVolumeOutput :: Decode CreateCachediSCSIVolumeOutput where decode = genericDecode options
instance encodeCreateCachediSCSIVolumeOutput :: Encode CreateCachediSCSIVolumeOutput where encode = genericEncode options

-- | Constructs CreateCachediSCSIVolumeOutput from required parameters
newCreateCachediSCSIVolumeOutput :: CreateCachediSCSIVolumeOutput
newCreateCachediSCSIVolumeOutput  = CreateCachediSCSIVolumeOutput { "TargetARN": Nothing, "VolumeARN": Nothing }

-- | Constructs CreateCachediSCSIVolumeOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCachediSCSIVolumeOutput' :: ( { "VolumeARN" :: Maybe (VolumeARN) , "TargetARN" :: Maybe (TargetARN) } -> {"VolumeARN" :: Maybe (VolumeARN) , "TargetARN" :: Maybe (TargetARN) } ) -> CreateCachediSCSIVolumeOutput
newCreateCachediSCSIVolumeOutput'  customize = (CreateCachediSCSIVolumeOutput <<< customize) { "TargetARN": Nothing, "VolumeARN": Nothing }



-- | <p>CreateNFSFileShareInput</p>
newtype CreateNFSFileShareInput = CreateNFSFileShareInput 
  { "ClientToken" :: (ClientToken)
  , "NFSFileShareDefaults" :: Maybe (NFSFileShareDefaults)
  , "GatewayARN" :: (GatewayARN)
  , "KMSEncrypted" :: Maybe (Boolean)
  , "KMSKey" :: Maybe (KMSKey)
  , "Role" :: (Role)
  , "LocationARN" :: (LocationARN)
  , "DefaultStorageClass" :: Maybe (StorageClass)
  , "ObjectACL" :: Maybe (ObjectACL)
  , "ClientList" :: Maybe (FileShareClientList)
  , "Squash" :: Maybe (Squash)
  , "ReadOnly" :: Maybe (Boolean)
  , "GuessMIMETypeEnabled" :: Maybe (Boolean)
  , "RequesterPays" :: Maybe (Boolean)
  }
derive instance newtypeCreateNFSFileShareInput :: Newtype CreateNFSFileShareInput _
derive instance repGenericCreateNFSFileShareInput :: Generic CreateNFSFileShareInput _
instance showCreateNFSFileShareInput :: Show CreateNFSFileShareInput where show = genericShow
instance decodeCreateNFSFileShareInput :: Decode CreateNFSFileShareInput where decode = genericDecode options
instance encodeCreateNFSFileShareInput :: Encode CreateNFSFileShareInput where encode = genericEncode options

-- | Constructs CreateNFSFileShareInput from required parameters
newCreateNFSFileShareInput :: ClientToken -> GatewayARN -> LocationARN -> Role -> CreateNFSFileShareInput
newCreateNFSFileShareInput _ClientToken _GatewayARN _LocationARN _Role = CreateNFSFileShareInput { "ClientToken": _ClientToken, "GatewayARN": _GatewayARN, "LocationARN": _LocationARN, "Role": _Role, "ClientList": Nothing, "DefaultStorageClass": Nothing, "GuessMIMETypeEnabled": Nothing, "KMSEncrypted": Nothing, "KMSKey": Nothing, "NFSFileShareDefaults": Nothing, "ObjectACL": Nothing, "ReadOnly": Nothing, "RequesterPays": Nothing, "Squash": Nothing }

-- | Constructs CreateNFSFileShareInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateNFSFileShareInput' :: ClientToken -> GatewayARN -> LocationARN -> Role -> ( { "ClientToken" :: (ClientToken) , "NFSFileShareDefaults" :: Maybe (NFSFileShareDefaults) , "GatewayARN" :: (GatewayARN) , "KMSEncrypted" :: Maybe (Boolean) , "KMSKey" :: Maybe (KMSKey) , "Role" :: (Role) , "LocationARN" :: (LocationARN) , "DefaultStorageClass" :: Maybe (StorageClass) , "ObjectACL" :: Maybe (ObjectACL) , "ClientList" :: Maybe (FileShareClientList) , "Squash" :: Maybe (Squash) , "ReadOnly" :: Maybe (Boolean) , "GuessMIMETypeEnabled" :: Maybe (Boolean) , "RequesterPays" :: Maybe (Boolean) } -> {"ClientToken" :: (ClientToken) , "NFSFileShareDefaults" :: Maybe (NFSFileShareDefaults) , "GatewayARN" :: (GatewayARN) , "KMSEncrypted" :: Maybe (Boolean) , "KMSKey" :: Maybe (KMSKey) , "Role" :: (Role) , "LocationARN" :: (LocationARN) , "DefaultStorageClass" :: Maybe (StorageClass) , "ObjectACL" :: Maybe (ObjectACL) , "ClientList" :: Maybe (FileShareClientList) , "Squash" :: Maybe (Squash) , "ReadOnly" :: Maybe (Boolean) , "GuessMIMETypeEnabled" :: Maybe (Boolean) , "RequesterPays" :: Maybe (Boolean) } ) -> CreateNFSFileShareInput
newCreateNFSFileShareInput' _ClientToken _GatewayARN _LocationARN _Role customize = (CreateNFSFileShareInput <<< customize) { "ClientToken": _ClientToken, "GatewayARN": _GatewayARN, "LocationARN": _LocationARN, "Role": _Role, "ClientList": Nothing, "DefaultStorageClass": Nothing, "GuessMIMETypeEnabled": Nothing, "KMSEncrypted": Nothing, "KMSKey": Nothing, "NFSFileShareDefaults": Nothing, "ObjectACL": Nothing, "ReadOnly": Nothing, "RequesterPays": Nothing, "Squash": Nothing }



-- | <p>CreateNFSFileShareOutput</p>
newtype CreateNFSFileShareOutput = CreateNFSFileShareOutput 
  { "FileShareARN" :: Maybe (FileShareARN)
  }
derive instance newtypeCreateNFSFileShareOutput :: Newtype CreateNFSFileShareOutput _
derive instance repGenericCreateNFSFileShareOutput :: Generic CreateNFSFileShareOutput _
instance showCreateNFSFileShareOutput :: Show CreateNFSFileShareOutput where show = genericShow
instance decodeCreateNFSFileShareOutput :: Decode CreateNFSFileShareOutput where decode = genericDecode options
instance encodeCreateNFSFileShareOutput :: Encode CreateNFSFileShareOutput where encode = genericEncode options

-- | Constructs CreateNFSFileShareOutput from required parameters
newCreateNFSFileShareOutput :: CreateNFSFileShareOutput
newCreateNFSFileShareOutput  = CreateNFSFileShareOutput { "FileShareARN": Nothing }

-- | Constructs CreateNFSFileShareOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateNFSFileShareOutput' :: ( { "FileShareARN" :: Maybe (FileShareARN) } -> {"FileShareARN" :: Maybe (FileShareARN) } ) -> CreateNFSFileShareOutput
newCreateNFSFileShareOutput'  customize = (CreateNFSFileShareOutput <<< customize) { "FileShareARN": Nothing }



newtype CreateSnapshotFromVolumeRecoveryPointInput = CreateSnapshotFromVolumeRecoveryPointInput 
  { "VolumeARN" :: (VolumeARN)
  , "SnapshotDescription" :: (SnapshotDescription)
  }
derive instance newtypeCreateSnapshotFromVolumeRecoveryPointInput :: Newtype CreateSnapshotFromVolumeRecoveryPointInput _
derive instance repGenericCreateSnapshotFromVolumeRecoveryPointInput :: Generic CreateSnapshotFromVolumeRecoveryPointInput _
instance showCreateSnapshotFromVolumeRecoveryPointInput :: Show CreateSnapshotFromVolumeRecoveryPointInput where show = genericShow
instance decodeCreateSnapshotFromVolumeRecoveryPointInput :: Decode CreateSnapshotFromVolumeRecoveryPointInput where decode = genericDecode options
instance encodeCreateSnapshotFromVolumeRecoveryPointInput :: Encode CreateSnapshotFromVolumeRecoveryPointInput where encode = genericEncode options

-- | Constructs CreateSnapshotFromVolumeRecoveryPointInput from required parameters
newCreateSnapshotFromVolumeRecoveryPointInput :: SnapshotDescription -> VolumeARN -> CreateSnapshotFromVolumeRecoveryPointInput
newCreateSnapshotFromVolumeRecoveryPointInput _SnapshotDescription _VolumeARN = CreateSnapshotFromVolumeRecoveryPointInput { "SnapshotDescription": _SnapshotDescription, "VolumeARN": _VolumeARN }

-- | Constructs CreateSnapshotFromVolumeRecoveryPointInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSnapshotFromVolumeRecoveryPointInput' :: SnapshotDescription -> VolumeARN -> ( { "VolumeARN" :: (VolumeARN) , "SnapshotDescription" :: (SnapshotDescription) } -> {"VolumeARN" :: (VolumeARN) , "SnapshotDescription" :: (SnapshotDescription) } ) -> CreateSnapshotFromVolumeRecoveryPointInput
newCreateSnapshotFromVolumeRecoveryPointInput' _SnapshotDescription _VolumeARN customize = (CreateSnapshotFromVolumeRecoveryPointInput <<< customize) { "SnapshotDescription": _SnapshotDescription, "VolumeARN": _VolumeARN }



newtype CreateSnapshotFromVolumeRecoveryPointOutput = CreateSnapshotFromVolumeRecoveryPointOutput 
  { "SnapshotId" :: Maybe (SnapshotId)
  , "VolumeARN" :: Maybe (VolumeARN)
  , "VolumeRecoveryPointTime" :: Maybe (String)
  }
derive instance newtypeCreateSnapshotFromVolumeRecoveryPointOutput :: Newtype CreateSnapshotFromVolumeRecoveryPointOutput _
derive instance repGenericCreateSnapshotFromVolumeRecoveryPointOutput :: Generic CreateSnapshotFromVolumeRecoveryPointOutput _
instance showCreateSnapshotFromVolumeRecoveryPointOutput :: Show CreateSnapshotFromVolumeRecoveryPointOutput where show = genericShow
instance decodeCreateSnapshotFromVolumeRecoveryPointOutput :: Decode CreateSnapshotFromVolumeRecoveryPointOutput where decode = genericDecode options
instance encodeCreateSnapshotFromVolumeRecoveryPointOutput :: Encode CreateSnapshotFromVolumeRecoveryPointOutput where encode = genericEncode options

-- | Constructs CreateSnapshotFromVolumeRecoveryPointOutput from required parameters
newCreateSnapshotFromVolumeRecoveryPointOutput :: CreateSnapshotFromVolumeRecoveryPointOutput
newCreateSnapshotFromVolumeRecoveryPointOutput  = CreateSnapshotFromVolumeRecoveryPointOutput { "SnapshotId": Nothing, "VolumeARN": Nothing, "VolumeRecoveryPointTime": Nothing }

-- | Constructs CreateSnapshotFromVolumeRecoveryPointOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSnapshotFromVolumeRecoveryPointOutput' :: ( { "SnapshotId" :: Maybe (SnapshotId) , "VolumeARN" :: Maybe (VolumeARN) , "VolumeRecoveryPointTime" :: Maybe (String) } -> {"SnapshotId" :: Maybe (SnapshotId) , "VolumeARN" :: Maybe (VolumeARN) , "VolumeRecoveryPointTime" :: Maybe (String) } ) -> CreateSnapshotFromVolumeRecoveryPointOutput
newCreateSnapshotFromVolumeRecoveryPointOutput'  customize = (CreateSnapshotFromVolumeRecoveryPointOutput <<< customize) { "SnapshotId": Nothing, "VolumeARN": Nothing, "VolumeRecoveryPointTime": Nothing }



-- | <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>CreateSnapshotInput$SnapshotDescription</a> </p> </li> <li> <p> <a>CreateSnapshotInput$VolumeARN</a> </p> </li> </ul>
newtype CreateSnapshotInput = CreateSnapshotInput 
  { "VolumeARN" :: (VolumeARN)
  , "SnapshotDescription" :: (SnapshotDescription)
  }
derive instance newtypeCreateSnapshotInput :: Newtype CreateSnapshotInput _
derive instance repGenericCreateSnapshotInput :: Generic CreateSnapshotInput _
instance showCreateSnapshotInput :: Show CreateSnapshotInput where show = genericShow
instance decodeCreateSnapshotInput :: Decode CreateSnapshotInput where decode = genericDecode options
instance encodeCreateSnapshotInput :: Encode CreateSnapshotInput where encode = genericEncode options

-- | Constructs CreateSnapshotInput from required parameters
newCreateSnapshotInput :: SnapshotDescription -> VolumeARN -> CreateSnapshotInput
newCreateSnapshotInput _SnapshotDescription _VolumeARN = CreateSnapshotInput { "SnapshotDescription": _SnapshotDescription, "VolumeARN": _VolumeARN }

-- | Constructs CreateSnapshotInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSnapshotInput' :: SnapshotDescription -> VolumeARN -> ( { "VolumeARN" :: (VolumeARN) , "SnapshotDescription" :: (SnapshotDescription) } -> {"VolumeARN" :: (VolumeARN) , "SnapshotDescription" :: (SnapshotDescription) } ) -> CreateSnapshotInput
newCreateSnapshotInput' _SnapshotDescription _VolumeARN customize = (CreateSnapshotInput <<< customize) { "SnapshotDescription": _SnapshotDescription, "VolumeARN": _VolumeARN }



-- | <p>A JSON object containing the following fields:</p>
newtype CreateSnapshotOutput = CreateSnapshotOutput 
  { "VolumeARN" :: Maybe (VolumeARN)
  , "SnapshotId" :: Maybe (SnapshotId)
  }
derive instance newtypeCreateSnapshotOutput :: Newtype CreateSnapshotOutput _
derive instance repGenericCreateSnapshotOutput :: Generic CreateSnapshotOutput _
instance showCreateSnapshotOutput :: Show CreateSnapshotOutput where show = genericShow
instance decodeCreateSnapshotOutput :: Decode CreateSnapshotOutput where decode = genericDecode options
instance encodeCreateSnapshotOutput :: Encode CreateSnapshotOutput where encode = genericEncode options

-- | Constructs CreateSnapshotOutput from required parameters
newCreateSnapshotOutput :: CreateSnapshotOutput
newCreateSnapshotOutput  = CreateSnapshotOutput { "SnapshotId": Nothing, "VolumeARN": Nothing }

-- | Constructs CreateSnapshotOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSnapshotOutput' :: ( { "VolumeARN" :: Maybe (VolumeARN) , "SnapshotId" :: Maybe (SnapshotId) } -> {"VolumeARN" :: Maybe (VolumeARN) , "SnapshotId" :: Maybe (SnapshotId) } ) -> CreateSnapshotOutput
newCreateSnapshotOutput'  customize = (CreateSnapshotOutput <<< customize) { "SnapshotId": Nothing, "VolumeARN": Nothing }



-- | <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>CreateStorediSCSIVolumeInput$DiskId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$NetworkInterfaceId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$PreserveExistingData</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$SnapshotId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$TargetName</a> </p> </li> </ul>
newtype CreateStorediSCSIVolumeInput = CreateStorediSCSIVolumeInput 
  { "GatewayARN" :: (GatewayARN)
  , "DiskId" :: (DiskId)
  , "SnapshotId" :: Maybe (SnapshotId)
  , "PreserveExistingData" :: (Boolean)
  , "TargetName" :: (TargetName)
  , "NetworkInterfaceId" :: (NetworkInterfaceId)
  }
derive instance newtypeCreateStorediSCSIVolumeInput :: Newtype CreateStorediSCSIVolumeInput _
derive instance repGenericCreateStorediSCSIVolumeInput :: Generic CreateStorediSCSIVolumeInput _
instance showCreateStorediSCSIVolumeInput :: Show CreateStorediSCSIVolumeInput where show = genericShow
instance decodeCreateStorediSCSIVolumeInput :: Decode CreateStorediSCSIVolumeInput where decode = genericDecode options
instance encodeCreateStorediSCSIVolumeInput :: Encode CreateStorediSCSIVolumeInput where encode = genericEncode options

-- | Constructs CreateStorediSCSIVolumeInput from required parameters
newCreateStorediSCSIVolumeInput :: DiskId -> GatewayARN -> NetworkInterfaceId -> Boolean -> TargetName -> CreateStorediSCSIVolumeInput
newCreateStorediSCSIVolumeInput _DiskId _GatewayARN _NetworkInterfaceId _PreserveExistingData _TargetName = CreateStorediSCSIVolumeInput { "DiskId": _DiskId, "GatewayARN": _GatewayARN, "NetworkInterfaceId": _NetworkInterfaceId, "PreserveExistingData": _PreserveExistingData, "TargetName": _TargetName, "SnapshotId": Nothing }

-- | Constructs CreateStorediSCSIVolumeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStorediSCSIVolumeInput' :: DiskId -> GatewayARN -> NetworkInterfaceId -> Boolean -> TargetName -> ( { "GatewayARN" :: (GatewayARN) , "DiskId" :: (DiskId) , "SnapshotId" :: Maybe (SnapshotId) , "PreserveExistingData" :: (Boolean) , "TargetName" :: (TargetName) , "NetworkInterfaceId" :: (NetworkInterfaceId) } -> {"GatewayARN" :: (GatewayARN) , "DiskId" :: (DiskId) , "SnapshotId" :: Maybe (SnapshotId) , "PreserveExistingData" :: (Boolean) , "TargetName" :: (TargetName) , "NetworkInterfaceId" :: (NetworkInterfaceId) } ) -> CreateStorediSCSIVolumeInput
newCreateStorediSCSIVolumeInput' _DiskId _GatewayARN _NetworkInterfaceId _PreserveExistingData _TargetName customize = (CreateStorediSCSIVolumeInput <<< customize) { "DiskId": _DiskId, "GatewayARN": _GatewayARN, "NetworkInterfaceId": _NetworkInterfaceId, "PreserveExistingData": _PreserveExistingData, "TargetName": _TargetName, "SnapshotId": Nothing }



-- | <p>A JSON object containing the following fields:</p>
newtype CreateStorediSCSIVolumeOutput = CreateStorediSCSIVolumeOutput 
  { "VolumeARN" :: Maybe (VolumeARN)
  , "VolumeSizeInBytes" :: Maybe (Number)
  , "TargetARN" :: Maybe (TargetARN)
  }
derive instance newtypeCreateStorediSCSIVolumeOutput :: Newtype CreateStorediSCSIVolumeOutput _
derive instance repGenericCreateStorediSCSIVolumeOutput :: Generic CreateStorediSCSIVolumeOutput _
instance showCreateStorediSCSIVolumeOutput :: Show CreateStorediSCSIVolumeOutput where show = genericShow
instance decodeCreateStorediSCSIVolumeOutput :: Decode CreateStorediSCSIVolumeOutput where decode = genericDecode options
instance encodeCreateStorediSCSIVolumeOutput :: Encode CreateStorediSCSIVolumeOutput where encode = genericEncode options

-- | Constructs CreateStorediSCSIVolumeOutput from required parameters
newCreateStorediSCSIVolumeOutput :: CreateStorediSCSIVolumeOutput
newCreateStorediSCSIVolumeOutput  = CreateStorediSCSIVolumeOutput { "TargetARN": Nothing, "VolumeARN": Nothing, "VolumeSizeInBytes": Nothing }

-- | Constructs CreateStorediSCSIVolumeOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStorediSCSIVolumeOutput' :: ( { "VolumeARN" :: Maybe (VolumeARN) , "VolumeSizeInBytes" :: Maybe (Number) , "TargetARN" :: Maybe (TargetARN) } -> {"VolumeARN" :: Maybe (VolumeARN) , "VolumeSizeInBytes" :: Maybe (Number) , "TargetARN" :: Maybe (TargetARN) } ) -> CreateStorediSCSIVolumeOutput
newCreateStorediSCSIVolumeOutput'  customize = (CreateStorediSCSIVolumeOutput <<< customize) { "TargetARN": Nothing, "VolumeARN": Nothing, "VolumeSizeInBytes": Nothing }



-- | <p>CreateTapeWithBarcodeInput</p>
newtype CreateTapeWithBarcodeInput = CreateTapeWithBarcodeInput 
  { "GatewayARN" :: (GatewayARN)
  , "TapeSizeInBytes" :: (TapeSize)
  , "TapeBarcode" :: (TapeBarcode)
  }
derive instance newtypeCreateTapeWithBarcodeInput :: Newtype CreateTapeWithBarcodeInput _
derive instance repGenericCreateTapeWithBarcodeInput :: Generic CreateTapeWithBarcodeInput _
instance showCreateTapeWithBarcodeInput :: Show CreateTapeWithBarcodeInput where show = genericShow
instance decodeCreateTapeWithBarcodeInput :: Decode CreateTapeWithBarcodeInput where decode = genericDecode options
instance encodeCreateTapeWithBarcodeInput :: Encode CreateTapeWithBarcodeInput where encode = genericEncode options

-- | Constructs CreateTapeWithBarcodeInput from required parameters
newCreateTapeWithBarcodeInput :: GatewayARN -> TapeBarcode -> TapeSize -> CreateTapeWithBarcodeInput
newCreateTapeWithBarcodeInput _GatewayARN _TapeBarcode _TapeSizeInBytes = CreateTapeWithBarcodeInput { "GatewayARN": _GatewayARN, "TapeBarcode": _TapeBarcode, "TapeSizeInBytes": _TapeSizeInBytes }

-- | Constructs CreateTapeWithBarcodeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTapeWithBarcodeInput' :: GatewayARN -> TapeBarcode -> TapeSize -> ( { "GatewayARN" :: (GatewayARN) , "TapeSizeInBytes" :: (TapeSize) , "TapeBarcode" :: (TapeBarcode) } -> {"GatewayARN" :: (GatewayARN) , "TapeSizeInBytes" :: (TapeSize) , "TapeBarcode" :: (TapeBarcode) } ) -> CreateTapeWithBarcodeInput
newCreateTapeWithBarcodeInput' _GatewayARN _TapeBarcode _TapeSizeInBytes customize = (CreateTapeWithBarcodeInput <<< customize) { "GatewayARN": _GatewayARN, "TapeBarcode": _TapeBarcode, "TapeSizeInBytes": _TapeSizeInBytes }



-- | <p>CreateTapeOutput</p>
newtype CreateTapeWithBarcodeOutput = CreateTapeWithBarcodeOutput 
  { "TapeARN" :: Maybe (TapeARN)
  }
derive instance newtypeCreateTapeWithBarcodeOutput :: Newtype CreateTapeWithBarcodeOutput _
derive instance repGenericCreateTapeWithBarcodeOutput :: Generic CreateTapeWithBarcodeOutput _
instance showCreateTapeWithBarcodeOutput :: Show CreateTapeWithBarcodeOutput where show = genericShow
instance decodeCreateTapeWithBarcodeOutput :: Decode CreateTapeWithBarcodeOutput where decode = genericDecode options
instance encodeCreateTapeWithBarcodeOutput :: Encode CreateTapeWithBarcodeOutput where encode = genericEncode options

-- | Constructs CreateTapeWithBarcodeOutput from required parameters
newCreateTapeWithBarcodeOutput :: CreateTapeWithBarcodeOutput
newCreateTapeWithBarcodeOutput  = CreateTapeWithBarcodeOutput { "TapeARN": Nothing }

-- | Constructs CreateTapeWithBarcodeOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTapeWithBarcodeOutput' :: ( { "TapeARN" :: Maybe (TapeARN) } -> {"TapeARN" :: Maybe (TapeARN) } ) -> CreateTapeWithBarcodeOutput
newCreateTapeWithBarcodeOutput'  customize = (CreateTapeWithBarcodeOutput <<< customize) { "TapeARN": Nothing }



-- | <p>CreateTapesInput</p>
newtype CreateTapesInput = CreateTapesInput 
  { "GatewayARN" :: (GatewayARN)
  , "TapeSizeInBytes" :: (TapeSize)
  , "ClientToken" :: (ClientToken)
  , "NumTapesToCreate" :: (NumTapesToCreate)
  , "TapeBarcodePrefix" :: (TapeBarcodePrefix)
  }
derive instance newtypeCreateTapesInput :: Newtype CreateTapesInput _
derive instance repGenericCreateTapesInput :: Generic CreateTapesInput _
instance showCreateTapesInput :: Show CreateTapesInput where show = genericShow
instance decodeCreateTapesInput :: Decode CreateTapesInput where decode = genericDecode options
instance encodeCreateTapesInput :: Encode CreateTapesInput where encode = genericEncode options

-- | Constructs CreateTapesInput from required parameters
newCreateTapesInput :: ClientToken -> GatewayARN -> NumTapesToCreate -> TapeBarcodePrefix -> TapeSize -> CreateTapesInput
newCreateTapesInput _ClientToken _GatewayARN _NumTapesToCreate _TapeBarcodePrefix _TapeSizeInBytes = CreateTapesInput { "ClientToken": _ClientToken, "GatewayARN": _GatewayARN, "NumTapesToCreate": _NumTapesToCreate, "TapeBarcodePrefix": _TapeBarcodePrefix, "TapeSizeInBytes": _TapeSizeInBytes }

-- | Constructs CreateTapesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTapesInput' :: ClientToken -> GatewayARN -> NumTapesToCreate -> TapeBarcodePrefix -> TapeSize -> ( { "GatewayARN" :: (GatewayARN) , "TapeSizeInBytes" :: (TapeSize) , "ClientToken" :: (ClientToken) , "NumTapesToCreate" :: (NumTapesToCreate) , "TapeBarcodePrefix" :: (TapeBarcodePrefix) } -> {"GatewayARN" :: (GatewayARN) , "TapeSizeInBytes" :: (TapeSize) , "ClientToken" :: (ClientToken) , "NumTapesToCreate" :: (NumTapesToCreate) , "TapeBarcodePrefix" :: (TapeBarcodePrefix) } ) -> CreateTapesInput
newCreateTapesInput' _ClientToken _GatewayARN _NumTapesToCreate _TapeBarcodePrefix _TapeSizeInBytes customize = (CreateTapesInput <<< customize) { "ClientToken": _ClientToken, "GatewayARN": _GatewayARN, "NumTapesToCreate": _NumTapesToCreate, "TapeBarcodePrefix": _TapeBarcodePrefix, "TapeSizeInBytes": _TapeSizeInBytes }



-- | <p>CreateTapeOutput</p>
newtype CreateTapesOutput = CreateTapesOutput 
  { "TapeARNs" :: Maybe (TapeARNs)
  }
derive instance newtypeCreateTapesOutput :: Newtype CreateTapesOutput _
derive instance repGenericCreateTapesOutput :: Generic CreateTapesOutput _
instance showCreateTapesOutput :: Show CreateTapesOutput where show = genericShow
instance decodeCreateTapesOutput :: Decode CreateTapesOutput where decode = genericDecode options
instance encodeCreateTapesOutput :: Encode CreateTapesOutput where encode = genericEncode options

-- | Constructs CreateTapesOutput from required parameters
newCreateTapesOutput :: CreateTapesOutput
newCreateTapesOutput  = CreateTapesOutput { "TapeARNs": Nothing }

-- | Constructs CreateTapesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTapesOutput' :: ( { "TapeARNs" :: Maybe (TapeARNs) } -> {"TapeARNs" :: Maybe (TapeARNs) } ) -> CreateTapesOutput
newCreateTapesOutput'  customize = (CreateTapesOutput <<< customize) { "TapeARNs": Nothing }



newtype CreatedDate = CreatedDate Types.Timestamp
derive instance newtypeCreatedDate :: Newtype CreatedDate _
derive instance repGenericCreatedDate :: Generic CreatedDate _
instance showCreatedDate :: Show CreatedDate where show = genericShow
instance decodeCreatedDate :: Decode CreatedDate where decode = genericDecode options
instance encodeCreatedDate :: Encode CreatedDate where encode = genericEncode options



newtype DayOfWeek = DayOfWeek Int
derive instance newtypeDayOfWeek :: Newtype DayOfWeek _
derive instance repGenericDayOfWeek :: Generic DayOfWeek _
instance showDayOfWeek :: Show DayOfWeek where show = genericShow
instance decodeDayOfWeek :: Decode DayOfWeek where decode = genericDecode options
instance encodeDayOfWeek :: Encode DayOfWeek where encode = genericEncode options



-- | <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>DeleteBandwidthRateLimitInput$BandwidthType</a> </p> </li> </ul>
newtype DeleteBandwidthRateLimitInput = DeleteBandwidthRateLimitInput 
  { "GatewayARN" :: (GatewayARN)
  , "BandwidthType" :: (BandwidthType)
  }
derive instance newtypeDeleteBandwidthRateLimitInput :: Newtype DeleteBandwidthRateLimitInput _
derive instance repGenericDeleteBandwidthRateLimitInput :: Generic DeleteBandwidthRateLimitInput _
instance showDeleteBandwidthRateLimitInput :: Show DeleteBandwidthRateLimitInput where show = genericShow
instance decodeDeleteBandwidthRateLimitInput :: Decode DeleteBandwidthRateLimitInput where decode = genericDecode options
instance encodeDeleteBandwidthRateLimitInput :: Encode DeleteBandwidthRateLimitInput where encode = genericEncode options

-- | Constructs DeleteBandwidthRateLimitInput from required parameters
newDeleteBandwidthRateLimitInput :: BandwidthType -> GatewayARN -> DeleteBandwidthRateLimitInput
newDeleteBandwidthRateLimitInput _BandwidthType _GatewayARN = DeleteBandwidthRateLimitInput { "BandwidthType": _BandwidthType, "GatewayARN": _GatewayARN }

-- | Constructs DeleteBandwidthRateLimitInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteBandwidthRateLimitInput' :: BandwidthType -> GatewayARN -> ( { "GatewayARN" :: (GatewayARN) , "BandwidthType" :: (BandwidthType) } -> {"GatewayARN" :: (GatewayARN) , "BandwidthType" :: (BandwidthType) } ) -> DeleteBandwidthRateLimitInput
newDeleteBandwidthRateLimitInput' _BandwidthType _GatewayARN customize = (DeleteBandwidthRateLimitInput <<< customize) { "BandwidthType": _BandwidthType, "GatewayARN": _GatewayARN }



-- | <p>A JSON object containing the of the gateway whose bandwidth rate information was deleted.</p>
newtype DeleteBandwidthRateLimitOutput = DeleteBandwidthRateLimitOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeDeleteBandwidthRateLimitOutput :: Newtype DeleteBandwidthRateLimitOutput _
derive instance repGenericDeleteBandwidthRateLimitOutput :: Generic DeleteBandwidthRateLimitOutput _
instance showDeleteBandwidthRateLimitOutput :: Show DeleteBandwidthRateLimitOutput where show = genericShow
instance decodeDeleteBandwidthRateLimitOutput :: Decode DeleteBandwidthRateLimitOutput where decode = genericDecode options
instance encodeDeleteBandwidthRateLimitOutput :: Encode DeleteBandwidthRateLimitOutput where encode = genericEncode options

-- | Constructs DeleteBandwidthRateLimitOutput from required parameters
newDeleteBandwidthRateLimitOutput :: DeleteBandwidthRateLimitOutput
newDeleteBandwidthRateLimitOutput  = DeleteBandwidthRateLimitOutput { "GatewayARN": Nothing }

-- | Constructs DeleteBandwidthRateLimitOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteBandwidthRateLimitOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> DeleteBandwidthRateLimitOutput
newDeleteBandwidthRateLimitOutput'  customize = (DeleteBandwidthRateLimitOutput <<< customize) { "GatewayARN": Nothing }



-- | <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>DeleteChapCredentialsInput$InitiatorName</a> </p> </li> <li> <p> <a>DeleteChapCredentialsInput$TargetARN</a> </p> </li> </ul>
newtype DeleteChapCredentialsInput = DeleteChapCredentialsInput 
  { "TargetARN" :: (TargetARN)
  , "InitiatorName" :: (IqnName)
  }
derive instance newtypeDeleteChapCredentialsInput :: Newtype DeleteChapCredentialsInput _
derive instance repGenericDeleteChapCredentialsInput :: Generic DeleteChapCredentialsInput _
instance showDeleteChapCredentialsInput :: Show DeleteChapCredentialsInput where show = genericShow
instance decodeDeleteChapCredentialsInput :: Decode DeleteChapCredentialsInput where decode = genericDecode options
instance encodeDeleteChapCredentialsInput :: Encode DeleteChapCredentialsInput where encode = genericEncode options

-- | Constructs DeleteChapCredentialsInput from required parameters
newDeleteChapCredentialsInput :: IqnName -> TargetARN -> DeleteChapCredentialsInput
newDeleteChapCredentialsInput _InitiatorName _TargetARN = DeleteChapCredentialsInput { "InitiatorName": _InitiatorName, "TargetARN": _TargetARN }

-- | Constructs DeleteChapCredentialsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteChapCredentialsInput' :: IqnName -> TargetARN -> ( { "TargetARN" :: (TargetARN) , "InitiatorName" :: (IqnName) } -> {"TargetARN" :: (TargetARN) , "InitiatorName" :: (IqnName) } ) -> DeleteChapCredentialsInput
newDeleteChapCredentialsInput' _InitiatorName _TargetARN customize = (DeleteChapCredentialsInput <<< customize) { "InitiatorName": _InitiatorName, "TargetARN": _TargetARN }



-- | <p>A JSON object containing the following fields:</p>
newtype DeleteChapCredentialsOutput = DeleteChapCredentialsOutput 
  { "TargetARN" :: Maybe (TargetARN)
  , "InitiatorName" :: Maybe (IqnName)
  }
derive instance newtypeDeleteChapCredentialsOutput :: Newtype DeleteChapCredentialsOutput _
derive instance repGenericDeleteChapCredentialsOutput :: Generic DeleteChapCredentialsOutput _
instance showDeleteChapCredentialsOutput :: Show DeleteChapCredentialsOutput where show = genericShow
instance decodeDeleteChapCredentialsOutput :: Decode DeleteChapCredentialsOutput where decode = genericDecode options
instance encodeDeleteChapCredentialsOutput :: Encode DeleteChapCredentialsOutput where encode = genericEncode options

-- | Constructs DeleteChapCredentialsOutput from required parameters
newDeleteChapCredentialsOutput :: DeleteChapCredentialsOutput
newDeleteChapCredentialsOutput  = DeleteChapCredentialsOutput { "InitiatorName": Nothing, "TargetARN": Nothing }

-- | Constructs DeleteChapCredentialsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteChapCredentialsOutput' :: ( { "TargetARN" :: Maybe (TargetARN) , "InitiatorName" :: Maybe (IqnName) } -> {"TargetARN" :: Maybe (TargetARN) , "InitiatorName" :: Maybe (IqnName) } ) -> DeleteChapCredentialsOutput
newDeleteChapCredentialsOutput'  customize = (DeleteChapCredentialsOutput <<< customize) { "InitiatorName": Nothing, "TargetARN": Nothing }



-- | <p>DeleteFileShareInput</p>
newtype DeleteFileShareInput = DeleteFileShareInput 
  { "FileShareARN" :: (FileShareARN)
  , "ForceDelete" :: Maybe (Boolean)
  }
derive instance newtypeDeleteFileShareInput :: Newtype DeleteFileShareInput _
derive instance repGenericDeleteFileShareInput :: Generic DeleteFileShareInput _
instance showDeleteFileShareInput :: Show DeleteFileShareInput where show = genericShow
instance decodeDeleteFileShareInput :: Decode DeleteFileShareInput where decode = genericDecode options
instance encodeDeleteFileShareInput :: Encode DeleteFileShareInput where encode = genericEncode options

-- | Constructs DeleteFileShareInput from required parameters
newDeleteFileShareInput :: FileShareARN -> DeleteFileShareInput
newDeleteFileShareInput _FileShareARN = DeleteFileShareInput { "FileShareARN": _FileShareARN, "ForceDelete": Nothing }

-- | Constructs DeleteFileShareInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteFileShareInput' :: FileShareARN -> ( { "FileShareARN" :: (FileShareARN) , "ForceDelete" :: Maybe (Boolean) } -> {"FileShareARN" :: (FileShareARN) , "ForceDelete" :: Maybe (Boolean) } ) -> DeleteFileShareInput
newDeleteFileShareInput' _FileShareARN customize = (DeleteFileShareInput <<< customize) { "FileShareARN": _FileShareARN, "ForceDelete": Nothing }



-- | <p>DeleteFileShareOutput</p>
newtype DeleteFileShareOutput = DeleteFileShareOutput 
  { "FileShareARN" :: Maybe (FileShareARN)
  }
derive instance newtypeDeleteFileShareOutput :: Newtype DeleteFileShareOutput _
derive instance repGenericDeleteFileShareOutput :: Generic DeleteFileShareOutput _
instance showDeleteFileShareOutput :: Show DeleteFileShareOutput where show = genericShow
instance decodeDeleteFileShareOutput :: Decode DeleteFileShareOutput where decode = genericDecode options
instance encodeDeleteFileShareOutput :: Encode DeleteFileShareOutput where encode = genericEncode options

-- | Constructs DeleteFileShareOutput from required parameters
newDeleteFileShareOutput :: DeleteFileShareOutput
newDeleteFileShareOutput  = DeleteFileShareOutput { "FileShareARN": Nothing }

-- | Constructs DeleteFileShareOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteFileShareOutput' :: ( { "FileShareARN" :: Maybe (FileShareARN) } -> {"FileShareARN" :: Maybe (FileShareARN) } ) -> DeleteFileShareOutput
newDeleteFileShareOutput'  customize = (DeleteFileShareOutput <<< customize) { "FileShareARN": Nothing }



-- | <p>A JSON object containing the ID of the gateway to delete.</p>
newtype DeleteGatewayInput = DeleteGatewayInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeDeleteGatewayInput :: Newtype DeleteGatewayInput _
derive instance repGenericDeleteGatewayInput :: Generic DeleteGatewayInput _
instance showDeleteGatewayInput :: Show DeleteGatewayInput where show = genericShow
instance decodeDeleteGatewayInput :: Decode DeleteGatewayInput where decode = genericDecode options
instance encodeDeleteGatewayInput :: Encode DeleteGatewayInput where encode = genericEncode options

-- | Constructs DeleteGatewayInput from required parameters
newDeleteGatewayInput :: GatewayARN -> DeleteGatewayInput
newDeleteGatewayInput _GatewayARN = DeleteGatewayInput { "GatewayARN": _GatewayARN }

-- | Constructs DeleteGatewayInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGatewayInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> DeleteGatewayInput
newDeleteGatewayInput' _GatewayARN customize = (DeleteGatewayInput <<< customize) { "GatewayARN": _GatewayARN }



-- | <p>A JSON object containing the ID of the deleted gateway.</p>
newtype DeleteGatewayOutput = DeleteGatewayOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeDeleteGatewayOutput :: Newtype DeleteGatewayOutput _
derive instance repGenericDeleteGatewayOutput :: Generic DeleteGatewayOutput _
instance showDeleteGatewayOutput :: Show DeleteGatewayOutput where show = genericShow
instance decodeDeleteGatewayOutput :: Decode DeleteGatewayOutput where decode = genericDecode options
instance encodeDeleteGatewayOutput :: Encode DeleteGatewayOutput where encode = genericEncode options

-- | Constructs DeleteGatewayOutput from required parameters
newDeleteGatewayOutput :: DeleteGatewayOutput
newDeleteGatewayOutput  = DeleteGatewayOutput { "GatewayARN": Nothing }

-- | Constructs DeleteGatewayOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGatewayOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> DeleteGatewayOutput
newDeleteGatewayOutput'  customize = (DeleteGatewayOutput <<< customize) { "GatewayARN": Nothing }



newtype DeleteSnapshotScheduleInput = DeleteSnapshotScheduleInput 
  { "VolumeARN" :: (VolumeARN)
  }
derive instance newtypeDeleteSnapshotScheduleInput :: Newtype DeleteSnapshotScheduleInput _
derive instance repGenericDeleteSnapshotScheduleInput :: Generic DeleteSnapshotScheduleInput _
instance showDeleteSnapshotScheduleInput :: Show DeleteSnapshotScheduleInput where show = genericShow
instance decodeDeleteSnapshotScheduleInput :: Decode DeleteSnapshotScheduleInput where decode = genericDecode options
instance encodeDeleteSnapshotScheduleInput :: Encode DeleteSnapshotScheduleInput where encode = genericEncode options

-- | Constructs DeleteSnapshotScheduleInput from required parameters
newDeleteSnapshotScheduleInput :: VolumeARN -> DeleteSnapshotScheduleInput
newDeleteSnapshotScheduleInput _VolumeARN = DeleteSnapshotScheduleInput { "VolumeARN": _VolumeARN }

-- | Constructs DeleteSnapshotScheduleInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSnapshotScheduleInput' :: VolumeARN -> ( { "VolumeARN" :: (VolumeARN) } -> {"VolumeARN" :: (VolumeARN) } ) -> DeleteSnapshotScheduleInput
newDeleteSnapshotScheduleInput' _VolumeARN customize = (DeleteSnapshotScheduleInput <<< customize) { "VolumeARN": _VolumeARN }



newtype DeleteSnapshotScheduleOutput = DeleteSnapshotScheduleOutput 
  { "VolumeARN" :: Maybe (VolumeARN)
  }
derive instance newtypeDeleteSnapshotScheduleOutput :: Newtype DeleteSnapshotScheduleOutput _
derive instance repGenericDeleteSnapshotScheduleOutput :: Generic DeleteSnapshotScheduleOutput _
instance showDeleteSnapshotScheduleOutput :: Show DeleteSnapshotScheduleOutput where show = genericShow
instance decodeDeleteSnapshotScheduleOutput :: Decode DeleteSnapshotScheduleOutput where decode = genericDecode options
instance encodeDeleteSnapshotScheduleOutput :: Encode DeleteSnapshotScheduleOutput where encode = genericEncode options

-- | Constructs DeleteSnapshotScheduleOutput from required parameters
newDeleteSnapshotScheduleOutput :: DeleteSnapshotScheduleOutput
newDeleteSnapshotScheduleOutput  = DeleteSnapshotScheduleOutput { "VolumeARN": Nothing }

-- | Constructs DeleteSnapshotScheduleOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSnapshotScheduleOutput' :: ( { "VolumeARN" :: Maybe (VolumeARN) } -> {"VolumeARN" :: Maybe (VolumeARN) } ) -> DeleteSnapshotScheduleOutput
newDeleteSnapshotScheduleOutput'  customize = (DeleteSnapshotScheduleOutput <<< customize) { "VolumeARN": Nothing }



-- | <p>DeleteTapeArchiveInput</p>
newtype DeleteTapeArchiveInput = DeleteTapeArchiveInput 
  { "TapeARN" :: (TapeARN)
  }
derive instance newtypeDeleteTapeArchiveInput :: Newtype DeleteTapeArchiveInput _
derive instance repGenericDeleteTapeArchiveInput :: Generic DeleteTapeArchiveInput _
instance showDeleteTapeArchiveInput :: Show DeleteTapeArchiveInput where show = genericShow
instance decodeDeleteTapeArchiveInput :: Decode DeleteTapeArchiveInput where decode = genericDecode options
instance encodeDeleteTapeArchiveInput :: Encode DeleteTapeArchiveInput where encode = genericEncode options

-- | Constructs DeleteTapeArchiveInput from required parameters
newDeleteTapeArchiveInput :: TapeARN -> DeleteTapeArchiveInput
newDeleteTapeArchiveInput _TapeARN = DeleteTapeArchiveInput { "TapeARN": _TapeARN }

-- | Constructs DeleteTapeArchiveInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTapeArchiveInput' :: TapeARN -> ( { "TapeARN" :: (TapeARN) } -> {"TapeARN" :: (TapeARN) } ) -> DeleteTapeArchiveInput
newDeleteTapeArchiveInput' _TapeARN customize = (DeleteTapeArchiveInput <<< customize) { "TapeARN": _TapeARN }



-- | <p>DeleteTapeArchiveOutput</p>
newtype DeleteTapeArchiveOutput = DeleteTapeArchiveOutput 
  { "TapeARN" :: Maybe (TapeARN)
  }
derive instance newtypeDeleteTapeArchiveOutput :: Newtype DeleteTapeArchiveOutput _
derive instance repGenericDeleteTapeArchiveOutput :: Generic DeleteTapeArchiveOutput _
instance showDeleteTapeArchiveOutput :: Show DeleteTapeArchiveOutput where show = genericShow
instance decodeDeleteTapeArchiveOutput :: Decode DeleteTapeArchiveOutput where decode = genericDecode options
instance encodeDeleteTapeArchiveOutput :: Encode DeleteTapeArchiveOutput where encode = genericEncode options

-- | Constructs DeleteTapeArchiveOutput from required parameters
newDeleteTapeArchiveOutput :: DeleteTapeArchiveOutput
newDeleteTapeArchiveOutput  = DeleteTapeArchiveOutput { "TapeARN": Nothing }

-- | Constructs DeleteTapeArchiveOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTapeArchiveOutput' :: ( { "TapeARN" :: Maybe (TapeARN) } -> {"TapeARN" :: Maybe (TapeARN) } ) -> DeleteTapeArchiveOutput
newDeleteTapeArchiveOutput'  customize = (DeleteTapeArchiveOutput <<< customize) { "TapeARN": Nothing }



-- | <p>DeleteTapeInput</p>
newtype DeleteTapeInput = DeleteTapeInput 
  { "GatewayARN" :: (GatewayARN)
  , "TapeARN" :: (TapeARN)
  }
derive instance newtypeDeleteTapeInput :: Newtype DeleteTapeInput _
derive instance repGenericDeleteTapeInput :: Generic DeleteTapeInput _
instance showDeleteTapeInput :: Show DeleteTapeInput where show = genericShow
instance decodeDeleteTapeInput :: Decode DeleteTapeInput where decode = genericDecode options
instance encodeDeleteTapeInput :: Encode DeleteTapeInput where encode = genericEncode options

-- | Constructs DeleteTapeInput from required parameters
newDeleteTapeInput :: GatewayARN -> TapeARN -> DeleteTapeInput
newDeleteTapeInput _GatewayARN _TapeARN = DeleteTapeInput { "GatewayARN": _GatewayARN, "TapeARN": _TapeARN }

-- | Constructs DeleteTapeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTapeInput' :: GatewayARN -> TapeARN -> ( { "GatewayARN" :: (GatewayARN) , "TapeARN" :: (TapeARN) } -> {"GatewayARN" :: (GatewayARN) , "TapeARN" :: (TapeARN) } ) -> DeleteTapeInput
newDeleteTapeInput' _GatewayARN _TapeARN customize = (DeleteTapeInput <<< customize) { "GatewayARN": _GatewayARN, "TapeARN": _TapeARN }



-- | <p>DeleteTapeOutput</p>
newtype DeleteTapeOutput = DeleteTapeOutput 
  { "TapeARN" :: Maybe (TapeARN)
  }
derive instance newtypeDeleteTapeOutput :: Newtype DeleteTapeOutput _
derive instance repGenericDeleteTapeOutput :: Generic DeleteTapeOutput _
instance showDeleteTapeOutput :: Show DeleteTapeOutput where show = genericShow
instance decodeDeleteTapeOutput :: Decode DeleteTapeOutput where decode = genericDecode options
instance encodeDeleteTapeOutput :: Encode DeleteTapeOutput where encode = genericEncode options

-- | Constructs DeleteTapeOutput from required parameters
newDeleteTapeOutput :: DeleteTapeOutput
newDeleteTapeOutput  = DeleteTapeOutput { "TapeARN": Nothing }

-- | Constructs DeleteTapeOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTapeOutput' :: ( { "TapeARN" :: Maybe (TapeARN) } -> {"TapeARN" :: Maybe (TapeARN) } ) -> DeleteTapeOutput
newDeleteTapeOutput'  customize = (DeleteTapeOutput <<< customize) { "TapeARN": Nothing }



-- | <p>A JSON object containing the <a>DeleteVolumeInput$VolumeARN</a> to delete.</p>
newtype DeleteVolumeInput = DeleteVolumeInput 
  { "VolumeARN" :: (VolumeARN)
  }
derive instance newtypeDeleteVolumeInput :: Newtype DeleteVolumeInput _
derive instance repGenericDeleteVolumeInput :: Generic DeleteVolumeInput _
instance showDeleteVolumeInput :: Show DeleteVolumeInput where show = genericShow
instance decodeDeleteVolumeInput :: Decode DeleteVolumeInput where decode = genericDecode options
instance encodeDeleteVolumeInput :: Encode DeleteVolumeInput where encode = genericEncode options

-- | Constructs DeleteVolumeInput from required parameters
newDeleteVolumeInput :: VolumeARN -> DeleteVolumeInput
newDeleteVolumeInput _VolumeARN = DeleteVolumeInput { "VolumeARN": _VolumeARN }

-- | Constructs DeleteVolumeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteVolumeInput' :: VolumeARN -> ( { "VolumeARN" :: (VolumeARN) } -> {"VolumeARN" :: (VolumeARN) } ) -> DeleteVolumeInput
newDeleteVolumeInput' _VolumeARN customize = (DeleteVolumeInput <<< customize) { "VolumeARN": _VolumeARN }



-- | <p>A JSON object containing the of the storage volume that was deleted</p>
newtype DeleteVolumeOutput = DeleteVolumeOutput 
  { "VolumeARN" :: Maybe (VolumeARN)
  }
derive instance newtypeDeleteVolumeOutput :: Newtype DeleteVolumeOutput _
derive instance repGenericDeleteVolumeOutput :: Generic DeleteVolumeOutput _
instance showDeleteVolumeOutput :: Show DeleteVolumeOutput where show = genericShow
instance decodeDeleteVolumeOutput :: Decode DeleteVolumeOutput where decode = genericDecode options
instance encodeDeleteVolumeOutput :: Encode DeleteVolumeOutput where encode = genericEncode options

-- | Constructs DeleteVolumeOutput from required parameters
newDeleteVolumeOutput :: DeleteVolumeOutput
newDeleteVolumeOutput  = DeleteVolumeOutput { "VolumeARN": Nothing }

-- | Constructs DeleteVolumeOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteVolumeOutput' :: ( { "VolumeARN" :: Maybe (VolumeARN) } -> {"VolumeARN" :: Maybe (VolumeARN) } ) -> DeleteVolumeOutput
newDeleteVolumeOutput'  customize = (DeleteVolumeOutput <<< customize) { "VolumeARN": Nothing }



-- | <p>A JSON object containing the of the gateway.</p>
newtype DescribeBandwidthRateLimitInput = DescribeBandwidthRateLimitInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeDescribeBandwidthRateLimitInput :: Newtype DescribeBandwidthRateLimitInput _
derive instance repGenericDescribeBandwidthRateLimitInput :: Generic DescribeBandwidthRateLimitInput _
instance showDescribeBandwidthRateLimitInput :: Show DescribeBandwidthRateLimitInput where show = genericShow
instance decodeDescribeBandwidthRateLimitInput :: Decode DescribeBandwidthRateLimitInput where decode = genericDecode options
instance encodeDescribeBandwidthRateLimitInput :: Encode DescribeBandwidthRateLimitInput where encode = genericEncode options

-- | Constructs DescribeBandwidthRateLimitInput from required parameters
newDescribeBandwidthRateLimitInput :: GatewayARN -> DescribeBandwidthRateLimitInput
newDescribeBandwidthRateLimitInput _GatewayARN = DescribeBandwidthRateLimitInput { "GatewayARN": _GatewayARN }

-- | Constructs DescribeBandwidthRateLimitInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBandwidthRateLimitInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> DescribeBandwidthRateLimitInput
newDescribeBandwidthRateLimitInput' _GatewayARN customize = (DescribeBandwidthRateLimitInput <<< customize) { "GatewayARN": _GatewayARN }



-- | <p>A JSON object containing the following fields:</p>
newtype DescribeBandwidthRateLimitOutput = DescribeBandwidthRateLimitOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "AverageUploadRateLimitInBitsPerSec" :: Maybe (BandwidthUploadRateLimit)
  , "AverageDownloadRateLimitInBitsPerSec" :: Maybe (BandwidthDownloadRateLimit)
  }
derive instance newtypeDescribeBandwidthRateLimitOutput :: Newtype DescribeBandwidthRateLimitOutput _
derive instance repGenericDescribeBandwidthRateLimitOutput :: Generic DescribeBandwidthRateLimitOutput _
instance showDescribeBandwidthRateLimitOutput :: Show DescribeBandwidthRateLimitOutput where show = genericShow
instance decodeDescribeBandwidthRateLimitOutput :: Decode DescribeBandwidthRateLimitOutput where decode = genericDecode options
instance encodeDescribeBandwidthRateLimitOutput :: Encode DescribeBandwidthRateLimitOutput where encode = genericEncode options

-- | Constructs DescribeBandwidthRateLimitOutput from required parameters
newDescribeBandwidthRateLimitOutput :: DescribeBandwidthRateLimitOutput
newDescribeBandwidthRateLimitOutput  = DescribeBandwidthRateLimitOutput { "AverageDownloadRateLimitInBitsPerSec": Nothing, "AverageUploadRateLimitInBitsPerSec": Nothing, "GatewayARN": Nothing }

-- | Constructs DescribeBandwidthRateLimitOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBandwidthRateLimitOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "AverageUploadRateLimitInBitsPerSec" :: Maybe (BandwidthUploadRateLimit) , "AverageDownloadRateLimitInBitsPerSec" :: Maybe (BandwidthDownloadRateLimit) } -> {"GatewayARN" :: Maybe (GatewayARN) , "AverageUploadRateLimitInBitsPerSec" :: Maybe (BandwidthUploadRateLimit) , "AverageDownloadRateLimitInBitsPerSec" :: Maybe (BandwidthDownloadRateLimit) } ) -> DescribeBandwidthRateLimitOutput
newDescribeBandwidthRateLimitOutput'  customize = (DescribeBandwidthRateLimitOutput <<< customize) { "AverageDownloadRateLimitInBitsPerSec": Nothing, "AverageUploadRateLimitInBitsPerSec": Nothing, "GatewayARN": Nothing }



newtype DescribeCacheInput = DescribeCacheInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeDescribeCacheInput :: Newtype DescribeCacheInput _
derive instance repGenericDescribeCacheInput :: Generic DescribeCacheInput _
instance showDescribeCacheInput :: Show DescribeCacheInput where show = genericShow
instance decodeDescribeCacheInput :: Decode DescribeCacheInput where decode = genericDecode options
instance encodeDescribeCacheInput :: Encode DescribeCacheInput where encode = genericEncode options

-- | Constructs DescribeCacheInput from required parameters
newDescribeCacheInput :: GatewayARN -> DescribeCacheInput
newDescribeCacheInput _GatewayARN = DescribeCacheInput { "GatewayARN": _GatewayARN }

-- | Constructs DescribeCacheInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCacheInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> DescribeCacheInput
newDescribeCacheInput' _GatewayARN customize = (DescribeCacheInput <<< customize) { "GatewayARN": _GatewayARN }



newtype DescribeCacheOutput = DescribeCacheOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "DiskIds" :: Maybe (DiskIds)
  , "CacheAllocatedInBytes" :: Maybe (Number)
  , "CacheUsedPercentage" :: Maybe (Number)
  , "CacheDirtyPercentage" :: Maybe (Number)
  , "CacheHitPercentage" :: Maybe (Number)
  , "CacheMissPercentage" :: Maybe (Number)
  }
derive instance newtypeDescribeCacheOutput :: Newtype DescribeCacheOutput _
derive instance repGenericDescribeCacheOutput :: Generic DescribeCacheOutput _
instance showDescribeCacheOutput :: Show DescribeCacheOutput where show = genericShow
instance decodeDescribeCacheOutput :: Decode DescribeCacheOutput where decode = genericDecode options
instance encodeDescribeCacheOutput :: Encode DescribeCacheOutput where encode = genericEncode options

-- | Constructs DescribeCacheOutput from required parameters
newDescribeCacheOutput :: DescribeCacheOutput
newDescribeCacheOutput  = DescribeCacheOutput { "CacheAllocatedInBytes": Nothing, "CacheDirtyPercentage": Nothing, "CacheHitPercentage": Nothing, "CacheMissPercentage": Nothing, "CacheUsedPercentage": Nothing, "DiskIds": Nothing, "GatewayARN": Nothing }

-- | Constructs DescribeCacheOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCacheOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "DiskIds" :: Maybe (DiskIds) , "CacheAllocatedInBytes" :: Maybe (Number) , "CacheUsedPercentage" :: Maybe (Number) , "CacheDirtyPercentage" :: Maybe (Number) , "CacheHitPercentage" :: Maybe (Number) , "CacheMissPercentage" :: Maybe (Number) } -> {"GatewayARN" :: Maybe (GatewayARN) , "DiskIds" :: Maybe (DiskIds) , "CacheAllocatedInBytes" :: Maybe (Number) , "CacheUsedPercentage" :: Maybe (Number) , "CacheDirtyPercentage" :: Maybe (Number) , "CacheHitPercentage" :: Maybe (Number) , "CacheMissPercentage" :: Maybe (Number) } ) -> DescribeCacheOutput
newDescribeCacheOutput'  customize = (DescribeCacheOutput <<< customize) { "CacheAllocatedInBytes": Nothing, "CacheDirtyPercentage": Nothing, "CacheHitPercentage": Nothing, "CacheMissPercentage": Nothing, "CacheUsedPercentage": Nothing, "DiskIds": Nothing, "GatewayARN": Nothing }



newtype DescribeCachediSCSIVolumesInput = DescribeCachediSCSIVolumesInput 
  { "VolumeARNs" :: (VolumeARNs)
  }
derive instance newtypeDescribeCachediSCSIVolumesInput :: Newtype DescribeCachediSCSIVolumesInput _
derive instance repGenericDescribeCachediSCSIVolumesInput :: Generic DescribeCachediSCSIVolumesInput _
instance showDescribeCachediSCSIVolumesInput :: Show DescribeCachediSCSIVolumesInput where show = genericShow
instance decodeDescribeCachediSCSIVolumesInput :: Decode DescribeCachediSCSIVolumesInput where decode = genericDecode options
instance encodeDescribeCachediSCSIVolumesInput :: Encode DescribeCachediSCSIVolumesInput where encode = genericEncode options

-- | Constructs DescribeCachediSCSIVolumesInput from required parameters
newDescribeCachediSCSIVolumesInput :: VolumeARNs -> DescribeCachediSCSIVolumesInput
newDescribeCachediSCSIVolumesInput _VolumeARNs = DescribeCachediSCSIVolumesInput { "VolumeARNs": _VolumeARNs }

-- | Constructs DescribeCachediSCSIVolumesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCachediSCSIVolumesInput' :: VolumeARNs -> ( { "VolumeARNs" :: (VolumeARNs) } -> {"VolumeARNs" :: (VolumeARNs) } ) -> DescribeCachediSCSIVolumesInput
newDescribeCachediSCSIVolumesInput' _VolumeARNs customize = (DescribeCachediSCSIVolumesInput <<< customize) { "VolumeARNs": _VolumeARNs }



-- | <p>A JSON object containing the following fields:</p>
newtype DescribeCachediSCSIVolumesOutput = DescribeCachediSCSIVolumesOutput 
  { "CachediSCSIVolumes" :: Maybe (CachediSCSIVolumes)
  }
derive instance newtypeDescribeCachediSCSIVolumesOutput :: Newtype DescribeCachediSCSIVolumesOutput _
derive instance repGenericDescribeCachediSCSIVolumesOutput :: Generic DescribeCachediSCSIVolumesOutput _
instance showDescribeCachediSCSIVolumesOutput :: Show DescribeCachediSCSIVolumesOutput where show = genericShow
instance decodeDescribeCachediSCSIVolumesOutput :: Decode DescribeCachediSCSIVolumesOutput where decode = genericDecode options
instance encodeDescribeCachediSCSIVolumesOutput :: Encode DescribeCachediSCSIVolumesOutput where encode = genericEncode options

-- | Constructs DescribeCachediSCSIVolumesOutput from required parameters
newDescribeCachediSCSIVolumesOutput :: DescribeCachediSCSIVolumesOutput
newDescribeCachediSCSIVolumesOutput  = DescribeCachediSCSIVolumesOutput { "CachediSCSIVolumes": Nothing }

-- | Constructs DescribeCachediSCSIVolumesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCachediSCSIVolumesOutput' :: ( { "CachediSCSIVolumes" :: Maybe (CachediSCSIVolumes) } -> {"CachediSCSIVolumes" :: Maybe (CachediSCSIVolumes) } ) -> DescribeCachediSCSIVolumesOutput
newDescribeCachediSCSIVolumesOutput'  customize = (DescribeCachediSCSIVolumesOutput <<< customize) { "CachediSCSIVolumes": Nothing }



-- | <p>A JSON object containing the Amazon Resource Name (ARN) of the iSCSI volume target.</p>
newtype DescribeChapCredentialsInput = DescribeChapCredentialsInput 
  { "TargetARN" :: (TargetARN)
  }
derive instance newtypeDescribeChapCredentialsInput :: Newtype DescribeChapCredentialsInput _
derive instance repGenericDescribeChapCredentialsInput :: Generic DescribeChapCredentialsInput _
instance showDescribeChapCredentialsInput :: Show DescribeChapCredentialsInput where show = genericShow
instance decodeDescribeChapCredentialsInput :: Decode DescribeChapCredentialsInput where decode = genericDecode options
instance encodeDescribeChapCredentialsInput :: Encode DescribeChapCredentialsInput where encode = genericEncode options

-- | Constructs DescribeChapCredentialsInput from required parameters
newDescribeChapCredentialsInput :: TargetARN -> DescribeChapCredentialsInput
newDescribeChapCredentialsInput _TargetARN = DescribeChapCredentialsInput { "TargetARN": _TargetARN }

-- | Constructs DescribeChapCredentialsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeChapCredentialsInput' :: TargetARN -> ( { "TargetARN" :: (TargetARN) } -> {"TargetARN" :: (TargetARN) } ) -> DescribeChapCredentialsInput
newDescribeChapCredentialsInput' _TargetARN customize = (DescribeChapCredentialsInput <<< customize) { "TargetARN": _TargetARN }



-- | <p>A JSON object containing a .</p>
newtype DescribeChapCredentialsOutput = DescribeChapCredentialsOutput 
  { "ChapCredentials" :: Maybe (ChapCredentials)
  }
derive instance newtypeDescribeChapCredentialsOutput :: Newtype DescribeChapCredentialsOutput _
derive instance repGenericDescribeChapCredentialsOutput :: Generic DescribeChapCredentialsOutput _
instance showDescribeChapCredentialsOutput :: Show DescribeChapCredentialsOutput where show = genericShow
instance decodeDescribeChapCredentialsOutput :: Decode DescribeChapCredentialsOutput where decode = genericDecode options
instance encodeDescribeChapCredentialsOutput :: Encode DescribeChapCredentialsOutput where encode = genericEncode options

-- | Constructs DescribeChapCredentialsOutput from required parameters
newDescribeChapCredentialsOutput :: DescribeChapCredentialsOutput
newDescribeChapCredentialsOutput  = DescribeChapCredentialsOutput { "ChapCredentials": Nothing }

-- | Constructs DescribeChapCredentialsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeChapCredentialsOutput' :: ( { "ChapCredentials" :: Maybe (ChapCredentials) } -> {"ChapCredentials" :: Maybe (ChapCredentials) } ) -> DescribeChapCredentialsOutput
newDescribeChapCredentialsOutput'  customize = (DescribeChapCredentialsOutput <<< customize) { "ChapCredentials": Nothing }



-- | <p>A JSON object containing the ID of the gateway.</p>
newtype DescribeGatewayInformationInput = DescribeGatewayInformationInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeDescribeGatewayInformationInput :: Newtype DescribeGatewayInformationInput _
derive instance repGenericDescribeGatewayInformationInput :: Generic DescribeGatewayInformationInput _
instance showDescribeGatewayInformationInput :: Show DescribeGatewayInformationInput where show = genericShow
instance decodeDescribeGatewayInformationInput :: Decode DescribeGatewayInformationInput where decode = genericDecode options
instance encodeDescribeGatewayInformationInput :: Encode DescribeGatewayInformationInput where encode = genericEncode options

-- | Constructs DescribeGatewayInformationInput from required parameters
newDescribeGatewayInformationInput :: GatewayARN -> DescribeGatewayInformationInput
newDescribeGatewayInformationInput _GatewayARN = DescribeGatewayInformationInput { "GatewayARN": _GatewayARN }

-- | Constructs DescribeGatewayInformationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeGatewayInformationInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> DescribeGatewayInformationInput
newDescribeGatewayInformationInput' _GatewayARN customize = (DescribeGatewayInformationInput <<< customize) { "GatewayARN": _GatewayARN }



-- | <p>A JSON object containing the following fields:</p>
newtype DescribeGatewayInformationOutput = DescribeGatewayInformationOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "GatewayId" :: Maybe (GatewayId)
  , "GatewayName" :: Maybe (String)
  , "GatewayTimezone" :: Maybe (GatewayTimezone)
  , "GatewayState" :: Maybe (GatewayState)
  , "GatewayNetworkInterfaces" :: Maybe (GatewayNetworkInterfaces)
  , "GatewayType" :: Maybe (GatewayType)
  , "NextUpdateAvailabilityDate" :: Maybe (NextUpdateAvailabilityDate)
  , "LastSoftwareUpdate" :: Maybe (LastSoftwareUpdate)
  }
derive instance newtypeDescribeGatewayInformationOutput :: Newtype DescribeGatewayInformationOutput _
derive instance repGenericDescribeGatewayInformationOutput :: Generic DescribeGatewayInformationOutput _
instance showDescribeGatewayInformationOutput :: Show DescribeGatewayInformationOutput where show = genericShow
instance decodeDescribeGatewayInformationOutput :: Decode DescribeGatewayInformationOutput where decode = genericDecode options
instance encodeDescribeGatewayInformationOutput :: Encode DescribeGatewayInformationOutput where encode = genericEncode options

-- | Constructs DescribeGatewayInformationOutput from required parameters
newDescribeGatewayInformationOutput :: DescribeGatewayInformationOutput
newDescribeGatewayInformationOutput  = DescribeGatewayInformationOutput { "GatewayARN": Nothing, "GatewayId": Nothing, "GatewayName": Nothing, "GatewayNetworkInterfaces": Nothing, "GatewayState": Nothing, "GatewayTimezone": Nothing, "GatewayType": Nothing, "LastSoftwareUpdate": Nothing, "NextUpdateAvailabilityDate": Nothing }

-- | Constructs DescribeGatewayInformationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeGatewayInformationOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "GatewayId" :: Maybe (GatewayId) , "GatewayName" :: Maybe (String) , "GatewayTimezone" :: Maybe (GatewayTimezone) , "GatewayState" :: Maybe (GatewayState) , "GatewayNetworkInterfaces" :: Maybe (GatewayNetworkInterfaces) , "GatewayType" :: Maybe (GatewayType) , "NextUpdateAvailabilityDate" :: Maybe (NextUpdateAvailabilityDate) , "LastSoftwareUpdate" :: Maybe (LastSoftwareUpdate) } -> {"GatewayARN" :: Maybe (GatewayARN) , "GatewayId" :: Maybe (GatewayId) , "GatewayName" :: Maybe (String) , "GatewayTimezone" :: Maybe (GatewayTimezone) , "GatewayState" :: Maybe (GatewayState) , "GatewayNetworkInterfaces" :: Maybe (GatewayNetworkInterfaces) , "GatewayType" :: Maybe (GatewayType) , "NextUpdateAvailabilityDate" :: Maybe (NextUpdateAvailabilityDate) , "LastSoftwareUpdate" :: Maybe (LastSoftwareUpdate) } ) -> DescribeGatewayInformationOutput
newDescribeGatewayInformationOutput'  customize = (DescribeGatewayInformationOutput <<< customize) { "GatewayARN": Nothing, "GatewayId": Nothing, "GatewayName": Nothing, "GatewayNetworkInterfaces": Nothing, "GatewayState": Nothing, "GatewayTimezone": Nothing, "GatewayType": Nothing, "LastSoftwareUpdate": Nothing, "NextUpdateAvailabilityDate": Nothing }



-- | <p>A JSON object containing the of the gateway.</p>
newtype DescribeMaintenanceStartTimeInput = DescribeMaintenanceStartTimeInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeDescribeMaintenanceStartTimeInput :: Newtype DescribeMaintenanceStartTimeInput _
derive instance repGenericDescribeMaintenanceStartTimeInput :: Generic DescribeMaintenanceStartTimeInput _
instance showDescribeMaintenanceStartTimeInput :: Show DescribeMaintenanceStartTimeInput where show = genericShow
instance decodeDescribeMaintenanceStartTimeInput :: Decode DescribeMaintenanceStartTimeInput where decode = genericDecode options
instance encodeDescribeMaintenanceStartTimeInput :: Encode DescribeMaintenanceStartTimeInput where encode = genericEncode options

-- | Constructs DescribeMaintenanceStartTimeInput from required parameters
newDescribeMaintenanceStartTimeInput :: GatewayARN -> DescribeMaintenanceStartTimeInput
newDescribeMaintenanceStartTimeInput _GatewayARN = DescribeMaintenanceStartTimeInput { "GatewayARN": _GatewayARN }

-- | Constructs DescribeMaintenanceStartTimeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMaintenanceStartTimeInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> DescribeMaintenanceStartTimeInput
newDescribeMaintenanceStartTimeInput' _GatewayARN customize = (DescribeMaintenanceStartTimeInput <<< customize) { "GatewayARN": _GatewayARN }



-- | <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>DescribeMaintenanceStartTimeOutput$DayOfWeek</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$HourOfDay</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$MinuteOfHour</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$Timezone</a> </p> </li> </ul>
newtype DescribeMaintenanceStartTimeOutput = DescribeMaintenanceStartTimeOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "HourOfDay" :: Maybe (HourOfDay)
  , "MinuteOfHour" :: Maybe (MinuteOfHour)
  , "DayOfWeek" :: Maybe (DayOfWeek)
  , "Timezone" :: Maybe (GatewayTimezone)
  }
derive instance newtypeDescribeMaintenanceStartTimeOutput :: Newtype DescribeMaintenanceStartTimeOutput _
derive instance repGenericDescribeMaintenanceStartTimeOutput :: Generic DescribeMaintenanceStartTimeOutput _
instance showDescribeMaintenanceStartTimeOutput :: Show DescribeMaintenanceStartTimeOutput where show = genericShow
instance decodeDescribeMaintenanceStartTimeOutput :: Decode DescribeMaintenanceStartTimeOutput where decode = genericDecode options
instance encodeDescribeMaintenanceStartTimeOutput :: Encode DescribeMaintenanceStartTimeOutput where encode = genericEncode options

-- | Constructs DescribeMaintenanceStartTimeOutput from required parameters
newDescribeMaintenanceStartTimeOutput :: DescribeMaintenanceStartTimeOutput
newDescribeMaintenanceStartTimeOutput  = DescribeMaintenanceStartTimeOutput { "DayOfWeek": Nothing, "GatewayARN": Nothing, "HourOfDay": Nothing, "MinuteOfHour": Nothing, "Timezone": Nothing }

-- | Constructs DescribeMaintenanceStartTimeOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMaintenanceStartTimeOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "HourOfDay" :: Maybe (HourOfDay) , "MinuteOfHour" :: Maybe (MinuteOfHour) , "DayOfWeek" :: Maybe (DayOfWeek) , "Timezone" :: Maybe (GatewayTimezone) } -> {"GatewayARN" :: Maybe (GatewayARN) , "HourOfDay" :: Maybe (HourOfDay) , "MinuteOfHour" :: Maybe (MinuteOfHour) , "DayOfWeek" :: Maybe (DayOfWeek) , "Timezone" :: Maybe (GatewayTimezone) } ) -> DescribeMaintenanceStartTimeOutput
newDescribeMaintenanceStartTimeOutput'  customize = (DescribeMaintenanceStartTimeOutput <<< customize) { "DayOfWeek": Nothing, "GatewayARN": Nothing, "HourOfDay": Nothing, "MinuteOfHour": Nothing, "Timezone": Nothing }



-- | <p>DescribeNFSFileSharesInput</p>
newtype DescribeNFSFileSharesInput = DescribeNFSFileSharesInput 
  { "FileShareARNList" :: (FileShareARNList)
  }
derive instance newtypeDescribeNFSFileSharesInput :: Newtype DescribeNFSFileSharesInput _
derive instance repGenericDescribeNFSFileSharesInput :: Generic DescribeNFSFileSharesInput _
instance showDescribeNFSFileSharesInput :: Show DescribeNFSFileSharesInput where show = genericShow
instance decodeDescribeNFSFileSharesInput :: Decode DescribeNFSFileSharesInput where decode = genericDecode options
instance encodeDescribeNFSFileSharesInput :: Encode DescribeNFSFileSharesInput where encode = genericEncode options

-- | Constructs DescribeNFSFileSharesInput from required parameters
newDescribeNFSFileSharesInput :: FileShareARNList -> DescribeNFSFileSharesInput
newDescribeNFSFileSharesInput _FileShareARNList = DescribeNFSFileSharesInput { "FileShareARNList": _FileShareARNList }

-- | Constructs DescribeNFSFileSharesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeNFSFileSharesInput' :: FileShareARNList -> ( { "FileShareARNList" :: (FileShareARNList) } -> {"FileShareARNList" :: (FileShareARNList) } ) -> DescribeNFSFileSharesInput
newDescribeNFSFileSharesInput' _FileShareARNList customize = (DescribeNFSFileSharesInput <<< customize) { "FileShareARNList": _FileShareARNList }



-- | <p>DescribeNFSFileSharesOutput</p>
newtype DescribeNFSFileSharesOutput = DescribeNFSFileSharesOutput 
  { "NFSFileShareInfoList" :: Maybe (NFSFileShareInfoList)
  }
derive instance newtypeDescribeNFSFileSharesOutput :: Newtype DescribeNFSFileSharesOutput _
derive instance repGenericDescribeNFSFileSharesOutput :: Generic DescribeNFSFileSharesOutput _
instance showDescribeNFSFileSharesOutput :: Show DescribeNFSFileSharesOutput where show = genericShow
instance decodeDescribeNFSFileSharesOutput :: Decode DescribeNFSFileSharesOutput where decode = genericDecode options
instance encodeDescribeNFSFileSharesOutput :: Encode DescribeNFSFileSharesOutput where encode = genericEncode options

-- | Constructs DescribeNFSFileSharesOutput from required parameters
newDescribeNFSFileSharesOutput :: DescribeNFSFileSharesOutput
newDescribeNFSFileSharesOutput  = DescribeNFSFileSharesOutput { "NFSFileShareInfoList": Nothing }

-- | Constructs DescribeNFSFileSharesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeNFSFileSharesOutput' :: ( { "NFSFileShareInfoList" :: Maybe (NFSFileShareInfoList) } -> {"NFSFileShareInfoList" :: Maybe (NFSFileShareInfoList) } ) -> DescribeNFSFileSharesOutput
newDescribeNFSFileSharesOutput'  customize = (DescribeNFSFileSharesOutput <<< customize) { "NFSFileShareInfoList": Nothing }



-- | <p>A JSON object containing the <a>DescribeSnapshotScheduleInput$VolumeARN</a> of the volume.</p>
newtype DescribeSnapshotScheduleInput = DescribeSnapshotScheduleInput 
  { "VolumeARN" :: (VolumeARN)
  }
derive instance newtypeDescribeSnapshotScheduleInput :: Newtype DescribeSnapshotScheduleInput _
derive instance repGenericDescribeSnapshotScheduleInput :: Generic DescribeSnapshotScheduleInput _
instance showDescribeSnapshotScheduleInput :: Show DescribeSnapshotScheduleInput where show = genericShow
instance decodeDescribeSnapshotScheduleInput :: Decode DescribeSnapshotScheduleInput where decode = genericDecode options
instance encodeDescribeSnapshotScheduleInput :: Encode DescribeSnapshotScheduleInput where encode = genericEncode options

-- | Constructs DescribeSnapshotScheduleInput from required parameters
newDescribeSnapshotScheduleInput :: VolumeARN -> DescribeSnapshotScheduleInput
newDescribeSnapshotScheduleInput _VolumeARN = DescribeSnapshotScheduleInput { "VolumeARN": _VolumeARN }

-- | Constructs DescribeSnapshotScheduleInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSnapshotScheduleInput' :: VolumeARN -> ( { "VolumeARN" :: (VolumeARN) } -> {"VolumeARN" :: (VolumeARN) } ) -> DescribeSnapshotScheduleInput
newDescribeSnapshotScheduleInput' _VolumeARN customize = (DescribeSnapshotScheduleInput <<< customize) { "VolumeARN": _VolumeARN }



newtype DescribeSnapshotScheduleOutput = DescribeSnapshotScheduleOutput 
  { "VolumeARN" :: Maybe (VolumeARN)
  , "StartAt" :: Maybe (HourOfDay)
  , "RecurrenceInHours" :: Maybe (RecurrenceInHours)
  , "Description" :: Maybe (Description)
  , "Timezone" :: Maybe (GatewayTimezone)
  }
derive instance newtypeDescribeSnapshotScheduleOutput :: Newtype DescribeSnapshotScheduleOutput _
derive instance repGenericDescribeSnapshotScheduleOutput :: Generic DescribeSnapshotScheduleOutput _
instance showDescribeSnapshotScheduleOutput :: Show DescribeSnapshotScheduleOutput where show = genericShow
instance decodeDescribeSnapshotScheduleOutput :: Decode DescribeSnapshotScheduleOutput where decode = genericDecode options
instance encodeDescribeSnapshotScheduleOutput :: Encode DescribeSnapshotScheduleOutput where encode = genericEncode options

-- | Constructs DescribeSnapshotScheduleOutput from required parameters
newDescribeSnapshotScheduleOutput :: DescribeSnapshotScheduleOutput
newDescribeSnapshotScheduleOutput  = DescribeSnapshotScheduleOutput { "Description": Nothing, "RecurrenceInHours": Nothing, "StartAt": Nothing, "Timezone": Nothing, "VolumeARN": Nothing }

-- | Constructs DescribeSnapshotScheduleOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSnapshotScheduleOutput' :: ( { "VolumeARN" :: Maybe (VolumeARN) , "StartAt" :: Maybe (HourOfDay) , "RecurrenceInHours" :: Maybe (RecurrenceInHours) , "Description" :: Maybe (Description) , "Timezone" :: Maybe (GatewayTimezone) } -> {"VolumeARN" :: Maybe (VolumeARN) , "StartAt" :: Maybe (HourOfDay) , "RecurrenceInHours" :: Maybe (RecurrenceInHours) , "Description" :: Maybe (Description) , "Timezone" :: Maybe (GatewayTimezone) } ) -> DescribeSnapshotScheduleOutput
newDescribeSnapshotScheduleOutput'  customize = (DescribeSnapshotScheduleOutput <<< customize) { "Description": Nothing, "RecurrenceInHours": Nothing, "StartAt": Nothing, "Timezone": Nothing, "VolumeARN": Nothing }



-- | <p>A JSON object containing a list of <a>DescribeStorediSCSIVolumesInput$VolumeARNs</a>.</p>
newtype DescribeStorediSCSIVolumesInput = DescribeStorediSCSIVolumesInput 
  { "VolumeARNs" :: (VolumeARNs)
  }
derive instance newtypeDescribeStorediSCSIVolumesInput :: Newtype DescribeStorediSCSIVolumesInput _
derive instance repGenericDescribeStorediSCSIVolumesInput :: Generic DescribeStorediSCSIVolumesInput _
instance showDescribeStorediSCSIVolumesInput :: Show DescribeStorediSCSIVolumesInput where show = genericShow
instance decodeDescribeStorediSCSIVolumesInput :: Decode DescribeStorediSCSIVolumesInput where decode = genericDecode options
instance encodeDescribeStorediSCSIVolumesInput :: Encode DescribeStorediSCSIVolumesInput where encode = genericEncode options

-- | Constructs DescribeStorediSCSIVolumesInput from required parameters
newDescribeStorediSCSIVolumesInput :: VolumeARNs -> DescribeStorediSCSIVolumesInput
newDescribeStorediSCSIVolumesInput _VolumeARNs = DescribeStorediSCSIVolumesInput { "VolumeARNs": _VolumeARNs }

-- | Constructs DescribeStorediSCSIVolumesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStorediSCSIVolumesInput' :: VolumeARNs -> ( { "VolumeARNs" :: (VolumeARNs) } -> {"VolumeARNs" :: (VolumeARNs) } ) -> DescribeStorediSCSIVolumesInput
newDescribeStorediSCSIVolumesInput' _VolumeARNs customize = (DescribeStorediSCSIVolumesInput <<< customize) { "VolumeARNs": _VolumeARNs }



newtype DescribeStorediSCSIVolumesOutput = DescribeStorediSCSIVolumesOutput 
  { "StorediSCSIVolumes" :: Maybe (StorediSCSIVolumes)
  }
derive instance newtypeDescribeStorediSCSIVolumesOutput :: Newtype DescribeStorediSCSIVolumesOutput _
derive instance repGenericDescribeStorediSCSIVolumesOutput :: Generic DescribeStorediSCSIVolumesOutput _
instance showDescribeStorediSCSIVolumesOutput :: Show DescribeStorediSCSIVolumesOutput where show = genericShow
instance decodeDescribeStorediSCSIVolumesOutput :: Decode DescribeStorediSCSIVolumesOutput where decode = genericDecode options
instance encodeDescribeStorediSCSIVolumesOutput :: Encode DescribeStorediSCSIVolumesOutput where encode = genericEncode options

-- | Constructs DescribeStorediSCSIVolumesOutput from required parameters
newDescribeStorediSCSIVolumesOutput :: DescribeStorediSCSIVolumesOutput
newDescribeStorediSCSIVolumesOutput  = DescribeStorediSCSIVolumesOutput { "StorediSCSIVolumes": Nothing }

-- | Constructs DescribeStorediSCSIVolumesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStorediSCSIVolumesOutput' :: ( { "StorediSCSIVolumes" :: Maybe (StorediSCSIVolumes) } -> {"StorediSCSIVolumes" :: Maybe (StorediSCSIVolumes) } ) -> DescribeStorediSCSIVolumesOutput
newDescribeStorediSCSIVolumesOutput'  customize = (DescribeStorediSCSIVolumesOutput <<< customize) { "StorediSCSIVolumes": Nothing }



-- | <p>DescribeTapeArchivesInput</p>
newtype DescribeTapeArchivesInput = DescribeTapeArchivesInput 
  { "TapeARNs" :: Maybe (TapeARNs)
  , "Marker" :: Maybe (Marker)
  , "Limit" :: Maybe (PositiveIntObject)
  }
derive instance newtypeDescribeTapeArchivesInput :: Newtype DescribeTapeArchivesInput _
derive instance repGenericDescribeTapeArchivesInput :: Generic DescribeTapeArchivesInput _
instance showDescribeTapeArchivesInput :: Show DescribeTapeArchivesInput where show = genericShow
instance decodeDescribeTapeArchivesInput :: Decode DescribeTapeArchivesInput where decode = genericDecode options
instance encodeDescribeTapeArchivesInput :: Encode DescribeTapeArchivesInput where encode = genericEncode options

-- | Constructs DescribeTapeArchivesInput from required parameters
newDescribeTapeArchivesInput :: DescribeTapeArchivesInput
newDescribeTapeArchivesInput  = DescribeTapeArchivesInput { "Limit": Nothing, "Marker": Nothing, "TapeARNs": Nothing }

-- | Constructs DescribeTapeArchivesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTapeArchivesInput' :: ( { "TapeARNs" :: Maybe (TapeARNs) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } -> {"TapeARNs" :: Maybe (TapeARNs) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } ) -> DescribeTapeArchivesInput
newDescribeTapeArchivesInput'  customize = (DescribeTapeArchivesInput <<< customize) { "Limit": Nothing, "Marker": Nothing, "TapeARNs": Nothing }



-- | <p>DescribeTapeArchivesOutput</p>
newtype DescribeTapeArchivesOutput = DescribeTapeArchivesOutput 
  { "TapeArchives" :: Maybe (TapeArchives)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeDescribeTapeArchivesOutput :: Newtype DescribeTapeArchivesOutput _
derive instance repGenericDescribeTapeArchivesOutput :: Generic DescribeTapeArchivesOutput _
instance showDescribeTapeArchivesOutput :: Show DescribeTapeArchivesOutput where show = genericShow
instance decodeDescribeTapeArchivesOutput :: Decode DescribeTapeArchivesOutput where decode = genericDecode options
instance encodeDescribeTapeArchivesOutput :: Encode DescribeTapeArchivesOutput where encode = genericEncode options

-- | Constructs DescribeTapeArchivesOutput from required parameters
newDescribeTapeArchivesOutput :: DescribeTapeArchivesOutput
newDescribeTapeArchivesOutput  = DescribeTapeArchivesOutput { "Marker": Nothing, "TapeArchives": Nothing }

-- | Constructs DescribeTapeArchivesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTapeArchivesOutput' :: ( { "TapeArchives" :: Maybe (TapeArchives) , "Marker" :: Maybe (Marker) } -> {"TapeArchives" :: Maybe (TapeArchives) , "Marker" :: Maybe (Marker) } ) -> DescribeTapeArchivesOutput
newDescribeTapeArchivesOutput'  customize = (DescribeTapeArchivesOutput <<< customize) { "Marker": Nothing, "TapeArchives": Nothing }



-- | <p>DescribeTapeRecoveryPointsInput</p>
newtype DescribeTapeRecoveryPointsInput = DescribeTapeRecoveryPointsInput 
  { "GatewayARN" :: (GatewayARN)
  , "Marker" :: Maybe (Marker)
  , "Limit" :: Maybe (PositiveIntObject)
  }
derive instance newtypeDescribeTapeRecoveryPointsInput :: Newtype DescribeTapeRecoveryPointsInput _
derive instance repGenericDescribeTapeRecoveryPointsInput :: Generic DescribeTapeRecoveryPointsInput _
instance showDescribeTapeRecoveryPointsInput :: Show DescribeTapeRecoveryPointsInput where show = genericShow
instance decodeDescribeTapeRecoveryPointsInput :: Decode DescribeTapeRecoveryPointsInput where decode = genericDecode options
instance encodeDescribeTapeRecoveryPointsInput :: Encode DescribeTapeRecoveryPointsInput where encode = genericEncode options

-- | Constructs DescribeTapeRecoveryPointsInput from required parameters
newDescribeTapeRecoveryPointsInput :: GatewayARN -> DescribeTapeRecoveryPointsInput
newDescribeTapeRecoveryPointsInput _GatewayARN = DescribeTapeRecoveryPointsInput { "GatewayARN": _GatewayARN, "Limit": Nothing, "Marker": Nothing }

-- | Constructs DescribeTapeRecoveryPointsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTapeRecoveryPointsInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } -> {"GatewayARN" :: (GatewayARN) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } ) -> DescribeTapeRecoveryPointsInput
newDescribeTapeRecoveryPointsInput' _GatewayARN customize = (DescribeTapeRecoveryPointsInput <<< customize) { "GatewayARN": _GatewayARN, "Limit": Nothing, "Marker": Nothing }



-- | <p>DescribeTapeRecoveryPointsOutput</p>
newtype DescribeTapeRecoveryPointsOutput = DescribeTapeRecoveryPointsOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "TapeRecoveryPointInfos" :: Maybe (TapeRecoveryPointInfos)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeDescribeTapeRecoveryPointsOutput :: Newtype DescribeTapeRecoveryPointsOutput _
derive instance repGenericDescribeTapeRecoveryPointsOutput :: Generic DescribeTapeRecoveryPointsOutput _
instance showDescribeTapeRecoveryPointsOutput :: Show DescribeTapeRecoveryPointsOutput where show = genericShow
instance decodeDescribeTapeRecoveryPointsOutput :: Decode DescribeTapeRecoveryPointsOutput where decode = genericDecode options
instance encodeDescribeTapeRecoveryPointsOutput :: Encode DescribeTapeRecoveryPointsOutput where encode = genericEncode options

-- | Constructs DescribeTapeRecoveryPointsOutput from required parameters
newDescribeTapeRecoveryPointsOutput :: DescribeTapeRecoveryPointsOutput
newDescribeTapeRecoveryPointsOutput  = DescribeTapeRecoveryPointsOutput { "GatewayARN": Nothing, "Marker": Nothing, "TapeRecoveryPointInfos": Nothing }

-- | Constructs DescribeTapeRecoveryPointsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTapeRecoveryPointsOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "TapeRecoveryPointInfos" :: Maybe (TapeRecoveryPointInfos) , "Marker" :: Maybe (Marker) } -> {"GatewayARN" :: Maybe (GatewayARN) , "TapeRecoveryPointInfos" :: Maybe (TapeRecoveryPointInfos) , "Marker" :: Maybe (Marker) } ) -> DescribeTapeRecoveryPointsOutput
newDescribeTapeRecoveryPointsOutput'  customize = (DescribeTapeRecoveryPointsOutput <<< customize) { "GatewayARN": Nothing, "Marker": Nothing, "TapeRecoveryPointInfos": Nothing }



-- | <p>DescribeTapesInput</p>
newtype DescribeTapesInput = DescribeTapesInput 
  { "GatewayARN" :: (GatewayARN)
  , "TapeARNs" :: Maybe (TapeARNs)
  , "Marker" :: Maybe (Marker)
  , "Limit" :: Maybe (PositiveIntObject)
  }
derive instance newtypeDescribeTapesInput :: Newtype DescribeTapesInput _
derive instance repGenericDescribeTapesInput :: Generic DescribeTapesInput _
instance showDescribeTapesInput :: Show DescribeTapesInput where show = genericShow
instance decodeDescribeTapesInput :: Decode DescribeTapesInput where decode = genericDecode options
instance encodeDescribeTapesInput :: Encode DescribeTapesInput where encode = genericEncode options

-- | Constructs DescribeTapesInput from required parameters
newDescribeTapesInput :: GatewayARN -> DescribeTapesInput
newDescribeTapesInput _GatewayARN = DescribeTapesInput { "GatewayARN": _GatewayARN, "Limit": Nothing, "Marker": Nothing, "TapeARNs": Nothing }

-- | Constructs DescribeTapesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTapesInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) , "TapeARNs" :: Maybe (TapeARNs) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } -> {"GatewayARN" :: (GatewayARN) , "TapeARNs" :: Maybe (TapeARNs) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } ) -> DescribeTapesInput
newDescribeTapesInput' _GatewayARN customize = (DescribeTapesInput <<< customize) { "GatewayARN": _GatewayARN, "Limit": Nothing, "Marker": Nothing, "TapeARNs": Nothing }



-- | <p>DescribeTapesOutput</p>
newtype DescribeTapesOutput = DescribeTapesOutput 
  { "Tapes" :: Maybe (Tapes)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeDescribeTapesOutput :: Newtype DescribeTapesOutput _
derive instance repGenericDescribeTapesOutput :: Generic DescribeTapesOutput _
instance showDescribeTapesOutput :: Show DescribeTapesOutput where show = genericShow
instance decodeDescribeTapesOutput :: Decode DescribeTapesOutput where decode = genericDecode options
instance encodeDescribeTapesOutput :: Encode DescribeTapesOutput where encode = genericEncode options

-- | Constructs DescribeTapesOutput from required parameters
newDescribeTapesOutput :: DescribeTapesOutput
newDescribeTapesOutput  = DescribeTapesOutput { "Marker": Nothing, "Tapes": Nothing }

-- | Constructs DescribeTapesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTapesOutput' :: ( { "Tapes" :: Maybe (Tapes) , "Marker" :: Maybe (Marker) } -> {"Tapes" :: Maybe (Tapes) , "Marker" :: Maybe (Marker) } ) -> DescribeTapesOutput
newDescribeTapesOutput'  customize = (DescribeTapesOutput <<< customize) { "Marker": Nothing, "Tapes": Nothing }



newtype DescribeUploadBufferInput = DescribeUploadBufferInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeDescribeUploadBufferInput :: Newtype DescribeUploadBufferInput _
derive instance repGenericDescribeUploadBufferInput :: Generic DescribeUploadBufferInput _
instance showDescribeUploadBufferInput :: Show DescribeUploadBufferInput where show = genericShow
instance decodeDescribeUploadBufferInput :: Decode DescribeUploadBufferInput where decode = genericDecode options
instance encodeDescribeUploadBufferInput :: Encode DescribeUploadBufferInput where encode = genericEncode options

-- | Constructs DescribeUploadBufferInput from required parameters
newDescribeUploadBufferInput :: GatewayARN -> DescribeUploadBufferInput
newDescribeUploadBufferInput _GatewayARN = DescribeUploadBufferInput { "GatewayARN": _GatewayARN }

-- | Constructs DescribeUploadBufferInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUploadBufferInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> DescribeUploadBufferInput
newDescribeUploadBufferInput' _GatewayARN customize = (DescribeUploadBufferInput <<< customize) { "GatewayARN": _GatewayARN }



newtype DescribeUploadBufferOutput = DescribeUploadBufferOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "DiskIds" :: Maybe (DiskIds)
  , "UploadBufferUsedInBytes" :: Maybe (Number)
  , "UploadBufferAllocatedInBytes" :: Maybe (Number)
  }
derive instance newtypeDescribeUploadBufferOutput :: Newtype DescribeUploadBufferOutput _
derive instance repGenericDescribeUploadBufferOutput :: Generic DescribeUploadBufferOutput _
instance showDescribeUploadBufferOutput :: Show DescribeUploadBufferOutput where show = genericShow
instance decodeDescribeUploadBufferOutput :: Decode DescribeUploadBufferOutput where decode = genericDecode options
instance encodeDescribeUploadBufferOutput :: Encode DescribeUploadBufferOutput where encode = genericEncode options

-- | Constructs DescribeUploadBufferOutput from required parameters
newDescribeUploadBufferOutput :: DescribeUploadBufferOutput
newDescribeUploadBufferOutput  = DescribeUploadBufferOutput { "DiskIds": Nothing, "GatewayARN": Nothing, "UploadBufferAllocatedInBytes": Nothing, "UploadBufferUsedInBytes": Nothing }

-- | Constructs DescribeUploadBufferOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUploadBufferOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "DiskIds" :: Maybe (DiskIds) , "UploadBufferUsedInBytes" :: Maybe (Number) , "UploadBufferAllocatedInBytes" :: Maybe (Number) } -> {"GatewayARN" :: Maybe (GatewayARN) , "DiskIds" :: Maybe (DiskIds) , "UploadBufferUsedInBytes" :: Maybe (Number) , "UploadBufferAllocatedInBytes" :: Maybe (Number) } ) -> DescribeUploadBufferOutput
newDescribeUploadBufferOutput'  customize = (DescribeUploadBufferOutput <<< customize) { "DiskIds": Nothing, "GatewayARN": Nothing, "UploadBufferAllocatedInBytes": Nothing, "UploadBufferUsedInBytes": Nothing }



-- | <p>DescribeVTLDevicesInput</p>
newtype DescribeVTLDevicesInput = DescribeVTLDevicesInput 
  { "GatewayARN" :: (GatewayARN)
  , "VTLDeviceARNs" :: Maybe (VTLDeviceARNs)
  , "Marker" :: Maybe (Marker)
  , "Limit" :: Maybe (PositiveIntObject)
  }
derive instance newtypeDescribeVTLDevicesInput :: Newtype DescribeVTLDevicesInput _
derive instance repGenericDescribeVTLDevicesInput :: Generic DescribeVTLDevicesInput _
instance showDescribeVTLDevicesInput :: Show DescribeVTLDevicesInput where show = genericShow
instance decodeDescribeVTLDevicesInput :: Decode DescribeVTLDevicesInput where decode = genericDecode options
instance encodeDescribeVTLDevicesInput :: Encode DescribeVTLDevicesInput where encode = genericEncode options

-- | Constructs DescribeVTLDevicesInput from required parameters
newDescribeVTLDevicesInput :: GatewayARN -> DescribeVTLDevicesInput
newDescribeVTLDevicesInput _GatewayARN = DescribeVTLDevicesInput { "GatewayARN": _GatewayARN, "Limit": Nothing, "Marker": Nothing, "VTLDeviceARNs": Nothing }

-- | Constructs DescribeVTLDevicesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeVTLDevicesInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) , "VTLDeviceARNs" :: Maybe (VTLDeviceARNs) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } -> {"GatewayARN" :: (GatewayARN) , "VTLDeviceARNs" :: Maybe (VTLDeviceARNs) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } ) -> DescribeVTLDevicesInput
newDescribeVTLDevicesInput' _GatewayARN customize = (DescribeVTLDevicesInput <<< customize) { "GatewayARN": _GatewayARN, "Limit": Nothing, "Marker": Nothing, "VTLDeviceARNs": Nothing }



-- | <p>DescribeVTLDevicesOutput</p>
newtype DescribeVTLDevicesOutput = DescribeVTLDevicesOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "VTLDevices" :: Maybe (VTLDevices)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeDescribeVTLDevicesOutput :: Newtype DescribeVTLDevicesOutput _
derive instance repGenericDescribeVTLDevicesOutput :: Generic DescribeVTLDevicesOutput _
instance showDescribeVTLDevicesOutput :: Show DescribeVTLDevicesOutput where show = genericShow
instance decodeDescribeVTLDevicesOutput :: Decode DescribeVTLDevicesOutput where decode = genericDecode options
instance encodeDescribeVTLDevicesOutput :: Encode DescribeVTLDevicesOutput where encode = genericEncode options

-- | Constructs DescribeVTLDevicesOutput from required parameters
newDescribeVTLDevicesOutput :: DescribeVTLDevicesOutput
newDescribeVTLDevicesOutput  = DescribeVTLDevicesOutput { "GatewayARN": Nothing, "Marker": Nothing, "VTLDevices": Nothing }

-- | Constructs DescribeVTLDevicesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeVTLDevicesOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "VTLDevices" :: Maybe (VTLDevices) , "Marker" :: Maybe (Marker) } -> {"GatewayARN" :: Maybe (GatewayARN) , "VTLDevices" :: Maybe (VTLDevices) , "Marker" :: Maybe (Marker) } ) -> DescribeVTLDevicesOutput
newDescribeVTLDevicesOutput'  customize = (DescribeVTLDevicesOutput <<< customize) { "GatewayARN": Nothing, "Marker": Nothing, "VTLDevices": Nothing }



-- | <p>A JSON object containing the of the gateway.</p>
newtype DescribeWorkingStorageInput = DescribeWorkingStorageInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeDescribeWorkingStorageInput :: Newtype DescribeWorkingStorageInput _
derive instance repGenericDescribeWorkingStorageInput :: Generic DescribeWorkingStorageInput _
instance showDescribeWorkingStorageInput :: Show DescribeWorkingStorageInput where show = genericShow
instance decodeDescribeWorkingStorageInput :: Decode DescribeWorkingStorageInput where decode = genericDecode options
instance encodeDescribeWorkingStorageInput :: Encode DescribeWorkingStorageInput where encode = genericEncode options

-- | Constructs DescribeWorkingStorageInput from required parameters
newDescribeWorkingStorageInput :: GatewayARN -> DescribeWorkingStorageInput
newDescribeWorkingStorageInput _GatewayARN = DescribeWorkingStorageInput { "GatewayARN": _GatewayARN }

-- | Constructs DescribeWorkingStorageInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeWorkingStorageInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> DescribeWorkingStorageInput
newDescribeWorkingStorageInput' _GatewayARN customize = (DescribeWorkingStorageInput <<< customize) { "GatewayARN": _GatewayARN }



-- | <p>A JSON object containing the following fields:</p>
newtype DescribeWorkingStorageOutput = DescribeWorkingStorageOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "DiskIds" :: Maybe (DiskIds)
  , "WorkingStorageUsedInBytes" :: Maybe (Number)
  , "WorkingStorageAllocatedInBytes" :: Maybe (Number)
  }
derive instance newtypeDescribeWorkingStorageOutput :: Newtype DescribeWorkingStorageOutput _
derive instance repGenericDescribeWorkingStorageOutput :: Generic DescribeWorkingStorageOutput _
instance showDescribeWorkingStorageOutput :: Show DescribeWorkingStorageOutput where show = genericShow
instance decodeDescribeWorkingStorageOutput :: Decode DescribeWorkingStorageOutput where decode = genericDecode options
instance encodeDescribeWorkingStorageOutput :: Encode DescribeWorkingStorageOutput where encode = genericEncode options

-- | Constructs DescribeWorkingStorageOutput from required parameters
newDescribeWorkingStorageOutput :: DescribeWorkingStorageOutput
newDescribeWorkingStorageOutput  = DescribeWorkingStorageOutput { "DiskIds": Nothing, "GatewayARN": Nothing, "WorkingStorageAllocatedInBytes": Nothing, "WorkingStorageUsedInBytes": Nothing }

-- | Constructs DescribeWorkingStorageOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeWorkingStorageOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "DiskIds" :: Maybe (DiskIds) , "WorkingStorageUsedInBytes" :: Maybe (Number) , "WorkingStorageAllocatedInBytes" :: Maybe (Number) } -> {"GatewayARN" :: Maybe (GatewayARN) , "DiskIds" :: Maybe (DiskIds) , "WorkingStorageUsedInBytes" :: Maybe (Number) , "WorkingStorageAllocatedInBytes" :: Maybe (Number) } ) -> DescribeWorkingStorageOutput
newDescribeWorkingStorageOutput'  customize = (DescribeWorkingStorageOutput <<< customize) { "DiskIds": Nothing, "GatewayARN": Nothing, "WorkingStorageAllocatedInBytes": Nothing, "WorkingStorageUsedInBytes": Nothing }



newtype Description = Description String
derive instance newtypeDescription :: Newtype Description _
derive instance repGenericDescription :: Generic Description _
instance showDescription :: Show Description where show = genericShow
instance decodeDescription :: Decode Description where decode = genericDecode options
instance encodeDescription :: Encode Description where encode = genericEncode options



newtype DeviceType = DeviceType String
derive instance newtypeDeviceType :: Newtype DeviceType _
derive instance repGenericDeviceType :: Generic DeviceType _
instance showDeviceType :: Show DeviceType where show = genericShow
instance decodeDeviceType :: Decode DeviceType where decode = genericDecode options
instance encodeDeviceType :: Encode DeviceType where encode = genericEncode options



-- | <p>Lists iSCSI information about a VTL device.</p>
newtype DeviceiSCSIAttributes = DeviceiSCSIAttributes 
  { "TargetARN" :: Maybe (TargetARN)
  , "NetworkInterfaceId" :: Maybe (NetworkInterfaceId)
  , "NetworkInterfacePort" :: Maybe (Int)
  , "ChapEnabled" :: Maybe (Boolean)
  }
derive instance newtypeDeviceiSCSIAttributes :: Newtype DeviceiSCSIAttributes _
derive instance repGenericDeviceiSCSIAttributes :: Generic DeviceiSCSIAttributes _
instance showDeviceiSCSIAttributes :: Show DeviceiSCSIAttributes where show = genericShow
instance decodeDeviceiSCSIAttributes :: Decode DeviceiSCSIAttributes where decode = genericDecode options
instance encodeDeviceiSCSIAttributes :: Encode DeviceiSCSIAttributes where encode = genericEncode options

-- | Constructs DeviceiSCSIAttributes from required parameters
newDeviceiSCSIAttributes :: DeviceiSCSIAttributes
newDeviceiSCSIAttributes  = DeviceiSCSIAttributes { "ChapEnabled": Nothing, "NetworkInterfaceId": Nothing, "NetworkInterfacePort": Nothing, "TargetARN": Nothing }

-- | Constructs DeviceiSCSIAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeviceiSCSIAttributes' :: ( { "TargetARN" :: Maybe (TargetARN) , "NetworkInterfaceId" :: Maybe (NetworkInterfaceId) , "NetworkInterfacePort" :: Maybe (Int) , "ChapEnabled" :: Maybe (Boolean) } -> {"TargetARN" :: Maybe (TargetARN) , "NetworkInterfaceId" :: Maybe (NetworkInterfaceId) , "NetworkInterfacePort" :: Maybe (Int) , "ChapEnabled" :: Maybe (Boolean) } ) -> DeviceiSCSIAttributes
newDeviceiSCSIAttributes'  customize = (DeviceiSCSIAttributes <<< customize) { "ChapEnabled": Nothing, "NetworkInterfaceId": Nothing, "NetworkInterfacePort": Nothing, "TargetARN": Nothing }



-- | <p>DisableGatewayInput</p>
newtype DisableGatewayInput = DisableGatewayInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeDisableGatewayInput :: Newtype DisableGatewayInput _
derive instance repGenericDisableGatewayInput :: Generic DisableGatewayInput _
instance showDisableGatewayInput :: Show DisableGatewayInput where show = genericShow
instance decodeDisableGatewayInput :: Decode DisableGatewayInput where decode = genericDecode options
instance encodeDisableGatewayInput :: Encode DisableGatewayInput where encode = genericEncode options

-- | Constructs DisableGatewayInput from required parameters
newDisableGatewayInput :: GatewayARN -> DisableGatewayInput
newDisableGatewayInput _GatewayARN = DisableGatewayInput { "GatewayARN": _GatewayARN }

-- | Constructs DisableGatewayInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisableGatewayInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> DisableGatewayInput
newDisableGatewayInput' _GatewayARN customize = (DisableGatewayInput <<< customize) { "GatewayARN": _GatewayARN }



-- | <p>DisableGatewayOutput</p>
newtype DisableGatewayOutput = DisableGatewayOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeDisableGatewayOutput :: Newtype DisableGatewayOutput _
derive instance repGenericDisableGatewayOutput :: Generic DisableGatewayOutput _
instance showDisableGatewayOutput :: Show DisableGatewayOutput where show = genericShow
instance decodeDisableGatewayOutput :: Decode DisableGatewayOutput where decode = genericDecode options
instance encodeDisableGatewayOutput :: Encode DisableGatewayOutput where encode = genericEncode options

-- | Constructs DisableGatewayOutput from required parameters
newDisableGatewayOutput :: DisableGatewayOutput
newDisableGatewayOutput  = DisableGatewayOutput { "GatewayARN": Nothing }

-- | Constructs DisableGatewayOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisableGatewayOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> DisableGatewayOutput
newDisableGatewayOutput'  customize = (DisableGatewayOutput <<< customize) { "GatewayARN": Nothing }



newtype Disk = Disk 
  { "DiskId" :: Maybe (DiskId)
  , "DiskPath" :: Maybe (String)
  , "DiskNode" :: Maybe (String)
  , "DiskStatus" :: Maybe (String)
  , "DiskSizeInBytes" :: Maybe (Number)
  , "DiskAllocationType" :: Maybe (DiskAllocationType)
  , "DiskAllocationResource" :: Maybe (String)
  }
derive instance newtypeDisk :: Newtype Disk _
derive instance repGenericDisk :: Generic Disk _
instance showDisk :: Show Disk where show = genericShow
instance decodeDisk :: Decode Disk where decode = genericDecode options
instance encodeDisk :: Encode Disk where encode = genericEncode options

-- | Constructs Disk from required parameters
newDisk :: Disk
newDisk  = Disk { "DiskAllocationResource": Nothing, "DiskAllocationType": Nothing, "DiskId": Nothing, "DiskNode": Nothing, "DiskPath": Nothing, "DiskSizeInBytes": Nothing, "DiskStatus": Nothing }

-- | Constructs Disk's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisk' :: ( { "DiskId" :: Maybe (DiskId) , "DiskPath" :: Maybe (String) , "DiskNode" :: Maybe (String) , "DiskStatus" :: Maybe (String) , "DiskSizeInBytes" :: Maybe (Number) , "DiskAllocationType" :: Maybe (DiskAllocationType) , "DiskAllocationResource" :: Maybe (String) } -> {"DiskId" :: Maybe (DiskId) , "DiskPath" :: Maybe (String) , "DiskNode" :: Maybe (String) , "DiskStatus" :: Maybe (String) , "DiskSizeInBytes" :: Maybe (Number) , "DiskAllocationType" :: Maybe (DiskAllocationType) , "DiskAllocationResource" :: Maybe (String) } ) -> Disk
newDisk'  customize = (Disk <<< customize) { "DiskAllocationResource": Nothing, "DiskAllocationType": Nothing, "DiskId": Nothing, "DiskNode": Nothing, "DiskPath": Nothing, "DiskSizeInBytes": Nothing, "DiskStatus": Nothing }



newtype DiskAllocationType = DiskAllocationType String
derive instance newtypeDiskAllocationType :: Newtype DiskAllocationType _
derive instance repGenericDiskAllocationType :: Generic DiskAllocationType _
instance showDiskAllocationType :: Show DiskAllocationType where show = genericShow
instance decodeDiskAllocationType :: Decode DiskAllocationType where decode = genericDecode options
instance encodeDiskAllocationType :: Encode DiskAllocationType where encode = genericEncode options



newtype DiskId = DiskId String
derive instance newtypeDiskId :: Newtype DiskId _
derive instance repGenericDiskId :: Generic DiskId _
instance showDiskId :: Show DiskId where show = genericShow
instance decodeDiskId :: Decode DiskId where decode = genericDecode options
instance encodeDiskId :: Encode DiskId where encode = genericEncode options



newtype DiskIds = DiskIds (Array DiskId)
derive instance newtypeDiskIds :: Newtype DiskIds _
derive instance repGenericDiskIds :: Generic DiskIds _
instance showDiskIds :: Show DiskIds where show = genericShow
instance decodeDiskIds :: Decode DiskIds where decode = genericDecode options
instance encodeDiskIds :: Encode DiskIds where encode = genericEncode options



newtype Disks = Disks (Array Disk)
derive instance newtypeDisks :: Newtype Disks _
derive instance repGenericDisks :: Generic Disks _
instance showDisks :: Show Disks where show = genericShow
instance decodeDisks :: Decode Disks where decode = genericDecode options
instance encodeDisks :: Encode Disks where encode = genericEncode options



newtype DoubleObject = DoubleObject Number
derive instance newtypeDoubleObject :: Newtype DoubleObject _
derive instance repGenericDoubleObject :: Generic DoubleObject _
instance showDoubleObject :: Show DoubleObject where show = genericShow
instance decodeDoubleObject :: Decode DoubleObject where decode = genericDecode options
instance encodeDoubleObject :: Encode DoubleObject where encode = genericEncode options



newtype ErrorCode = ErrorCode String
derive instance newtypeErrorCode :: Newtype ErrorCode _
derive instance repGenericErrorCode :: Generic ErrorCode _
instance showErrorCode :: Show ErrorCode where show = genericShow
instance decodeErrorCode :: Decode ErrorCode where decode = genericDecode options
instance encodeErrorCode :: Encode ErrorCode where encode = genericEncode options



-- | <p>The Amazon Resource Name (ARN) of the file share. </p>
newtype FileShareARN = FileShareARN String
derive instance newtypeFileShareARN :: Newtype FileShareARN _
derive instance repGenericFileShareARN :: Generic FileShareARN _
instance showFileShareARN :: Show FileShareARN where show = genericShow
instance decodeFileShareARN :: Decode FileShareARN where decode = genericDecode options
instance encodeFileShareARN :: Encode FileShareARN where encode = genericEncode options



newtype FileShareARNList = FileShareARNList (Array FileShareARN)
derive instance newtypeFileShareARNList :: Newtype FileShareARNList _
derive instance repGenericFileShareARNList :: Generic FileShareARNList _
instance showFileShareARNList :: Show FileShareARNList where show = genericShow
instance decodeFileShareARNList :: Decode FileShareARNList where decode = genericDecode options
instance encodeFileShareARNList :: Encode FileShareARNList where encode = genericEncode options



-- | <p>The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. </p>
newtype FileShareClientList = FileShareClientList (Array IPV4AddressCIDR)
derive instance newtypeFileShareClientList :: Newtype FileShareClientList _
derive instance repGenericFileShareClientList :: Generic FileShareClientList _
instance showFileShareClientList :: Show FileShareClientList where show = genericShow
instance decodeFileShareClientList :: Decode FileShareClientList where decode = genericDecode options
instance encodeFileShareClientList :: Encode FileShareClientList where encode = genericEncode options



-- | <p>The ID of the file share. </p>
newtype FileShareId = FileShareId String
derive instance newtypeFileShareId :: Newtype FileShareId _
derive instance repGenericFileShareId :: Generic FileShareId _
instance showFileShareId :: Show FileShareId where show = genericShow
instance decodeFileShareId :: Decode FileShareId where decode = genericDecode options
instance encodeFileShareId :: Encode FileShareId where encode = genericEncode options



-- | <p>Describes a file share.</p>
newtype FileShareInfo = FileShareInfo 
  { "FileShareARN" :: Maybe (FileShareARN)
  , "FileShareId" :: Maybe (FileShareId)
  , "FileShareStatus" :: Maybe (FileShareStatus)
  , "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeFileShareInfo :: Newtype FileShareInfo _
derive instance repGenericFileShareInfo :: Generic FileShareInfo _
instance showFileShareInfo :: Show FileShareInfo where show = genericShow
instance decodeFileShareInfo :: Decode FileShareInfo where decode = genericDecode options
instance encodeFileShareInfo :: Encode FileShareInfo where encode = genericEncode options

-- | Constructs FileShareInfo from required parameters
newFileShareInfo :: FileShareInfo
newFileShareInfo  = FileShareInfo { "FileShareARN": Nothing, "FileShareId": Nothing, "FileShareStatus": Nothing, "GatewayARN": Nothing }

-- | Constructs FileShareInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFileShareInfo' :: ( { "FileShareARN" :: Maybe (FileShareARN) , "FileShareId" :: Maybe (FileShareId) , "FileShareStatus" :: Maybe (FileShareStatus) , "GatewayARN" :: Maybe (GatewayARN) } -> {"FileShareARN" :: Maybe (FileShareARN) , "FileShareId" :: Maybe (FileShareId) , "FileShareStatus" :: Maybe (FileShareStatus) , "GatewayARN" :: Maybe (GatewayARN) } ) -> FileShareInfo
newFileShareInfo'  customize = (FileShareInfo <<< customize) { "FileShareARN": Nothing, "FileShareId": Nothing, "FileShareStatus": Nothing, "GatewayARN": Nothing }



newtype FileShareInfoList = FileShareInfoList (Array FileShareInfo)
derive instance newtypeFileShareInfoList :: Newtype FileShareInfoList _
derive instance repGenericFileShareInfoList :: Generic FileShareInfoList _
instance showFileShareInfoList :: Show FileShareInfoList where show = genericShow
instance decodeFileShareInfoList :: Decode FileShareInfoList where decode = genericDecode options
instance encodeFileShareInfoList :: Encode FileShareInfoList where encode = genericEncode options



-- | <p>The status of the file share. Possible values are CREATING, UPDATING, AVAILABLE and DELETING. </p>
newtype FileShareStatus = FileShareStatus String
derive instance newtypeFileShareStatus :: Newtype FileShareStatus _
derive instance repGenericFileShareStatus :: Generic FileShareStatus _
instance showFileShareStatus :: Show FileShareStatus where show = genericShow
instance decodeFileShareStatus :: Decode FileShareStatus where decode = genericDecode options
instance encodeFileShareStatus :: Encode FileShareStatus where encode = genericEncode options



-- | <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
newtype GatewayARN = GatewayARN String
derive instance newtypeGatewayARN :: Newtype GatewayARN _
derive instance repGenericGatewayARN :: Generic GatewayARN _
instance showGatewayARN :: Show GatewayARN where show = genericShow
instance decodeGatewayARN :: Decode GatewayARN where decode = genericDecode options
instance encodeGatewayARN :: Encode GatewayARN where encode = genericEncode options



newtype GatewayId = GatewayId String
derive instance newtypeGatewayId :: Newtype GatewayId _
derive instance repGenericGatewayId :: Generic GatewayId _
instance showGatewayId :: Show GatewayId where show = genericShow
instance decodeGatewayId :: Decode GatewayId where decode = genericDecode options
instance encodeGatewayId :: Encode GatewayId where encode = genericEncode options



-- | <p>Describes a gateway object.</p>
newtype GatewayInfo = GatewayInfo 
  { "GatewayId" :: Maybe (GatewayId)
  , "GatewayARN" :: Maybe (GatewayARN)
  , "GatewayType" :: Maybe (GatewayType)
  , "GatewayOperationalState" :: Maybe (GatewayOperationalState)
  , "GatewayName" :: Maybe (String)
  }
derive instance newtypeGatewayInfo :: Newtype GatewayInfo _
derive instance repGenericGatewayInfo :: Generic GatewayInfo _
instance showGatewayInfo :: Show GatewayInfo where show = genericShow
instance decodeGatewayInfo :: Decode GatewayInfo where decode = genericDecode options
instance encodeGatewayInfo :: Encode GatewayInfo where encode = genericEncode options

-- | Constructs GatewayInfo from required parameters
newGatewayInfo :: GatewayInfo
newGatewayInfo  = GatewayInfo { "GatewayARN": Nothing, "GatewayId": Nothing, "GatewayName": Nothing, "GatewayOperationalState": Nothing, "GatewayType": Nothing }

-- | Constructs GatewayInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGatewayInfo' :: ( { "GatewayId" :: Maybe (GatewayId) , "GatewayARN" :: Maybe (GatewayARN) , "GatewayType" :: Maybe (GatewayType) , "GatewayOperationalState" :: Maybe (GatewayOperationalState) , "GatewayName" :: Maybe (String) } -> {"GatewayId" :: Maybe (GatewayId) , "GatewayARN" :: Maybe (GatewayARN) , "GatewayType" :: Maybe (GatewayType) , "GatewayOperationalState" :: Maybe (GatewayOperationalState) , "GatewayName" :: Maybe (String) } ) -> GatewayInfo
newGatewayInfo'  customize = (GatewayInfo <<< customize) { "GatewayARN": Nothing, "GatewayId": Nothing, "GatewayName": Nothing, "GatewayOperationalState": Nothing, "GatewayType": Nothing }



-- | <p>The name you configured for your gateway.</p>
newtype GatewayName = GatewayName String
derive instance newtypeGatewayName :: Newtype GatewayName _
derive instance repGenericGatewayName :: Generic GatewayName _
instance showGatewayName :: Show GatewayName where show = genericShow
instance decodeGatewayName :: Decode GatewayName where decode = genericDecode options
instance encodeGatewayName :: Encode GatewayName where encode = genericEncode options



newtype GatewayNetworkInterfaces = GatewayNetworkInterfaces (Array NetworkInterface)
derive instance newtypeGatewayNetworkInterfaces :: Newtype GatewayNetworkInterfaces _
derive instance repGenericGatewayNetworkInterfaces :: Generic GatewayNetworkInterfaces _
instance showGatewayNetworkInterfaces :: Show GatewayNetworkInterfaces where show = genericShow
instance decodeGatewayNetworkInterfaces :: Decode GatewayNetworkInterfaces where decode = genericDecode options
instance encodeGatewayNetworkInterfaces :: Encode GatewayNetworkInterfaces where encode = genericEncode options



newtype GatewayOperationalState = GatewayOperationalState String
derive instance newtypeGatewayOperationalState :: Newtype GatewayOperationalState _
derive instance repGenericGatewayOperationalState :: Generic GatewayOperationalState _
instance showGatewayOperationalState :: Show GatewayOperationalState where show = genericShow
instance decodeGatewayOperationalState :: Decode GatewayOperationalState where decode = genericDecode options
instance encodeGatewayOperationalState :: Encode GatewayOperationalState where encode = genericEncode options



newtype GatewayState = GatewayState String
derive instance newtypeGatewayState :: Newtype GatewayState _
derive instance repGenericGatewayState :: Generic GatewayState _
instance showGatewayState :: Show GatewayState where show = genericShow
instance decodeGatewayState :: Decode GatewayState where decode = genericDecode options
instance encodeGatewayState :: Encode GatewayState where encode = genericEncode options



newtype GatewayTimezone = GatewayTimezone String
derive instance newtypeGatewayTimezone :: Newtype GatewayTimezone _
derive instance repGenericGatewayTimezone :: Generic GatewayTimezone _
instance showGatewayTimezone :: Show GatewayTimezone where show = genericShow
instance decodeGatewayTimezone :: Decode GatewayTimezone where decode = genericDecode options
instance encodeGatewayTimezone :: Encode GatewayTimezone where encode = genericEncode options



newtype GatewayType = GatewayType String
derive instance newtypeGatewayType :: Newtype GatewayType _
derive instance repGenericGatewayType :: Generic GatewayType _
instance showGatewayType :: Show GatewayType where show = genericShow
instance decodeGatewayType :: Decode GatewayType where decode = genericDecode options
instance encodeGatewayType :: Encode GatewayType where encode = genericEncode options



newtype Gateways = Gateways (Array GatewayInfo)
derive instance newtypeGateways :: Newtype Gateways _
derive instance repGenericGateways :: Generic Gateways _
instance showGateways :: Show Gateways where show = genericShow
instance decodeGateways :: Decode Gateways where decode = genericDecode options
instance encodeGateways :: Encode Gateways where encode = genericEncode options



newtype HourOfDay = HourOfDay Int
derive instance newtypeHourOfDay :: Newtype HourOfDay _
derive instance repGenericHourOfDay :: Generic HourOfDay _
instance showHourOfDay :: Show HourOfDay where show = genericShow
instance decodeHourOfDay :: Decode HourOfDay where decode = genericDecode options
instance encodeHourOfDay :: Encode HourOfDay where encode = genericEncode options



newtype IPV4AddressCIDR = IPV4AddressCIDR String
derive instance newtypeIPV4AddressCIDR :: Newtype IPV4AddressCIDR _
derive instance repGenericIPV4AddressCIDR :: Generic IPV4AddressCIDR _
instance showIPV4AddressCIDR :: Show IPV4AddressCIDR where show = genericShow
instance decodeIPV4AddressCIDR :: Decode IPV4AddressCIDR where decode = genericDecode options
instance encodeIPV4AddressCIDR :: Encode IPV4AddressCIDR where encode = genericEncode options



newtype Initiator = Initiator String
derive instance newtypeInitiator :: Newtype Initiator _
derive instance repGenericInitiator :: Generic Initiator _
instance showInitiator :: Show Initiator where show = genericShow
instance decodeInitiator :: Decode Initiator where decode = genericDecode options
instance encodeInitiator :: Encode Initiator where encode = genericEncode options



newtype Initiators = Initiators (Array Initiator)
derive instance newtypeInitiators :: Newtype Initiators _
derive instance repGenericInitiators :: Generic Initiators _
instance showInitiators :: Show Initiators where show = genericShow
instance decodeInitiators :: Decode Initiators where decode = genericDecode options
instance encodeInitiators :: Encode Initiators where encode = genericEncode options



-- | <p>An internal server error has occurred during the request. For more information, see the error and message fields.</p>
newtype InternalServerError = InternalServerError 
  { "message" :: Maybe (String)
  , "error" :: Maybe (StorageGatewayError)
  }
derive instance newtypeInternalServerError :: Newtype InternalServerError _
derive instance repGenericInternalServerError :: Generic InternalServerError _
instance showInternalServerError :: Show InternalServerError where show = genericShow
instance decodeInternalServerError :: Decode InternalServerError where decode = genericDecode options
instance encodeInternalServerError :: Encode InternalServerError where encode = genericEncode options

-- | Constructs InternalServerError from required parameters
newInternalServerError :: InternalServerError
newInternalServerError  = InternalServerError { "error": Nothing, "message": Nothing }

-- | Constructs InternalServerError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerError' :: ( { "message" :: Maybe (String) , "error" :: Maybe (StorageGatewayError) } -> {"message" :: Maybe (String) , "error" :: Maybe (StorageGatewayError) } ) -> InternalServerError
newInternalServerError'  customize = (InternalServerError <<< customize) { "error": Nothing, "message": Nothing }



-- | <p>An exception occurred because an invalid gateway request was issued to the service. For more information, see the error and message fields.</p>
newtype InvalidGatewayRequestException = InvalidGatewayRequestException 
  { "message" :: Maybe (String)
  , "error" :: Maybe (StorageGatewayError)
  }
derive instance newtypeInvalidGatewayRequestException :: Newtype InvalidGatewayRequestException _
derive instance repGenericInvalidGatewayRequestException :: Generic InvalidGatewayRequestException _
instance showInvalidGatewayRequestException :: Show InvalidGatewayRequestException where show = genericShow
instance decodeInvalidGatewayRequestException :: Decode InvalidGatewayRequestException where decode = genericDecode options
instance encodeInvalidGatewayRequestException :: Encode InvalidGatewayRequestException where encode = genericEncode options

-- | Constructs InvalidGatewayRequestException from required parameters
newInvalidGatewayRequestException :: InvalidGatewayRequestException
newInvalidGatewayRequestException  = InvalidGatewayRequestException { "error": Nothing, "message": Nothing }

-- | Constructs InvalidGatewayRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidGatewayRequestException' :: ( { "message" :: Maybe (String) , "error" :: Maybe (StorageGatewayError) } -> {"message" :: Maybe (String) , "error" :: Maybe (StorageGatewayError) } ) -> InvalidGatewayRequestException
newInvalidGatewayRequestException'  customize = (InvalidGatewayRequestException <<< customize) { "error": Nothing, "message": Nothing }



newtype IqnName = IqnName String
derive instance newtypeIqnName :: Newtype IqnName _
derive instance repGenericIqnName :: Generic IqnName _
instance showIqnName :: Show IqnName where show = genericShow
instance decodeIqnName :: Decode IqnName where decode = genericDecode options
instance encodeIqnName :: Encode IqnName where encode = genericEncode options



-- | <p>The ARN of the KMS key used for Amazon S3 server side encryption. </p>
newtype KMSKey = KMSKey String
derive instance newtypeKMSKey :: Newtype KMSKey _
derive instance repGenericKMSKey :: Generic KMSKey _
instance showKMSKey :: Show KMSKey where show = genericShow
instance decodeKMSKey :: Decode KMSKey where decode = genericDecode options
instance encodeKMSKey :: Encode KMSKey where encode = genericEncode options



newtype LastSoftwareUpdate = LastSoftwareUpdate String
derive instance newtypeLastSoftwareUpdate :: Newtype LastSoftwareUpdate _
derive instance repGenericLastSoftwareUpdate :: Generic LastSoftwareUpdate _
instance showLastSoftwareUpdate :: Show LastSoftwareUpdate where show = genericShow
instance decodeLastSoftwareUpdate :: Decode LastSoftwareUpdate where decode = genericDecode options
instance encodeLastSoftwareUpdate :: Encode LastSoftwareUpdate where encode = genericEncode options



-- | <p>ListFileShareInput</p>
newtype ListFileSharesInput = ListFileSharesInput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "Limit" :: Maybe (PositiveIntObject)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListFileSharesInput :: Newtype ListFileSharesInput _
derive instance repGenericListFileSharesInput :: Generic ListFileSharesInput _
instance showListFileSharesInput :: Show ListFileSharesInput where show = genericShow
instance decodeListFileSharesInput :: Decode ListFileSharesInput where decode = genericDecode options
instance encodeListFileSharesInput :: Encode ListFileSharesInput where encode = genericEncode options

-- | Constructs ListFileSharesInput from required parameters
newListFileSharesInput :: ListFileSharesInput
newListFileSharesInput  = ListFileSharesInput { "GatewayARN": Nothing, "Limit": Nothing, "Marker": Nothing }

-- | Constructs ListFileSharesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFileSharesInput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "Limit" :: Maybe (PositiveIntObject) , "Marker" :: Maybe (Marker) } -> {"GatewayARN" :: Maybe (GatewayARN) , "Limit" :: Maybe (PositiveIntObject) , "Marker" :: Maybe (Marker) } ) -> ListFileSharesInput
newListFileSharesInput'  customize = (ListFileSharesInput <<< customize) { "GatewayARN": Nothing, "Limit": Nothing, "Marker": Nothing }



-- | <p>ListFileShareOutput</p>
newtype ListFileSharesOutput = ListFileSharesOutput 
  { "Marker" :: Maybe (Marker)
  , "NextMarker" :: Maybe (Marker)
  , "FileShareInfoList" :: Maybe (FileShareInfoList)
  }
derive instance newtypeListFileSharesOutput :: Newtype ListFileSharesOutput _
derive instance repGenericListFileSharesOutput :: Generic ListFileSharesOutput _
instance showListFileSharesOutput :: Show ListFileSharesOutput where show = genericShow
instance decodeListFileSharesOutput :: Decode ListFileSharesOutput where decode = genericDecode options
instance encodeListFileSharesOutput :: Encode ListFileSharesOutput where encode = genericEncode options

-- | Constructs ListFileSharesOutput from required parameters
newListFileSharesOutput :: ListFileSharesOutput
newListFileSharesOutput  = ListFileSharesOutput { "FileShareInfoList": Nothing, "Marker": Nothing, "NextMarker": Nothing }

-- | Constructs ListFileSharesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFileSharesOutput' :: ( { "Marker" :: Maybe (Marker) , "NextMarker" :: Maybe (Marker) , "FileShareInfoList" :: Maybe (FileShareInfoList) } -> {"Marker" :: Maybe (Marker) , "NextMarker" :: Maybe (Marker) , "FileShareInfoList" :: Maybe (FileShareInfoList) } ) -> ListFileSharesOutput
newListFileSharesOutput'  customize = (ListFileSharesOutput <<< customize) { "FileShareInfoList": Nothing, "Marker": Nothing, "NextMarker": Nothing }



-- | <p>A JSON object containing zero or more of the following fields:</p> <ul> <li> <p> <a>ListGatewaysInput$Limit</a> </p> </li> <li> <p> <a>ListGatewaysInput$Marker</a> </p> </li> </ul>
newtype ListGatewaysInput = ListGatewaysInput 
  { "Marker" :: Maybe (Marker)
  , "Limit" :: Maybe (PositiveIntObject)
  }
derive instance newtypeListGatewaysInput :: Newtype ListGatewaysInput _
derive instance repGenericListGatewaysInput :: Generic ListGatewaysInput _
instance showListGatewaysInput :: Show ListGatewaysInput where show = genericShow
instance decodeListGatewaysInput :: Decode ListGatewaysInput where decode = genericDecode options
instance encodeListGatewaysInput :: Encode ListGatewaysInput where encode = genericEncode options

-- | Constructs ListGatewaysInput from required parameters
newListGatewaysInput :: ListGatewaysInput
newListGatewaysInput  = ListGatewaysInput { "Limit": Nothing, "Marker": Nothing }

-- | Constructs ListGatewaysInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGatewaysInput' :: ( { "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } -> {"Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } ) -> ListGatewaysInput
newListGatewaysInput'  customize = (ListGatewaysInput <<< customize) { "Limit": Nothing, "Marker": Nothing }



newtype ListGatewaysOutput = ListGatewaysOutput 
  { "Gateways" :: Maybe (Gateways)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListGatewaysOutput :: Newtype ListGatewaysOutput _
derive instance repGenericListGatewaysOutput :: Generic ListGatewaysOutput _
instance showListGatewaysOutput :: Show ListGatewaysOutput where show = genericShow
instance decodeListGatewaysOutput :: Decode ListGatewaysOutput where decode = genericDecode options
instance encodeListGatewaysOutput :: Encode ListGatewaysOutput where encode = genericEncode options

-- | Constructs ListGatewaysOutput from required parameters
newListGatewaysOutput :: ListGatewaysOutput
newListGatewaysOutput  = ListGatewaysOutput { "Gateways": Nothing, "Marker": Nothing }

-- | Constructs ListGatewaysOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGatewaysOutput' :: ( { "Gateways" :: Maybe (Gateways) , "Marker" :: Maybe (Marker) } -> {"Gateways" :: Maybe (Gateways) , "Marker" :: Maybe (Marker) } ) -> ListGatewaysOutput
newListGatewaysOutput'  customize = (ListGatewaysOutput <<< customize) { "Gateways": Nothing, "Marker": Nothing }



-- | <p>A JSON object containing the of the gateway.</p>
newtype ListLocalDisksInput = ListLocalDisksInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeListLocalDisksInput :: Newtype ListLocalDisksInput _
derive instance repGenericListLocalDisksInput :: Generic ListLocalDisksInput _
instance showListLocalDisksInput :: Show ListLocalDisksInput where show = genericShow
instance decodeListLocalDisksInput :: Decode ListLocalDisksInput where decode = genericDecode options
instance encodeListLocalDisksInput :: Encode ListLocalDisksInput where encode = genericEncode options

-- | Constructs ListLocalDisksInput from required parameters
newListLocalDisksInput :: GatewayARN -> ListLocalDisksInput
newListLocalDisksInput _GatewayARN = ListLocalDisksInput { "GatewayARN": _GatewayARN }

-- | Constructs ListLocalDisksInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListLocalDisksInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> ListLocalDisksInput
newListLocalDisksInput' _GatewayARN customize = (ListLocalDisksInput <<< customize) { "GatewayARN": _GatewayARN }



newtype ListLocalDisksOutput = ListLocalDisksOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "Disks" :: Maybe (Disks)
  }
derive instance newtypeListLocalDisksOutput :: Newtype ListLocalDisksOutput _
derive instance repGenericListLocalDisksOutput :: Generic ListLocalDisksOutput _
instance showListLocalDisksOutput :: Show ListLocalDisksOutput where show = genericShow
instance decodeListLocalDisksOutput :: Decode ListLocalDisksOutput where decode = genericDecode options
instance encodeListLocalDisksOutput :: Encode ListLocalDisksOutput where encode = genericEncode options

-- | Constructs ListLocalDisksOutput from required parameters
newListLocalDisksOutput :: ListLocalDisksOutput
newListLocalDisksOutput  = ListLocalDisksOutput { "Disks": Nothing, "GatewayARN": Nothing }

-- | Constructs ListLocalDisksOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListLocalDisksOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "Disks" :: Maybe (Disks) } -> {"GatewayARN" :: Maybe (GatewayARN) , "Disks" :: Maybe (Disks) } ) -> ListLocalDisksOutput
newListLocalDisksOutput'  customize = (ListLocalDisksOutput <<< customize) { "Disks": Nothing, "GatewayARN": Nothing }



-- | <p>ListTagsForResourceInput</p>
newtype ListTagsForResourceInput = ListTagsForResourceInput 
  { "ResourceARN" :: (ResourceARN)
  , "Marker" :: Maybe (Marker)
  , "Limit" :: Maybe (PositiveIntObject)
  }
derive instance newtypeListTagsForResourceInput :: Newtype ListTagsForResourceInput _
derive instance repGenericListTagsForResourceInput :: Generic ListTagsForResourceInput _
instance showListTagsForResourceInput :: Show ListTagsForResourceInput where show = genericShow
instance decodeListTagsForResourceInput :: Decode ListTagsForResourceInput where decode = genericDecode options
instance encodeListTagsForResourceInput :: Encode ListTagsForResourceInput where encode = genericEncode options

-- | Constructs ListTagsForResourceInput from required parameters
newListTagsForResourceInput :: ResourceARN -> ListTagsForResourceInput
newListTagsForResourceInput _ResourceARN = ListTagsForResourceInput { "ResourceARN": _ResourceARN, "Limit": Nothing, "Marker": Nothing }

-- | Constructs ListTagsForResourceInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForResourceInput' :: ResourceARN -> ( { "ResourceARN" :: (ResourceARN) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } -> {"ResourceARN" :: (ResourceARN) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } ) -> ListTagsForResourceInput
newListTagsForResourceInput' _ResourceARN customize = (ListTagsForResourceInput <<< customize) { "ResourceARN": _ResourceARN, "Limit": Nothing, "Marker": Nothing }



-- | <p>ListTagsForResourceOutput</p>
newtype ListTagsForResourceOutput = ListTagsForResourceOutput 
  { "ResourceARN" :: Maybe (ResourceARN)
  , "Marker" :: Maybe (Marker)
  , "Tags" :: Maybe (Tags)
  }
derive instance newtypeListTagsForResourceOutput :: Newtype ListTagsForResourceOutput _
derive instance repGenericListTagsForResourceOutput :: Generic ListTagsForResourceOutput _
instance showListTagsForResourceOutput :: Show ListTagsForResourceOutput where show = genericShow
instance decodeListTagsForResourceOutput :: Decode ListTagsForResourceOutput where decode = genericDecode options
instance encodeListTagsForResourceOutput :: Encode ListTagsForResourceOutput where encode = genericEncode options

-- | Constructs ListTagsForResourceOutput from required parameters
newListTagsForResourceOutput :: ListTagsForResourceOutput
newListTagsForResourceOutput  = ListTagsForResourceOutput { "Marker": Nothing, "ResourceARN": Nothing, "Tags": Nothing }

-- | Constructs ListTagsForResourceOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForResourceOutput' :: ( { "ResourceARN" :: Maybe (ResourceARN) , "Marker" :: Maybe (Marker) , "Tags" :: Maybe (Tags) } -> {"ResourceARN" :: Maybe (ResourceARN) , "Marker" :: Maybe (Marker) , "Tags" :: Maybe (Tags) } ) -> ListTagsForResourceOutput
newListTagsForResourceOutput'  customize = (ListTagsForResourceOutput <<< customize) { "Marker": Nothing, "ResourceARN": Nothing, "Tags": Nothing }



-- | <p>A JSON object that contains one or more of the following fields:</p> <ul> <li> <p> <a>ListTapesInput$Limit</a> </p> </li> <li> <p> <a>ListTapesInput$Marker</a> </p> </li> <li> <p> <a>ListTapesInput$TapeARNs</a> </p> </li> </ul>
newtype ListTapesInput = ListTapesInput 
  { "TapeARNs" :: Maybe (TapeARNs)
  , "Marker" :: Maybe (Marker)
  , "Limit" :: Maybe (PositiveIntObject)
  }
derive instance newtypeListTapesInput :: Newtype ListTapesInput _
derive instance repGenericListTapesInput :: Generic ListTapesInput _
instance showListTapesInput :: Show ListTapesInput where show = genericShow
instance decodeListTapesInput :: Decode ListTapesInput where decode = genericDecode options
instance encodeListTapesInput :: Encode ListTapesInput where encode = genericEncode options

-- | Constructs ListTapesInput from required parameters
newListTapesInput :: ListTapesInput
newListTapesInput  = ListTapesInput { "Limit": Nothing, "Marker": Nothing, "TapeARNs": Nothing }

-- | Constructs ListTapesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTapesInput' :: ( { "TapeARNs" :: Maybe (TapeARNs) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } -> {"TapeARNs" :: Maybe (TapeARNs) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } ) -> ListTapesInput
newListTapesInput'  customize = (ListTapesInput <<< customize) { "Limit": Nothing, "Marker": Nothing, "TapeARNs": Nothing }



-- | <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>ListTapesOutput$Marker</a> </p> </li> <li> <p> <a>ListTapesOutput$VolumeInfos</a> </p> </li> </ul>
newtype ListTapesOutput = ListTapesOutput 
  { "TapeInfos" :: Maybe (TapeInfos)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListTapesOutput :: Newtype ListTapesOutput _
derive instance repGenericListTapesOutput :: Generic ListTapesOutput _
instance showListTapesOutput :: Show ListTapesOutput where show = genericShow
instance decodeListTapesOutput :: Decode ListTapesOutput where decode = genericDecode options
instance encodeListTapesOutput :: Encode ListTapesOutput where encode = genericEncode options

-- | Constructs ListTapesOutput from required parameters
newListTapesOutput :: ListTapesOutput
newListTapesOutput  = ListTapesOutput { "Marker": Nothing, "TapeInfos": Nothing }

-- | Constructs ListTapesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTapesOutput' :: ( { "TapeInfos" :: Maybe (TapeInfos) , "Marker" :: Maybe (Marker) } -> {"TapeInfos" :: Maybe (TapeInfos) , "Marker" :: Maybe (Marker) } ) -> ListTapesOutput
newListTapesOutput'  customize = (ListTapesOutput <<< customize) { "Marker": Nothing, "TapeInfos": Nothing }



-- | <p>ListVolumeInitiatorsInput</p>
newtype ListVolumeInitiatorsInput = ListVolumeInitiatorsInput 
  { "VolumeARN" :: (VolumeARN)
  }
derive instance newtypeListVolumeInitiatorsInput :: Newtype ListVolumeInitiatorsInput _
derive instance repGenericListVolumeInitiatorsInput :: Generic ListVolumeInitiatorsInput _
instance showListVolumeInitiatorsInput :: Show ListVolumeInitiatorsInput where show = genericShow
instance decodeListVolumeInitiatorsInput :: Decode ListVolumeInitiatorsInput where decode = genericDecode options
instance encodeListVolumeInitiatorsInput :: Encode ListVolumeInitiatorsInput where encode = genericEncode options

-- | Constructs ListVolumeInitiatorsInput from required parameters
newListVolumeInitiatorsInput :: VolumeARN -> ListVolumeInitiatorsInput
newListVolumeInitiatorsInput _VolumeARN = ListVolumeInitiatorsInput { "VolumeARN": _VolumeARN }

-- | Constructs ListVolumeInitiatorsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVolumeInitiatorsInput' :: VolumeARN -> ( { "VolumeARN" :: (VolumeARN) } -> {"VolumeARN" :: (VolumeARN) } ) -> ListVolumeInitiatorsInput
newListVolumeInitiatorsInput' _VolumeARN customize = (ListVolumeInitiatorsInput <<< customize) { "VolumeARN": _VolumeARN }



-- | <p>ListVolumeInitiatorsOutput</p>
newtype ListVolumeInitiatorsOutput = ListVolumeInitiatorsOutput 
  { "Initiators" :: Maybe (Initiators)
  }
derive instance newtypeListVolumeInitiatorsOutput :: Newtype ListVolumeInitiatorsOutput _
derive instance repGenericListVolumeInitiatorsOutput :: Generic ListVolumeInitiatorsOutput _
instance showListVolumeInitiatorsOutput :: Show ListVolumeInitiatorsOutput where show = genericShow
instance decodeListVolumeInitiatorsOutput :: Decode ListVolumeInitiatorsOutput where decode = genericDecode options
instance encodeListVolumeInitiatorsOutput :: Encode ListVolumeInitiatorsOutput where encode = genericEncode options

-- | Constructs ListVolumeInitiatorsOutput from required parameters
newListVolumeInitiatorsOutput :: ListVolumeInitiatorsOutput
newListVolumeInitiatorsOutput  = ListVolumeInitiatorsOutput { "Initiators": Nothing }

-- | Constructs ListVolumeInitiatorsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVolumeInitiatorsOutput' :: ( { "Initiators" :: Maybe (Initiators) } -> {"Initiators" :: Maybe (Initiators) } ) -> ListVolumeInitiatorsOutput
newListVolumeInitiatorsOutput'  customize = (ListVolumeInitiatorsOutput <<< customize) { "Initiators": Nothing }



newtype ListVolumeRecoveryPointsInput = ListVolumeRecoveryPointsInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeListVolumeRecoveryPointsInput :: Newtype ListVolumeRecoveryPointsInput _
derive instance repGenericListVolumeRecoveryPointsInput :: Generic ListVolumeRecoveryPointsInput _
instance showListVolumeRecoveryPointsInput :: Show ListVolumeRecoveryPointsInput where show = genericShow
instance decodeListVolumeRecoveryPointsInput :: Decode ListVolumeRecoveryPointsInput where decode = genericDecode options
instance encodeListVolumeRecoveryPointsInput :: Encode ListVolumeRecoveryPointsInput where encode = genericEncode options

-- | Constructs ListVolumeRecoveryPointsInput from required parameters
newListVolumeRecoveryPointsInput :: GatewayARN -> ListVolumeRecoveryPointsInput
newListVolumeRecoveryPointsInput _GatewayARN = ListVolumeRecoveryPointsInput { "GatewayARN": _GatewayARN }

-- | Constructs ListVolumeRecoveryPointsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVolumeRecoveryPointsInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> ListVolumeRecoveryPointsInput
newListVolumeRecoveryPointsInput' _GatewayARN customize = (ListVolumeRecoveryPointsInput <<< customize) { "GatewayARN": _GatewayARN }



newtype ListVolumeRecoveryPointsOutput = ListVolumeRecoveryPointsOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "VolumeRecoveryPointInfos" :: Maybe (VolumeRecoveryPointInfos)
  }
derive instance newtypeListVolumeRecoveryPointsOutput :: Newtype ListVolumeRecoveryPointsOutput _
derive instance repGenericListVolumeRecoveryPointsOutput :: Generic ListVolumeRecoveryPointsOutput _
instance showListVolumeRecoveryPointsOutput :: Show ListVolumeRecoveryPointsOutput where show = genericShow
instance decodeListVolumeRecoveryPointsOutput :: Decode ListVolumeRecoveryPointsOutput where decode = genericDecode options
instance encodeListVolumeRecoveryPointsOutput :: Encode ListVolumeRecoveryPointsOutput where encode = genericEncode options

-- | Constructs ListVolumeRecoveryPointsOutput from required parameters
newListVolumeRecoveryPointsOutput :: ListVolumeRecoveryPointsOutput
newListVolumeRecoveryPointsOutput  = ListVolumeRecoveryPointsOutput { "GatewayARN": Nothing, "VolumeRecoveryPointInfos": Nothing }

-- | Constructs ListVolumeRecoveryPointsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVolumeRecoveryPointsOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "VolumeRecoveryPointInfos" :: Maybe (VolumeRecoveryPointInfos) } -> {"GatewayARN" :: Maybe (GatewayARN) , "VolumeRecoveryPointInfos" :: Maybe (VolumeRecoveryPointInfos) } ) -> ListVolumeRecoveryPointsOutput
newListVolumeRecoveryPointsOutput'  customize = (ListVolumeRecoveryPointsOutput <<< customize) { "GatewayARN": Nothing, "VolumeRecoveryPointInfos": Nothing }



-- | <p>A JSON object that contains one or more of the following fields:</p> <ul> <li> <p> <a>ListVolumesInput$Limit</a> </p> </li> <li> <p> <a>ListVolumesInput$Marker</a> </p> </li> </ul>
newtype ListVolumesInput = ListVolumesInput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "Marker" :: Maybe (Marker)
  , "Limit" :: Maybe (PositiveIntObject)
  }
derive instance newtypeListVolumesInput :: Newtype ListVolumesInput _
derive instance repGenericListVolumesInput :: Generic ListVolumesInput _
instance showListVolumesInput :: Show ListVolumesInput where show = genericShow
instance decodeListVolumesInput :: Decode ListVolumesInput where decode = genericDecode options
instance encodeListVolumesInput :: Encode ListVolumesInput where encode = genericEncode options

-- | Constructs ListVolumesInput from required parameters
newListVolumesInput :: ListVolumesInput
newListVolumesInput  = ListVolumesInput { "GatewayARN": Nothing, "Limit": Nothing, "Marker": Nothing }

-- | Constructs ListVolumesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVolumesInput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } -> {"GatewayARN" :: Maybe (GatewayARN) , "Marker" :: Maybe (Marker) , "Limit" :: Maybe (PositiveIntObject) } ) -> ListVolumesInput
newListVolumesInput'  customize = (ListVolumesInput <<< customize) { "GatewayARN": Nothing, "Limit": Nothing, "Marker": Nothing }



newtype ListVolumesOutput = ListVolumesOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "Marker" :: Maybe (Marker)
  , "VolumeInfos" :: Maybe (VolumeInfos)
  }
derive instance newtypeListVolumesOutput :: Newtype ListVolumesOutput _
derive instance repGenericListVolumesOutput :: Generic ListVolumesOutput _
instance showListVolumesOutput :: Show ListVolumesOutput where show = genericShow
instance decodeListVolumesOutput :: Decode ListVolumesOutput where decode = genericDecode options
instance encodeListVolumesOutput :: Encode ListVolumesOutput where encode = genericEncode options

-- | Constructs ListVolumesOutput from required parameters
newListVolumesOutput :: ListVolumesOutput
newListVolumesOutput  = ListVolumesOutput { "GatewayARN": Nothing, "Marker": Nothing, "VolumeInfos": Nothing }

-- | Constructs ListVolumesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVolumesOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "Marker" :: Maybe (Marker) , "VolumeInfos" :: Maybe (VolumeInfos) } -> {"GatewayARN" :: Maybe (GatewayARN) , "Marker" :: Maybe (Marker) , "VolumeInfos" :: Maybe (VolumeInfos) } ) -> ListVolumesOutput
newListVolumesOutput'  customize = (ListVolumesOutput <<< customize) { "GatewayARN": Nothing, "Marker": Nothing, "VolumeInfos": Nothing }



newtype LocalConsolePassword = LocalConsolePassword String
derive instance newtypeLocalConsolePassword :: Newtype LocalConsolePassword _
derive instance repGenericLocalConsolePassword :: Generic LocalConsolePassword _
instance showLocalConsolePassword :: Show LocalConsolePassword where show = genericShow
instance decodeLocalConsolePassword :: Decode LocalConsolePassword where decode = genericDecode options
instance encodeLocalConsolePassword :: Encode LocalConsolePassword where encode = genericEncode options



-- | <p>The ARN of the backend storage used for storing file data. </p>
newtype LocationARN = LocationARN String
derive instance newtypeLocationARN :: Newtype LocationARN _
derive instance repGenericLocationARN :: Generic LocationARN _
instance showLocationARN :: Show LocationARN where show = genericShow
instance decodeLocationARN :: Decode LocationARN where decode = genericDecode options
instance encodeLocationARN :: Encode LocationARN where encode = genericEncode options



newtype Marker = Marker String
derive instance newtypeMarker :: Newtype Marker _
derive instance repGenericMarker :: Generic Marker _
instance showMarker :: Show Marker where show = genericShow
instance decodeMarker :: Decode Marker where decode = genericDecode options
instance encodeMarker :: Encode Marker where encode = genericEncode options



newtype MediumChangerType = MediumChangerType String
derive instance newtypeMediumChangerType :: Newtype MediumChangerType _
derive instance repGenericMediumChangerType :: Generic MediumChangerType _
instance showMediumChangerType :: Show MediumChangerType where show = genericShow
instance decodeMediumChangerType :: Decode MediumChangerType where decode = genericDecode options
instance encodeMediumChangerType :: Encode MediumChangerType where encode = genericEncode options



newtype MinuteOfHour = MinuteOfHour Int
derive instance newtypeMinuteOfHour :: Newtype MinuteOfHour _
derive instance repGenericMinuteOfHour :: Generic MinuteOfHour _
instance showMinuteOfHour :: Show MinuteOfHour where show = genericShow
instance decodeMinuteOfHour :: Decode MinuteOfHour where decode = genericDecode options
instance encodeMinuteOfHour :: Encode MinuteOfHour where encode = genericEncode options



-- | <p>Describes file share default values. Files and folders stored as Amazon S3 objects in S3 buckets don't, by default, have Unix file permissions assigned to them. Upon discovery in an S3 bucket by Storage Gateway, the S3 objects that represent files and folders are assigned these default Unix permissions. This operation is only supported in the file gateway type.</p>
newtype NFSFileShareDefaults = NFSFileShareDefaults 
  { "FileMode" :: Maybe (PermissionMode)
  , "DirectoryMode" :: Maybe (PermissionMode)
  , "GroupId" :: Maybe (PermissionId)
  , "OwnerId" :: Maybe (PermissionId)
  }
derive instance newtypeNFSFileShareDefaults :: Newtype NFSFileShareDefaults _
derive instance repGenericNFSFileShareDefaults :: Generic NFSFileShareDefaults _
instance showNFSFileShareDefaults :: Show NFSFileShareDefaults where show = genericShow
instance decodeNFSFileShareDefaults :: Decode NFSFileShareDefaults where decode = genericDecode options
instance encodeNFSFileShareDefaults :: Encode NFSFileShareDefaults where encode = genericEncode options

-- | Constructs NFSFileShareDefaults from required parameters
newNFSFileShareDefaults :: NFSFileShareDefaults
newNFSFileShareDefaults  = NFSFileShareDefaults { "DirectoryMode": Nothing, "FileMode": Nothing, "GroupId": Nothing, "OwnerId": Nothing }

-- | Constructs NFSFileShareDefaults's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNFSFileShareDefaults' :: ( { "FileMode" :: Maybe (PermissionMode) , "DirectoryMode" :: Maybe (PermissionMode) , "GroupId" :: Maybe (PermissionId) , "OwnerId" :: Maybe (PermissionId) } -> {"FileMode" :: Maybe (PermissionMode) , "DirectoryMode" :: Maybe (PermissionMode) , "GroupId" :: Maybe (PermissionId) , "OwnerId" :: Maybe (PermissionId) } ) -> NFSFileShareDefaults
newNFSFileShareDefaults'  customize = (NFSFileShareDefaults <<< customize) { "DirectoryMode": Nothing, "FileMode": Nothing, "GroupId": Nothing, "OwnerId": Nothing }



-- | <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
newtype NFSFileShareInfo = NFSFileShareInfo 
  { "NFSFileShareDefaults" :: Maybe (NFSFileShareDefaults)
  , "FileShareARN" :: Maybe (FileShareARN)
  , "FileShareId" :: Maybe (FileShareId)
  , "FileShareStatus" :: Maybe (FileShareStatus)
  , "GatewayARN" :: Maybe (GatewayARN)
  , "KMSEncrypted" :: Maybe (Boolean)
  , "KMSKey" :: Maybe (KMSKey)
  , "Path" :: Maybe (Path)
  , "Role" :: Maybe (Role)
  , "LocationARN" :: Maybe (LocationARN)
  , "DefaultStorageClass" :: Maybe (StorageClass)
  , "ObjectACL" :: Maybe (ObjectACL)
  , "ClientList" :: Maybe (FileShareClientList)
  , "Squash" :: Maybe (Squash)
  , "ReadOnly" :: Maybe (Boolean)
  , "GuessMIMETypeEnabled" :: Maybe (Boolean)
  , "RequesterPays" :: Maybe (Boolean)
  }
derive instance newtypeNFSFileShareInfo :: Newtype NFSFileShareInfo _
derive instance repGenericNFSFileShareInfo :: Generic NFSFileShareInfo _
instance showNFSFileShareInfo :: Show NFSFileShareInfo where show = genericShow
instance decodeNFSFileShareInfo :: Decode NFSFileShareInfo where decode = genericDecode options
instance encodeNFSFileShareInfo :: Encode NFSFileShareInfo where encode = genericEncode options

-- | Constructs NFSFileShareInfo from required parameters
newNFSFileShareInfo :: NFSFileShareInfo
newNFSFileShareInfo  = NFSFileShareInfo { "ClientList": Nothing, "DefaultStorageClass": Nothing, "FileShareARN": Nothing, "FileShareId": Nothing, "FileShareStatus": Nothing, "GatewayARN": Nothing, "GuessMIMETypeEnabled": Nothing, "KMSEncrypted": Nothing, "KMSKey": Nothing, "LocationARN": Nothing, "NFSFileShareDefaults": Nothing, "ObjectACL": Nothing, "Path": Nothing, "ReadOnly": Nothing, "RequesterPays": Nothing, "Role": Nothing, "Squash": Nothing }

-- | Constructs NFSFileShareInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNFSFileShareInfo' :: ( { "NFSFileShareDefaults" :: Maybe (NFSFileShareDefaults) , "FileShareARN" :: Maybe (FileShareARN) , "FileShareId" :: Maybe (FileShareId) , "FileShareStatus" :: Maybe (FileShareStatus) , "GatewayARN" :: Maybe (GatewayARN) , "KMSEncrypted" :: Maybe (Boolean) , "KMSKey" :: Maybe (KMSKey) , "Path" :: Maybe (Path) , "Role" :: Maybe (Role) , "LocationARN" :: Maybe (LocationARN) , "DefaultStorageClass" :: Maybe (StorageClass) , "ObjectACL" :: Maybe (ObjectACL) , "ClientList" :: Maybe (FileShareClientList) , "Squash" :: Maybe (Squash) , "ReadOnly" :: Maybe (Boolean) , "GuessMIMETypeEnabled" :: Maybe (Boolean) , "RequesterPays" :: Maybe (Boolean) } -> {"NFSFileShareDefaults" :: Maybe (NFSFileShareDefaults) , "FileShareARN" :: Maybe (FileShareARN) , "FileShareId" :: Maybe (FileShareId) , "FileShareStatus" :: Maybe (FileShareStatus) , "GatewayARN" :: Maybe (GatewayARN) , "KMSEncrypted" :: Maybe (Boolean) , "KMSKey" :: Maybe (KMSKey) , "Path" :: Maybe (Path) , "Role" :: Maybe (Role) , "LocationARN" :: Maybe (LocationARN) , "DefaultStorageClass" :: Maybe (StorageClass) , "ObjectACL" :: Maybe (ObjectACL) , "ClientList" :: Maybe (FileShareClientList) , "Squash" :: Maybe (Squash) , "ReadOnly" :: Maybe (Boolean) , "GuessMIMETypeEnabled" :: Maybe (Boolean) , "RequesterPays" :: Maybe (Boolean) } ) -> NFSFileShareInfo
newNFSFileShareInfo'  customize = (NFSFileShareInfo <<< customize) { "ClientList": Nothing, "DefaultStorageClass": Nothing, "FileShareARN": Nothing, "FileShareId": Nothing, "FileShareStatus": Nothing, "GatewayARN": Nothing, "GuessMIMETypeEnabled": Nothing, "KMSEncrypted": Nothing, "KMSKey": Nothing, "LocationARN": Nothing, "NFSFileShareDefaults": Nothing, "ObjectACL": Nothing, "Path": Nothing, "ReadOnly": Nothing, "RequesterPays": Nothing, "Role": Nothing, "Squash": Nothing }



newtype NFSFileShareInfoList = NFSFileShareInfoList (Array NFSFileShareInfo)
derive instance newtypeNFSFileShareInfoList :: Newtype NFSFileShareInfoList _
derive instance repGenericNFSFileShareInfoList :: Generic NFSFileShareInfoList _
instance showNFSFileShareInfoList :: Show NFSFileShareInfoList where show = genericShow
instance decodeNFSFileShareInfoList :: Decode NFSFileShareInfoList where decode = genericDecode options
instance encodeNFSFileShareInfoList :: Encode NFSFileShareInfoList where encode = genericEncode options



-- | <p>Describes a gateway's network interface.</p>
newtype NetworkInterface = NetworkInterface 
  { "Ipv4Address" :: Maybe (String)
  , "MacAddress" :: Maybe (String)
  , "Ipv6Address" :: Maybe (String)
  }
derive instance newtypeNetworkInterface :: Newtype NetworkInterface _
derive instance repGenericNetworkInterface :: Generic NetworkInterface _
instance showNetworkInterface :: Show NetworkInterface where show = genericShow
instance decodeNetworkInterface :: Decode NetworkInterface where decode = genericDecode options
instance encodeNetworkInterface :: Encode NetworkInterface where encode = genericEncode options

-- | Constructs NetworkInterface from required parameters
newNetworkInterface :: NetworkInterface
newNetworkInterface  = NetworkInterface { "Ipv4Address": Nothing, "Ipv6Address": Nothing, "MacAddress": Nothing }

-- | Constructs NetworkInterface's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNetworkInterface' :: ( { "Ipv4Address" :: Maybe (String) , "MacAddress" :: Maybe (String) , "Ipv6Address" :: Maybe (String) } -> {"Ipv4Address" :: Maybe (String) , "MacAddress" :: Maybe (String) , "Ipv6Address" :: Maybe (String) } ) -> NetworkInterface
newNetworkInterface'  customize = (NetworkInterface <<< customize) { "Ipv4Address": Nothing, "Ipv6Address": Nothing, "MacAddress": Nothing }



newtype NetworkInterfaceId = NetworkInterfaceId String
derive instance newtypeNetworkInterfaceId :: Newtype NetworkInterfaceId _
derive instance repGenericNetworkInterfaceId :: Generic NetworkInterfaceId _
instance showNetworkInterfaceId :: Show NetworkInterfaceId where show = genericShow
instance decodeNetworkInterfaceId :: Decode NetworkInterfaceId where decode = genericDecode options
instance encodeNetworkInterfaceId :: Encode NetworkInterfaceId where encode = genericEncode options



newtype NextUpdateAvailabilityDate = NextUpdateAvailabilityDate String
derive instance newtypeNextUpdateAvailabilityDate :: Newtype NextUpdateAvailabilityDate _
derive instance repGenericNextUpdateAvailabilityDate :: Generic NextUpdateAvailabilityDate _
instance showNextUpdateAvailabilityDate :: Show NextUpdateAvailabilityDate where show = genericShow
instance decodeNextUpdateAvailabilityDate :: Decode NextUpdateAvailabilityDate where decode = genericDecode options
instance encodeNextUpdateAvailabilityDate :: Encode NextUpdateAvailabilityDate where encode = genericEncode options



-- | <p>The randomly generated ID of the notification that was sent. This ID is in UUID format.</p>
newtype NotificationId = NotificationId String
derive instance newtypeNotificationId :: Newtype NotificationId _
derive instance repGenericNotificationId :: Generic NotificationId _
instance showNotificationId :: Show NotificationId where show = genericShow
instance decodeNotificationId :: Decode NotificationId where decode = genericDecode options
instance encodeNotificationId :: Encode NotificationId where encode = genericEncode options



newtype NotifyWhenUploadedInput = NotifyWhenUploadedInput 
  { "FileShareARN" :: (FileShareARN)
  }
derive instance newtypeNotifyWhenUploadedInput :: Newtype NotifyWhenUploadedInput _
derive instance repGenericNotifyWhenUploadedInput :: Generic NotifyWhenUploadedInput _
instance showNotifyWhenUploadedInput :: Show NotifyWhenUploadedInput where show = genericShow
instance decodeNotifyWhenUploadedInput :: Decode NotifyWhenUploadedInput where decode = genericDecode options
instance encodeNotifyWhenUploadedInput :: Encode NotifyWhenUploadedInput where encode = genericEncode options

-- | Constructs NotifyWhenUploadedInput from required parameters
newNotifyWhenUploadedInput :: FileShareARN -> NotifyWhenUploadedInput
newNotifyWhenUploadedInput _FileShareARN = NotifyWhenUploadedInput { "FileShareARN": _FileShareARN }

-- | Constructs NotifyWhenUploadedInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyWhenUploadedInput' :: FileShareARN -> ( { "FileShareARN" :: (FileShareARN) } -> {"FileShareARN" :: (FileShareARN) } ) -> NotifyWhenUploadedInput
newNotifyWhenUploadedInput' _FileShareARN customize = (NotifyWhenUploadedInput <<< customize) { "FileShareARN": _FileShareARN }



newtype NotifyWhenUploadedOutput = NotifyWhenUploadedOutput 
  { "FileShareARN" :: Maybe (FileShareARN)
  , "NotificationId" :: Maybe (NotificationId)
  }
derive instance newtypeNotifyWhenUploadedOutput :: Newtype NotifyWhenUploadedOutput _
derive instance repGenericNotifyWhenUploadedOutput :: Generic NotifyWhenUploadedOutput _
instance showNotifyWhenUploadedOutput :: Show NotifyWhenUploadedOutput where show = genericShow
instance decodeNotifyWhenUploadedOutput :: Decode NotifyWhenUploadedOutput where decode = genericDecode options
instance encodeNotifyWhenUploadedOutput :: Encode NotifyWhenUploadedOutput where encode = genericEncode options

-- | Constructs NotifyWhenUploadedOutput from required parameters
newNotifyWhenUploadedOutput :: NotifyWhenUploadedOutput
newNotifyWhenUploadedOutput  = NotifyWhenUploadedOutput { "FileShareARN": Nothing, "NotificationId": Nothing }

-- | Constructs NotifyWhenUploadedOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotifyWhenUploadedOutput' :: ( { "FileShareARN" :: Maybe (FileShareARN) , "NotificationId" :: Maybe (NotificationId) } -> {"FileShareARN" :: Maybe (FileShareARN) , "NotificationId" :: Maybe (NotificationId) } ) -> NotifyWhenUploadedOutput
newNotifyWhenUploadedOutput'  customize = (NotifyWhenUploadedOutput <<< customize) { "FileShareARN": Nothing, "NotificationId": Nothing }



newtype NumTapesToCreate = NumTapesToCreate Int
derive instance newtypeNumTapesToCreate :: Newtype NumTapesToCreate _
derive instance repGenericNumTapesToCreate :: Generic NumTapesToCreate _
instance showNumTapesToCreate :: Show NumTapesToCreate where show = genericShow
instance decodeNumTapesToCreate :: Decode NumTapesToCreate where decode = genericDecode options
instance encodeNumTapesToCreate :: Encode NumTapesToCreate where encode = genericEncode options



-- | <p>Sets the access control list permission for objects in the S3 bucket that a file gateway puts objects into. The default value is "private".</p>
newtype ObjectACL = ObjectACL String
derive instance newtypeObjectACL :: Newtype ObjectACL _
derive instance repGenericObjectACL :: Generic ObjectACL _
instance showObjectACL :: Show ObjectACL where show = genericShow
instance decodeObjectACL :: Decode ObjectACL where decode = genericDecode options
instance encodeObjectACL :: Encode ObjectACL where encode = genericEncode options



-- | <p>The file share path used by the NFS client to identify the mount point. </p>
newtype Path = Path String
derive instance newtypePath :: Newtype Path _
derive instance repGenericPath :: Generic Path _
instance showPath :: Show Path where show = genericShow
instance decodePath :: Decode Path where decode = genericDecode options
instance encodePath :: Encode Path where encode = genericEncode options



newtype PermissionId = PermissionId Number
derive instance newtypePermissionId :: Newtype PermissionId _
derive instance repGenericPermissionId :: Generic PermissionId _
instance showPermissionId :: Show PermissionId where show = genericShow
instance decodePermissionId :: Decode PermissionId where decode = genericDecode options
instance encodePermissionId :: Encode PermissionId where encode = genericEncode options



newtype PermissionMode = PermissionMode String
derive instance newtypePermissionMode :: Newtype PermissionMode _
derive instance repGenericPermissionMode :: Generic PermissionMode _
instance showPermissionMode :: Show PermissionMode where show = genericShow
instance decodePermissionMode :: Decode PermissionMode where decode = genericDecode options
instance encodePermissionMode :: Encode PermissionMode where encode = genericEncode options



newtype PositiveIntObject = PositiveIntObject Int
derive instance newtypePositiveIntObject :: Newtype PositiveIntObject _
derive instance repGenericPositiveIntObject :: Generic PositiveIntObject _
instance showPositiveIntObject :: Show PositiveIntObject where show = genericShow
instance decodePositiveIntObject :: Decode PositiveIntObject where decode = genericDecode options
instance encodePositiveIntObject :: Encode PositiveIntObject where encode = genericEncode options



newtype RecurrenceInHours = RecurrenceInHours Int
derive instance newtypeRecurrenceInHours :: Newtype RecurrenceInHours _
derive instance repGenericRecurrenceInHours :: Generic RecurrenceInHours _
instance showRecurrenceInHours :: Show RecurrenceInHours where show = genericShow
instance decodeRecurrenceInHours :: Decode RecurrenceInHours where decode = genericDecode options
instance encodeRecurrenceInHours :: Encode RecurrenceInHours where encode = genericEncode options



newtype RefreshCacheInput = RefreshCacheInput 
  { "FileShareARN" :: (FileShareARN)
  }
derive instance newtypeRefreshCacheInput :: Newtype RefreshCacheInput _
derive instance repGenericRefreshCacheInput :: Generic RefreshCacheInput _
instance showRefreshCacheInput :: Show RefreshCacheInput where show = genericShow
instance decodeRefreshCacheInput :: Decode RefreshCacheInput where decode = genericDecode options
instance encodeRefreshCacheInput :: Encode RefreshCacheInput where encode = genericEncode options

-- | Constructs RefreshCacheInput from required parameters
newRefreshCacheInput :: FileShareARN -> RefreshCacheInput
newRefreshCacheInput _FileShareARN = RefreshCacheInput { "FileShareARN": _FileShareARN }

-- | Constructs RefreshCacheInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRefreshCacheInput' :: FileShareARN -> ( { "FileShareARN" :: (FileShareARN) } -> {"FileShareARN" :: (FileShareARN) } ) -> RefreshCacheInput
newRefreshCacheInput' _FileShareARN customize = (RefreshCacheInput <<< customize) { "FileShareARN": _FileShareARN }



newtype RefreshCacheOutput = RefreshCacheOutput 
  { "FileShareARN" :: Maybe (FileShareARN)
  }
derive instance newtypeRefreshCacheOutput :: Newtype RefreshCacheOutput _
derive instance repGenericRefreshCacheOutput :: Generic RefreshCacheOutput _
instance showRefreshCacheOutput :: Show RefreshCacheOutput where show = genericShow
instance decodeRefreshCacheOutput :: Decode RefreshCacheOutput where decode = genericDecode options
instance encodeRefreshCacheOutput :: Encode RefreshCacheOutput where encode = genericEncode options

-- | Constructs RefreshCacheOutput from required parameters
newRefreshCacheOutput :: RefreshCacheOutput
newRefreshCacheOutput  = RefreshCacheOutput { "FileShareARN": Nothing }

-- | Constructs RefreshCacheOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRefreshCacheOutput' :: ( { "FileShareARN" :: Maybe (FileShareARN) } -> {"FileShareARN" :: Maybe (FileShareARN) } ) -> RefreshCacheOutput
newRefreshCacheOutput'  customize = (RefreshCacheOutput <<< customize) { "FileShareARN": Nothing }



newtype RegionId = RegionId String
derive instance newtypeRegionId :: Newtype RegionId _
derive instance repGenericRegionId :: Generic RegionId _
instance showRegionId :: Show RegionId where show = genericShow
instance decodeRegionId :: Decode RegionId where decode = genericDecode options
instance encodeRegionId :: Encode RegionId where encode = genericEncode options



-- | <p>RemoveTagsFromResourceInput</p>
newtype RemoveTagsFromResourceInput = RemoveTagsFromResourceInput 
  { "ResourceARN" :: (ResourceARN)
  , "TagKeys" :: (TagKeys)
  }
derive instance newtypeRemoveTagsFromResourceInput :: Newtype RemoveTagsFromResourceInput _
derive instance repGenericRemoveTagsFromResourceInput :: Generic RemoveTagsFromResourceInput _
instance showRemoveTagsFromResourceInput :: Show RemoveTagsFromResourceInput where show = genericShow
instance decodeRemoveTagsFromResourceInput :: Decode RemoveTagsFromResourceInput where decode = genericDecode options
instance encodeRemoveTagsFromResourceInput :: Encode RemoveTagsFromResourceInput where encode = genericEncode options

-- | Constructs RemoveTagsFromResourceInput from required parameters
newRemoveTagsFromResourceInput :: ResourceARN -> TagKeys -> RemoveTagsFromResourceInput
newRemoveTagsFromResourceInput _ResourceARN _TagKeys = RemoveTagsFromResourceInput { "ResourceARN": _ResourceARN, "TagKeys": _TagKeys }

-- | Constructs RemoveTagsFromResourceInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveTagsFromResourceInput' :: ResourceARN -> TagKeys -> ( { "ResourceARN" :: (ResourceARN) , "TagKeys" :: (TagKeys) } -> {"ResourceARN" :: (ResourceARN) , "TagKeys" :: (TagKeys) } ) -> RemoveTagsFromResourceInput
newRemoveTagsFromResourceInput' _ResourceARN _TagKeys customize = (RemoveTagsFromResourceInput <<< customize) { "ResourceARN": _ResourceARN, "TagKeys": _TagKeys }



-- | <p>RemoveTagsFromResourceOutput</p>
newtype RemoveTagsFromResourceOutput = RemoveTagsFromResourceOutput 
  { "ResourceARN" :: Maybe (ResourceARN)
  }
derive instance newtypeRemoveTagsFromResourceOutput :: Newtype RemoveTagsFromResourceOutput _
derive instance repGenericRemoveTagsFromResourceOutput :: Generic RemoveTagsFromResourceOutput _
instance showRemoveTagsFromResourceOutput :: Show RemoveTagsFromResourceOutput where show = genericShow
instance decodeRemoveTagsFromResourceOutput :: Decode RemoveTagsFromResourceOutput where decode = genericDecode options
instance encodeRemoveTagsFromResourceOutput :: Encode RemoveTagsFromResourceOutput where encode = genericEncode options

-- | Constructs RemoveTagsFromResourceOutput from required parameters
newRemoveTagsFromResourceOutput :: RemoveTagsFromResourceOutput
newRemoveTagsFromResourceOutput  = RemoveTagsFromResourceOutput { "ResourceARN": Nothing }

-- | Constructs RemoveTagsFromResourceOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveTagsFromResourceOutput' :: ( { "ResourceARN" :: Maybe (ResourceARN) } -> {"ResourceARN" :: Maybe (ResourceARN) } ) -> RemoveTagsFromResourceOutput
newRemoveTagsFromResourceOutput'  customize = (RemoveTagsFromResourceOutput <<< customize) { "ResourceARN": Nothing }



newtype ResetCacheInput = ResetCacheInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeResetCacheInput :: Newtype ResetCacheInput _
derive instance repGenericResetCacheInput :: Generic ResetCacheInput _
instance showResetCacheInput :: Show ResetCacheInput where show = genericShow
instance decodeResetCacheInput :: Decode ResetCacheInput where decode = genericDecode options
instance encodeResetCacheInput :: Encode ResetCacheInput where encode = genericEncode options

-- | Constructs ResetCacheInput from required parameters
newResetCacheInput :: GatewayARN -> ResetCacheInput
newResetCacheInput _GatewayARN = ResetCacheInput { "GatewayARN": _GatewayARN }

-- | Constructs ResetCacheInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResetCacheInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> ResetCacheInput
newResetCacheInput' _GatewayARN customize = (ResetCacheInput <<< customize) { "GatewayARN": _GatewayARN }



newtype ResetCacheOutput = ResetCacheOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeResetCacheOutput :: Newtype ResetCacheOutput _
derive instance repGenericResetCacheOutput :: Generic ResetCacheOutput _
instance showResetCacheOutput :: Show ResetCacheOutput where show = genericShow
instance decodeResetCacheOutput :: Decode ResetCacheOutput where decode = genericDecode options
instance encodeResetCacheOutput :: Encode ResetCacheOutput where encode = genericEncode options

-- | Constructs ResetCacheOutput from required parameters
newResetCacheOutput :: ResetCacheOutput
newResetCacheOutput  = ResetCacheOutput { "GatewayARN": Nothing }

-- | Constructs ResetCacheOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResetCacheOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> ResetCacheOutput
newResetCacheOutput'  customize = (ResetCacheOutput <<< customize) { "GatewayARN": Nothing }



newtype ResourceARN = ResourceARN String
derive instance newtypeResourceARN :: Newtype ResourceARN _
derive instance repGenericResourceARN :: Generic ResourceARN _
instance showResourceARN :: Show ResourceARN where show = genericShow
instance decodeResourceARN :: Decode ResourceARN where decode = genericDecode options
instance encodeResourceARN :: Encode ResourceARN where encode = genericEncode options



-- | <p>RetrieveTapeArchiveInput</p>
newtype RetrieveTapeArchiveInput = RetrieveTapeArchiveInput 
  { "TapeARN" :: (TapeARN)
  , "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeRetrieveTapeArchiveInput :: Newtype RetrieveTapeArchiveInput _
derive instance repGenericRetrieveTapeArchiveInput :: Generic RetrieveTapeArchiveInput _
instance showRetrieveTapeArchiveInput :: Show RetrieveTapeArchiveInput where show = genericShow
instance decodeRetrieveTapeArchiveInput :: Decode RetrieveTapeArchiveInput where decode = genericDecode options
instance encodeRetrieveTapeArchiveInput :: Encode RetrieveTapeArchiveInput where encode = genericEncode options

-- | Constructs RetrieveTapeArchiveInput from required parameters
newRetrieveTapeArchiveInput :: GatewayARN -> TapeARN -> RetrieveTapeArchiveInput
newRetrieveTapeArchiveInput _GatewayARN _TapeARN = RetrieveTapeArchiveInput { "GatewayARN": _GatewayARN, "TapeARN": _TapeARN }

-- | Constructs RetrieveTapeArchiveInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetrieveTapeArchiveInput' :: GatewayARN -> TapeARN -> ( { "TapeARN" :: (TapeARN) , "GatewayARN" :: (GatewayARN) } -> {"TapeARN" :: (TapeARN) , "GatewayARN" :: (GatewayARN) } ) -> RetrieveTapeArchiveInput
newRetrieveTapeArchiveInput' _GatewayARN _TapeARN customize = (RetrieveTapeArchiveInput <<< customize) { "GatewayARN": _GatewayARN, "TapeARN": _TapeARN }



-- | <p>RetrieveTapeArchiveOutput</p>
newtype RetrieveTapeArchiveOutput = RetrieveTapeArchiveOutput 
  { "TapeARN" :: Maybe (TapeARN)
  }
derive instance newtypeRetrieveTapeArchiveOutput :: Newtype RetrieveTapeArchiveOutput _
derive instance repGenericRetrieveTapeArchiveOutput :: Generic RetrieveTapeArchiveOutput _
instance showRetrieveTapeArchiveOutput :: Show RetrieveTapeArchiveOutput where show = genericShow
instance decodeRetrieveTapeArchiveOutput :: Decode RetrieveTapeArchiveOutput where decode = genericDecode options
instance encodeRetrieveTapeArchiveOutput :: Encode RetrieveTapeArchiveOutput where encode = genericEncode options

-- | Constructs RetrieveTapeArchiveOutput from required parameters
newRetrieveTapeArchiveOutput :: RetrieveTapeArchiveOutput
newRetrieveTapeArchiveOutput  = RetrieveTapeArchiveOutput { "TapeARN": Nothing }

-- | Constructs RetrieveTapeArchiveOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetrieveTapeArchiveOutput' :: ( { "TapeARN" :: Maybe (TapeARN) } -> {"TapeARN" :: Maybe (TapeARN) } ) -> RetrieveTapeArchiveOutput
newRetrieveTapeArchiveOutput'  customize = (RetrieveTapeArchiveOutput <<< customize) { "TapeARN": Nothing }



-- | <p>RetrieveTapeRecoveryPointInput</p>
newtype RetrieveTapeRecoveryPointInput = RetrieveTapeRecoveryPointInput 
  { "TapeARN" :: (TapeARN)
  , "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeRetrieveTapeRecoveryPointInput :: Newtype RetrieveTapeRecoveryPointInput _
derive instance repGenericRetrieveTapeRecoveryPointInput :: Generic RetrieveTapeRecoveryPointInput _
instance showRetrieveTapeRecoveryPointInput :: Show RetrieveTapeRecoveryPointInput where show = genericShow
instance decodeRetrieveTapeRecoveryPointInput :: Decode RetrieveTapeRecoveryPointInput where decode = genericDecode options
instance encodeRetrieveTapeRecoveryPointInput :: Encode RetrieveTapeRecoveryPointInput where encode = genericEncode options

-- | Constructs RetrieveTapeRecoveryPointInput from required parameters
newRetrieveTapeRecoveryPointInput :: GatewayARN -> TapeARN -> RetrieveTapeRecoveryPointInput
newRetrieveTapeRecoveryPointInput _GatewayARN _TapeARN = RetrieveTapeRecoveryPointInput { "GatewayARN": _GatewayARN, "TapeARN": _TapeARN }

-- | Constructs RetrieveTapeRecoveryPointInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetrieveTapeRecoveryPointInput' :: GatewayARN -> TapeARN -> ( { "TapeARN" :: (TapeARN) , "GatewayARN" :: (GatewayARN) } -> {"TapeARN" :: (TapeARN) , "GatewayARN" :: (GatewayARN) } ) -> RetrieveTapeRecoveryPointInput
newRetrieveTapeRecoveryPointInput' _GatewayARN _TapeARN customize = (RetrieveTapeRecoveryPointInput <<< customize) { "GatewayARN": _GatewayARN, "TapeARN": _TapeARN }



-- | <p>RetrieveTapeRecoveryPointOutput</p>
newtype RetrieveTapeRecoveryPointOutput = RetrieveTapeRecoveryPointOutput 
  { "TapeARN" :: Maybe (TapeARN)
  }
derive instance newtypeRetrieveTapeRecoveryPointOutput :: Newtype RetrieveTapeRecoveryPointOutput _
derive instance repGenericRetrieveTapeRecoveryPointOutput :: Generic RetrieveTapeRecoveryPointOutput _
instance showRetrieveTapeRecoveryPointOutput :: Show RetrieveTapeRecoveryPointOutput where show = genericShow
instance decodeRetrieveTapeRecoveryPointOutput :: Decode RetrieveTapeRecoveryPointOutput where decode = genericDecode options
instance encodeRetrieveTapeRecoveryPointOutput :: Encode RetrieveTapeRecoveryPointOutput where encode = genericEncode options

-- | Constructs RetrieveTapeRecoveryPointOutput from required parameters
newRetrieveTapeRecoveryPointOutput :: RetrieveTapeRecoveryPointOutput
newRetrieveTapeRecoveryPointOutput  = RetrieveTapeRecoveryPointOutput { "TapeARN": Nothing }

-- | Constructs RetrieveTapeRecoveryPointOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetrieveTapeRecoveryPointOutput' :: ( { "TapeARN" :: Maybe (TapeARN) } -> {"TapeARN" :: Maybe (TapeARN) } ) -> RetrieveTapeRecoveryPointOutput
newRetrieveTapeRecoveryPointOutput'  customize = (RetrieveTapeRecoveryPointOutput <<< customize) { "TapeARN": Nothing }



-- | <p>The ARN of the IAM role that file gateway assumes when it accesses the underlying storage. </p>
newtype Role = Role String
derive instance newtypeRole :: Newtype Role _
derive instance repGenericRole :: Generic Role _
instance showRole :: Show Role where show = genericShow
instance decodeRole :: Decode Role where decode = genericDecode options
instance encodeRole :: Encode Role where encode = genericEncode options



-- | <p>An internal server error has occurred because the service is unavailable. For more information, see the error and message fields.</p>
newtype ServiceUnavailableError = ServiceUnavailableError 
  { "message" :: Maybe (String)
  , "error" :: Maybe (StorageGatewayError)
  }
derive instance newtypeServiceUnavailableError :: Newtype ServiceUnavailableError _
derive instance repGenericServiceUnavailableError :: Generic ServiceUnavailableError _
instance showServiceUnavailableError :: Show ServiceUnavailableError where show = genericShow
instance decodeServiceUnavailableError :: Decode ServiceUnavailableError where decode = genericDecode options
instance encodeServiceUnavailableError :: Encode ServiceUnavailableError where encode = genericEncode options

-- | Constructs ServiceUnavailableError from required parameters
newServiceUnavailableError :: ServiceUnavailableError
newServiceUnavailableError  = ServiceUnavailableError { "error": Nothing, "message": Nothing }

-- | Constructs ServiceUnavailableError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceUnavailableError' :: ( { "message" :: Maybe (String) , "error" :: Maybe (StorageGatewayError) } -> {"message" :: Maybe (String) , "error" :: Maybe (StorageGatewayError) } ) -> ServiceUnavailableError
newServiceUnavailableError'  customize = (ServiceUnavailableError <<< customize) { "error": Nothing, "message": Nothing }



-- | <p>SetLocalConsolePasswordInput</p>
newtype SetLocalConsolePasswordInput = SetLocalConsolePasswordInput 
  { "GatewayARN" :: (GatewayARN)
  , "LocalConsolePassword" :: (LocalConsolePassword)
  }
derive instance newtypeSetLocalConsolePasswordInput :: Newtype SetLocalConsolePasswordInput _
derive instance repGenericSetLocalConsolePasswordInput :: Generic SetLocalConsolePasswordInput _
instance showSetLocalConsolePasswordInput :: Show SetLocalConsolePasswordInput where show = genericShow
instance decodeSetLocalConsolePasswordInput :: Decode SetLocalConsolePasswordInput where decode = genericDecode options
instance encodeSetLocalConsolePasswordInput :: Encode SetLocalConsolePasswordInput where encode = genericEncode options

-- | Constructs SetLocalConsolePasswordInput from required parameters
newSetLocalConsolePasswordInput :: GatewayARN -> LocalConsolePassword -> SetLocalConsolePasswordInput
newSetLocalConsolePasswordInput _GatewayARN _LocalConsolePassword = SetLocalConsolePasswordInput { "GatewayARN": _GatewayARN, "LocalConsolePassword": _LocalConsolePassword }

-- | Constructs SetLocalConsolePasswordInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetLocalConsolePasswordInput' :: GatewayARN -> LocalConsolePassword -> ( { "GatewayARN" :: (GatewayARN) , "LocalConsolePassword" :: (LocalConsolePassword) } -> {"GatewayARN" :: (GatewayARN) , "LocalConsolePassword" :: (LocalConsolePassword) } ) -> SetLocalConsolePasswordInput
newSetLocalConsolePasswordInput' _GatewayARN _LocalConsolePassword customize = (SetLocalConsolePasswordInput <<< customize) { "GatewayARN": _GatewayARN, "LocalConsolePassword": _LocalConsolePassword }



newtype SetLocalConsolePasswordOutput = SetLocalConsolePasswordOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeSetLocalConsolePasswordOutput :: Newtype SetLocalConsolePasswordOutput _
derive instance repGenericSetLocalConsolePasswordOutput :: Generic SetLocalConsolePasswordOutput _
instance showSetLocalConsolePasswordOutput :: Show SetLocalConsolePasswordOutput where show = genericShow
instance decodeSetLocalConsolePasswordOutput :: Decode SetLocalConsolePasswordOutput where decode = genericDecode options
instance encodeSetLocalConsolePasswordOutput :: Encode SetLocalConsolePasswordOutput where encode = genericEncode options

-- | Constructs SetLocalConsolePasswordOutput from required parameters
newSetLocalConsolePasswordOutput :: SetLocalConsolePasswordOutput
newSetLocalConsolePasswordOutput  = SetLocalConsolePasswordOutput { "GatewayARN": Nothing }

-- | Constructs SetLocalConsolePasswordOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetLocalConsolePasswordOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> SetLocalConsolePasswordOutput
newSetLocalConsolePasswordOutput'  customize = (SetLocalConsolePasswordOutput <<< customize) { "GatewayARN": Nothing }



-- | <p>A JSON object containing the of the gateway to shut down.</p>
newtype ShutdownGatewayInput = ShutdownGatewayInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeShutdownGatewayInput :: Newtype ShutdownGatewayInput _
derive instance repGenericShutdownGatewayInput :: Generic ShutdownGatewayInput _
instance showShutdownGatewayInput :: Show ShutdownGatewayInput where show = genericShow
instance decodeShutdownGatewayInput :: Decode ShutdownGatewayInput where decode = genericDecode options
instance encodeShutdownGatewayInput :: Encode ShutdownGatewayInput where encode = genericEncode options

-- | Constructs ShutdownGatewayInput from required parameters
newShutdownGatewayInput :: GatewayARN -> ShutdownGatewayInput
newShutdownGatewayInput _GatewayARN = ShutdownGatewayInput { "GatewayARN": _GatewayARN }

-- | Constructs ShutdownGatewayInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newShutdownGatewayInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> ShutdownGatewayInput
newShutdownGatewayInput' _GatewayARN customize = (ShutdownGatewayInput <<< customize) { "GatewayARN": _GatewayARN }



-- | <p>A JSON object containing the of the gateway that was shut down.</p>
newtype ShutdownGatewayOutput = ShutdownGatewayOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeShutdownGatewayOutput :: Newtype ShutdownGatewayOutput _
derive instance repGenericShutdownGatewayOutput :: Generic ShutdownGatewayOutput _
instance showShutdownGatewayOutput :: Show ShutdownGatewayOutput where show = genericShow
instance decodeShutdownGatewayOutput :: Decode ShutdownGatewayOutput where decode = genericDecode options
instance encodeShutdownGatewayOutput :: Encode ShutdownGatewayOutput where encode = genericEncode options

-- | Constructs ShutdownGatewayOutput from required parameters
newShutdownGatewayOutput :: ShutdownGatewayOutput
newShutdownGatewayOutput  = ShutdownGatewayOutput { "GatewayARN": Nothing }

-- | Constructs ShutdownGatewayOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newShutdownGatewayOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> ShutdownGatewayOutput
newShutdownGatewayOutput'  customize = (ShutdownGatewayOutput <<< customize) { "GatewayARN": Nothing }



newtype SnapshotDescription = SnapshotDescription String
derive instance newtypeSnapshotDescription :: Newtype SnapshotDescription _
derive instance repGenericSnapshotDescription :: Generic SnapshotDescription _
instance showSnapshotDescription :: Show SnapshotDescription where show = genericShow
instance decodeSnapshotDescription :: Decode SnapshotDescription where decode = genericDecode options
instance encodeSnapshotDescription :: Encode SnapshotDescription where encode = genericEncode options



newtype SnapshotId = SnapshotId String
derive instance newtypeSnapshotId :: Newtype SnapshotId _
derive instance repGenericSnapshotId :: Generic SnapshotId _
instance showSnapshotId :: Show SnapshotId where show = genericShow
instance decodeSnapshotId :: Decode SnapshotId where decode = genericDecode options
instance encodeSnapshotId :: Encode SnapshotId where encode = genericEncode options



-- | <p>The user mapped to anonymous user. Valid options are the following: </p> <ul> <li> <p>"RootSquash" - Only root is mapped to anonymous user.</p> </li> <li> <p>"NoSquash" - No one is mapped to anonymous user</p> </li> <li> <p>"AllSquash" - Everyone is mapped to anonymous user.</p> </li> </ul>
newtype Squash = Squash String
derive instance newtypeSquash :: Newtype Squash _
derive instance repGenericSquash :: Generic Squash _
instance showSquash :: Show Squash where show = genericShow
instance decodeSquash :: Decode Squash where decode = genericDecode options
instance encodeSquash :: Encode Squash where encode = genericEncode options



-- | <p>A JSON object containing the of the gateway to start.</p>
newtype StartGatewayInput = StartGatewayInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeStartGatewayInput :: Newtype StartGatewayInput _
derive instance repGenericStartGatewayInput :: Generic StartGatewayInput _
instance showStartGatewayInput :: Show StartGatewayInput where show = genericShow
instance decodeStartGatewayInput :: Decode StartGatewayInput where decode = genericDecode options
instance encodeStartGatewayInput :: Encode StartGatewayInput where encode = genericEncode options

-- | Constructs StartGatewayInput from required parameters
newStartGatewayInput :: GatewayARN -> StartGatewayInput
newStartGatewayInput _GatewayARN = StartGatewayInput { "GatewayARN": _GatewayARN }

-- | Constructs StartGatewayInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartGatewayInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> StartGatewayInput
newStartGatewayInput' _GatewayARN customize = (StartGatewayInput <<< customize) { "GatewayARN": _GatewayARN }



-- | <p>A JSON object containing the of the gateway that was restarted.</p>
newtype StartGatewayOutput = StartGatewayOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeStartGatewayOutput :: Newtype StartGatewayOutput _
derive instance repGenericStartGatewayOutput :: Generic StartGatewayOutput _
instance showStartGatewayOutput :: Show StartGatewayOutput where show = genericShow
instance decodeStartGatewayOutput :: Decode StartGatewayOutput where decode = genericDecode options
instance encodeStartGatewayOutput :: Encode StartGatewayOutput where encode = genericEncode options

-- | Constructs StartGatewayOutput from required parameters
newStartGatewayOutput :: StartGatewayOutput
newStartGatewayOutput  = StartGatewayOutput { "GatewayARN": Nothing }

-- | Constructs StartGatewayOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartGatewayOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> StartGatewayOutput
newStartGatewayOutput'  customize = (StartGatewayOutput <<< customize) { "GatewayARN": Nothing }



-- | <p/>
newtype StorageClass = StorageClass String
derive instance newtypeStorageClass :: Newtype StorageClass _
derive instance repGenericStorageClass :: Generic StorageClass _
instance showStorageClass :: Show StorageClass where show = genericShow
instance decodeStorageClass :: Decode StorageClass where decode = genericDecode options
instance encodeStorageClass :: Encode StorageClass where encode = genericEncode options



-- | <p>Provides additional information about an error that was returned by the service as an or. See the <code>errorCode</code> and <code>errorDetails</code> members for more information about the error.</p>
newtype StorageGatewayError = StorageGatewayError 
  { "errorCode" :: Maybe (ErrorCode)
  , "errorDetails" :: Maybe (ErrorDetails')
  }
derive instance newtypeStorageGatewayError :: Newtype StorageGatewayError _
derive instance repGenericStorageGatewayError :: Generic StorageGatewayError _
instance showStorageGatewayError :: Show StorageGatewayError where show = genericShow
instance decodeStorageGatewayError :: Decode StorageGatewayError where decode = genericDecode options
instance encodeStorageGatewayError :: Encode StorageGatewayError where encode = genericEncode options

-- | Constructs StorageGatewayError from required parameters
newStorageGatewayError :: StorageGatewayError
newStorageGatewayError  = StorageGatewayError { "errorCode": Nothing, "errorDetails": Nothing }

-- | Constructs StorageGatewayError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStorageGatewayError' :: ( { "errorCode" :: Maybe (ErrorCode) , "errorDetails" :: Maybe (ErrorDetails') } -> {"errorCode" :: Maybe (ErrorCode) , "errorDetails" :: Maybe (ErrorDetails') } ) -> StorageGatewayError
newStorageGatewayError'  customize = (StorageGatewayError <<< customize) { "errorCode": Nothing, "errorDetails": Nothing }



-- | <p>Describes an iSCSI stored volume.</p>
newtype StorediSCSIVolume = StorediSCSIVolume 
  { "VolumeARN" :: Maybe (VolumeARN)
  , "VolumeId" :: Maybe (VolumeId)
  , "VolumeType" :: Maybe (VolumeType)
  , "VolumeStatus" :: Maybe (VolumeStatus)
  , "VolumeSizeInBytes" :: Maybe (Number)
  , "VolumeProgress" :: Maybe (DoubleObject)
  , "VolumeDiskId" :: Maybe (DiskId)
  , "SourceSnapshotId" :: Maybe (SnapshotId)
  , "PreservedExistingData" :: Maybe (Boolean)
  , "VolumeiSCSIAttributes" :: Maybe (VolumeiSCSIAttributes)
  , "CreatedDate" :: Maybe (CreatedDate)
  , "VolumeUsedInBytes" :: Maybe (VolumeUsedInBytes)
  }
derive instance newtypeStorediSCSIVolume :: Newtype StorediSCSIVolume _
derive instance repGenericStorediSCSIVolume :: Generic StorediSCSIVolume _
instance showStorediSCSIVolume :: Show StorediSCSIVolume where show = genericShow
instance decodeStorediSCSIVolume :: Decode StorediSCSIVolume where decode = genericDecode options
instance encodeStorediSCSIVolume :: Encode StorediSCSIVolume where encode = genericEncode options

-- | Constructs StorediSCSIVolume from required parameters
newStorediSCSIVolume :: StorediSCSIVolume
newStorediSCSIVolume  = StorediSCSIVolume { "CreatedDate": Nothing, "PreservedExistingData": Nothing, "SourceSnapshotId": Nothing, "VolumeARN": Nothing, "VolumeDiskId": Nothing, "VolumeId": Nothing, "VolumeProgress": Nothing, "VolumeSizeInBytes": Nothing, "VolumeStatus": Nothing, "VolumeType": Nothing, "VolumeUsedInBytes": Nothing, "VolumeiSCSIAttributes": Nothing }

-- | Constructs StorediSCSIVolume's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStorediSCSIVolume' :: ( { "VolumeARN" :: Maybe (VolumeARN) , "VolumeId" :: Maybe (VolumeId) , "VolumeType" :: Maybe (VolumeType) , "VolumeStatus" :: Maybe (VolumeStatus) , "VolumeSizeInBytes" :: Maybe (Number) , "VolumeProgress" :: Maybe (DoubleObject) , "VolumeDiskId" :: Maybe (DiskId) , "SourceSnapshotId" :: Maybe (SnapshotId) , "PreservedExistingData" :: Maybe (Boolean) , "VolumeiSCSIAttributes" :: Maybe (VolumeiSCSIAttributes) , "CreatedDate" :: Maybe (CreatedDate) , "VolumeUsedInBytes" :: Maybe (VolumeUsedInBytes) } -> {"VolumeARN" :: Maybe (VolumeARN) , "VolumeId" :: Maybe (VolumeId) , "VolumeType" :: Maybe (VolumeType) , "VolumeStatus" :: Maybe (VolumeStatus) , "VolumeSizeInBytes" :: Maybe (Number) , "VolumeProgress" :: Maybe (DoubleObject) , "VolumeDiskId" :: Maybe (DiskId) , "SourceSnapshotId" :: Maybe (SnapshotId) , "PreservedExistingData" :: Maybe (Boolean) , "VolumeiSCSIAttributes" :: Maybe (VolumeiSCSIAttributes) , "CreatedDate" :: Maybe (CreatedDate) , "VolumeUsedInBytes" :: Maybe (VolumeUsedInBytes) } ) -> StorediSCSIVolume
newStorediSCSIVolume'  customize = (StorediSCSIVolume <<< customize) { "CreatedDate": Nothing, "PreservedExistingData": Nothing, "SourceSnapshotId": Nothing, "VolumeARN": Nothing, "VolumeDiskId": Nothing, "VolumeId": Nothing, "VolumeProgress": Nothing, "VolumeSizeInBytes": Nothing, "VolumeStatus": Nothing, "VolumeType": Nothing, "VolumeUsedInBytes": Nothing, "VolumeiSCSIAttributes": Nothing }



newtype StorediSCSIVolumes = StorediSCSIVolumes (Array StorediSCSIVolume)
derive instance newtypeStorediSCSIVolumes :: Newtype StorediSCSIVolumes _
derive instance repGenericStorediSCSIVolumes :: Generic StorediSCSIVolumes _
instance showStorediSCSIVolumes :: Show StorediSCSIVolumes where show = genericShow
instance decodeStorediSCSIVolumes :: Decode StorediSCSIVolumes where decode = genericDecode options
instance encodeStorediSCSIVolumes :: Encode StorediSCSIVolumes where encode = genericEncode options



newtype Tag = Tag 
  { "Key" :: (TagKey)
  , "Value" :: (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: TagKey -> TagValue -> Tag
newTag _Key _Value = Tag { "Key": _Key, "Value": _Value }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: TagKey -> TagValue -> ( { "Key" :: (TagKey) , "Value" :: (TagValue) } -> {"Key" :: (TagKey) , "Value" :: (TagValue) } ) -> Tag
newTag' _Key _Value customize = (Tag <<< customize) { "Key": _Key, "Value": _Value }



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeys = TagKeys (Array TagKey)
derive instance newtypeTagKeys :: Newtype TagKeys _
derive instance repGenericTagKeys :: Generic TagKeys _
instance showTagKeys :: Show TagKeys where show = genericShow
instance decodeTagKeys :: Decode TagKeys where decode = genericDecode options
instance encodeTagKeys :: Encode TagKeys where encode = genericEncode options



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



newtype Tags = Tags (Array Tag)
derive instance newtypeTags :: Newtype Tags _
derive instance repGenericTags :: Generic Tags _
instance showTags :: Show Tags where show = genericShow
instance decodeTags :: Decode Tags where decode = genericDecode options
instance encodeTags :: Encode Tags where encode = genericEncode options



-- | <p>Describes a virtual tape object.</p>
newtype Tape = Tape 
  { "TapeARN" :: Maybe (TapeARN)
  , "TapeBarcode" :: Maybe (TapeBarcode)
  , "TapeCreatedDate" :: Maybe (Time)
  , "TapeSizeInBytes" :: Maybe (TapeSize)
  , "TapeStatus" :: Maybe (TapeStatus)
  , "VTLDevice" :: Maybe (VTLDeviceARN)
  , "Progress" :: Maybe (DoubleObject)
  , "TapeUsedInBytes" :: Maybe (TapeUsage)
  }
derive instance newtypeTape :: Newtype Tape _
derive instance repGenericTape :: Generic Tape _
instance showTape :: Show Tape where show = genericShow
instance decodeTape :: Decode Tape where decode = genericDecode options
instance encodeTape :: Encode Tape where encode = genericEncode options

-- | Constructs Tape from required parameters
newTape :: Tape
newTape  = Tape { "Progress": Nothing, "TapeARN": Nothing, "TapeBarcode": Nothing, "TapeCreatedDate": Nothing, "TapeSizeInBytes": Nothing, "TapeStatus": Nothing, "TapeUsedInBytes": Nothing, "VTLDevice": Nothing }

-- | Constructs Tape's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTape' :: ( { "TapeARN" :: Maybe (TapeARN) , "TapeBarcode" :: Maybe (TapeBarcode) , "TapeCreatedDate" :: Maybe (Time) , "TapeSizeInBytes" :: Maybe (TapeSize) , "TapeStatus" :: Maybe (TapeStatus) , "VTLDevice" :: Maybe (VTLDeviceARN) , "Progress" :: Maybe (DoubleObject) , "TapeUsedInBytes" :: Maybe (TapeUsage) } -> {"TapeARN" :: Maybe (TapeARN) , "TapeBarcode" :: Maybe (TapeBarcode) , "TapeCreatedDate" :: Maybe (Time) , "TapeSizeInBytes" :: Maybe (TapeSize) , "TapeStatus" :: Maybe (TapeStatus) , "VTLDevice" :: Maybe (VTLDeviceARN) , "Progress" :: Maybe (DoubleObject) , "TapeUsedInBytes" :: Maybe (TapeUsage) } ) -> Tape
newTape'  customize = (Tape <<< customize) { "Progress": Nothing, "TapeARN": Nothing, "TapeBarcode": Nothing, "TapeCreatedDate": Nothing, "TapeSizeInBytes": Nothing, "TapeStatus": Nothing, "TapeUsedInBytes": Nothing, "VTLDevice": Nothing }



newtype TapeARN = TapeARN String
derive instance newtypeTapeARN :: Newtype TapeARN _
derive instance repGenericTapeARN :: Generic TapeARN _
instance showTapeARN :: Show TapeARN where show = genericShow
instance decodeTapeARN :: Decode TapeARN where decode = genericDecode options
instance encodeTapeARN :: Encode TapeARN where encode = genericEncode options



-- | <p>The Amazon Resource Name (ARN) of each of the tapes you want to list. If you don't specify a tape ARN, the response lists all tapes in both your VTL and VTS.</p>
newtype TapeARNs = TapeARNs (Array TapeARN)
derive instance newtypeTapeARNs :: Newtype TapeARNs _
derive instance repGenericTapeARNs :: Generic TapeARNs _
instance showTapeARNs :: Show TapeARNs where show = genericShow
instance decodeTapeARNs :: Decode TapeARNs where decode = genericDecode options
instance encodeTapeARNs :: Encode TapeARNs where encode = genericEncode options



-- | <p>Represents a virtual tape that is archived in the virtual tape shelf (VTS).</p>
newtype TapeArchive = TapeArchive 
  { "TapeARN" :: Maybe (TapeARN)
  , "TapeBarcode" :: Maybe (TapeBarcode)
  , "TapeCreatedDate" :: Maybe (Time)
  , "TapeSizeInBytes" :: Maybe (TapeSize)
  , "CompletionTime" :: Maybe (Time)
  , "RetrievedTo" :: Maybe (GatewayARN)
  , "TapeStatus" :: Maybe (TapeArchiveStatus)
  , "TapeUsedInBytes" :: Maybe (TapeUsage)
  }
derive instance newtypeTapeArchive :: Newtype TapeArchive _
derive instance repGenericTapeArchive :: Generic TapeArchive _
instance showTapeArchive :: Show TapeArchive where show = genericShow
instance decodeTapeArchive :: Decode TapeArchive where decode = genericDecode options
instance encodeTapeArchive :: Encode TapeArchive where encode = genericEncode options

-- | Constructs TapeArchive from required parameters
newTapeArchive :: TapeArchive
newTapeArchive  = TapeArchive { "CompletionTime": Nothing, "RetrievedTo": Nothing, "TapeARN": Nothing, "TapeBarcode": Nothing, "TapeCreatedDate": Nothing, "TapeSizeInBytes": Nothing, "TapeStatus": Nothing, "TapeUsedInBytes": Nothing }

-- | Constructs TapeArchive's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTapeArchive' :: ( { "TapeARN" :: Maybe (TapeARN) , "TapeBarcode" :: Maybe (TapeBarcode) , "TapeCreatedDate" :: Maybe (Time) , "TapeSizeInBytes" :: Maybe (TapeSize) , "CompletionTime" :: Maybe (Time) , "RetrievedTo" :: Maybe (GatewayARN) , "TapeStatus" :: Maybe (TapeArchiveStatus) , "TapeUsedInBytes" :: Maybe (TapeUsage) } -> {"TapeARN" :: Maybe (TapeARN) , "TapeBarcode" :: Maybe (TapeBarcode) , "TapeCreatedDate" :: Maybe (Time) , "TapeSizeInBytes" :: Maybe (TapeSize) , "CompletionTime" :: Maybe (Time) , "RetrievedTo" :: Maybe (GatewayARN) , "TapeStatus" :: Maybe (TapeArchiveStatus) , "TapeUsedInBytes" :: Maybe (TapeUsage) } ) -> TapeArchive
newTapeArchive'  customize = (TapeArchive <<< customize) { "CompletionTime": Nothing, "RetrievedTo": Nothing, "TapeARN": Nothing, "TapeBarcode": Nothing, "TapeCreatedDate": Nothing, "TapeSizeInBytes": Nothing, "TapeStatus": Nothing, "TapeUsedInBytes": Nothing }



newtype TapeArchiveStatus = TapeArchiveStatus String
derive instance newtypeTapeArchiveStatus :: Newtype TapeArchiveStatus _
derive instance repGenericTapeArchiveStatus :: Generic TapeArchiveStatus _
instance showTapeArchiveStatus :: Show TapeArchiveStatus where show = genericShow
instance decodeTapeArchiveStatus :: Decode TapeArchiveStatus where decode = genericDecode options
instance encodeTapeArchiveStatus :: Encode TapeArchiveStatus where encode = genericEncode options



newtype TapeArchives = TapeArchives (Array TapeArchive)
derive instance newtypeTapeArchives :: Newtype TapeArchives _
derive instance repGenericTapeArchives :: Generic TapeArchives _
instance showTapeArchives :: Show TapeArchives where show = genericShow
instance decodeTapeArchives :: Decode TapeArchives where decode = genericDecode options
instance encodeTapeArchives :: Encode TapeArchives where encode = genericEncode options



newtype TapeBarcode = TapeBarcode String
derive instance newtypeTapeBarcode :: Newtype TapeBarcode _
derive instance repGenericTapeBarcode :: Generic TapeBarcode _
instance showTapeBarcode :: Show TapeBarcode where show = genericShow
instance decodeTapeBarcode :: Decode TapeBarcode where decode = genericDecode options
instance encodeTapeBarcode :: Encode TapeBarcode where encode = genericEncode options



newtype TapeBarcodePrefix = TapeBarcodePrefix String
derive instance newtypeTapeBarcodePrefix :: Newtype TapeBarcodePrefix _
derive instance repGenericTapeBarcodePrefix :: Generic TapeBarcodePrefix _
instance showTapeBarcodePrefix :: Show TapeBarcodePrefix where show = genericShow
instance decodeTapeBarcodePrefix :: Decode TapeBarcodePrefix where decode = genericDecode options
instance encodeTapeBarcodePrefix :: Encode TapeBarcodePrefix where encode = genericEncode options



newtype TapeDriveType = TapeDriveType String
derive instance newtypeTapeDriveType :: Newtype TapeDriveType _
derive instance repGenericTapeDriveType :: Generic TapeDriveType _
instance showTapeDriveType :: Show TapeDriveType where show = genericShow
instance decodeTapeDriveType :: Decode TapeDriveType where decode = genericDecode options
instance encodeTapeDriveType :: Encode TapeDriveType where encode = genericEncode options



-- | <p>Describes a virtual tape.</p>
newtype TapeInfo = TapeInfo 
  { "TapeARN" :: Maybe (TapeARN)
  , "TapeBarcode" :: Maybe (TapeBarcode)
  , "TapeSizeInBytes" :: Maybe (TapeSize)
  , "TapeStatus" :: Maybe (TapeStatus)
  , "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeTapeInfo :: Newtype TapeInfo _
derive instance repGenericTapeInfo :: Generic TapeInfo _
instance showTapeInfo :: Show TapeInfo where show = genericShow
instance decodeTapeInfo :: Decode TapeInfo where decode = genericDecode options
instance encodeTapeInfo :: Encode TapeInfo where encode = genericEncode options

-- | Constructs TapeInfo from required parameters
newTapeInfo :: TapeInfo
newTapeInfo  = TapeInfo { "GatewayARN": Nothing, "TapeARN": Nothing, "TapeBarcode": Nothing, "TapeSizeInBytes": Nothing, "TapeStatus": Nothing }

-- | Constructs TapeInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTapeInfo' :: ( { "TapeARN" :: Maybe (TapeARN) , "TapeBarcode" :: Maybe (TapeBarcode) , "TapeSizeInBytes" :: Maybe (TapeSize) , "TapeStatus" :: Maybe (TapeStatus) , "GatewayARN" :: Maybe (GatewayARN) } -> {"TapeARN" :: Maybe (TapeARN) , "TapeBarcode" :: Maybe (TapeBarcode) , "TapeSizeInBytes" :: Maybe (TapeSize) , "TapeStatus" :: Maybe (TapeStatus) , "GatewayARN" :: Maybe (GatewayARN) } ) -> TapeInfo
newTapeInfo'  customize = (TapeInfo <<< customize) { "GatewayARN": Nothing, "TapeARN": Nothing, "TapeBarcode": Nothing, "TapeSizeInBytes": Nothing, "TapeStatus": Nothing }



-- | <p>An array of <a>TapeInfo</a> objects, where each object describes an a single tape. If there not tapes in the tape library or VTS, then the <code>TapeInfos</code> is an empty array.</p>
newtype TapeInfos = TapeInfos (Array TapeInfo)
derive instance newtypeTapeInfos :: Newtype TapeInfos _
derive instance repGenericTapeInfos :: Generic TapeInfos _
instance showTapeInfos :: Show TapeInfos where show = genericShow
instance decodeTapeInfos :: Decode TapeInfos where decode = genericDecode options
instance encodeTapeInfos :: Encode TapeInfos where encode = genericEncode options



-- | <p>Describes a recovery point.</p>
newtype TapeRecoveryPointInfo = TapeRecoveryPointInfo 
  { "TapeARN" :: Maybe (TapeARN)
  , "TapeRecoveryPointTime" :: Maybe (Time)
  , "TapeSizeInBytes" :: Maybe (TapeSize)
  , "TapeStatus" :: Maybe (TapeRecoveryPointStatus)
  }
derive instance newtypeTapeRecoveryPointInfo :: Newtype TapeRecoveryPointInfo _
derive instance repGenericTapeRecoveryPointInfo :: Generic TapeRecoveryPointInfo _
instance showTapeRecoveryPointInfo :: Show TapeRecoveryPointInfo where show = genericShow
instance decodeTapeRecoveryPointInfo :: Decode TapeRecoveryPointInfo where decode = genericDecode options
instance encodeTapeRecoveryPointInfo :: Encode TapeRecoveryPointInfo where encode = genericEncode options

-- | Constructs TapeRecoveryPointInfo from required parameters
newTapeRecoveryPointInfo :: TapeRecoveryPointInfo
newTapeRecoveryPointInfo  = TapeRecoveryPointInfo { "TapeARN": Nothing, "TapeRecoveryPointTime": Nothing, "TapeSizeInBytes": Nothing, "TapeStatus": Nothing }

-- | Constructs TapeRecoveryPointInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTapeRecoveryPointInfo' :: ( { "TapeARN" :: Maybe (TapeARN) , "TapeRecoveryPointTime" :: Maybe (Time) , "TapeSizeInBytes" :: Maybe (TapeSize) , "TapeStatus" :: Maybe (TapeRecoveryPointStatus) } -> {"TapeARN" :: Maybe (TapeARN) , "TapeRecoveryPointTime" :: Maybe (Time) , "TapeSizeInBytes" :: Maybe (TapeSize) , "TapeStatus" :: Maybe (TapeRecoveryPointStatus) } ) -> TapeRecoveryPointInfo
newTapeRecoveryPointInfo'  customize = (TapeRecoveryPointInfo <<< customize) { "TapeARN": Nothing, "TapeRecoveryPointTime": Nothing, "TapeSizeInBytes": Nothing, "TapeStatus": Nothing }



newtype TapeRecoveryPointInfos = TapeRecoveryPointInfos (Array TapeRecoveryPointInfo)
derive instance newtypeTapeRecoveryPointInfos :: Newtype TapeRecoveryPointInfos _
derive instance repGenericTapeRecoveryPointInfos :: Generic TapeRecoveryPointInfos _
instance showTapeRecoveryPointInfos :: Show TapeRecoveryPointInfos where show = genericShow
instance decodeTapeRecoveryPointInfos :: Decode TapeRecoveryPointInfos where decode = genericDecode options
instance encodeTapeRecoveryPointInfos :: Encode TapeRecoveryPointInfos where encode = genericEncode options



newtype TapeRecoveryPointStatus = TapeRecoveryPointStatus String
derive instance newtypeTapeRecoveryPointStatus :: Newtype TapeRecoveryPointStatus _
derive instance repGenericTapeRecoveryPointStatus :: Generic TapeRecoveryPointStatus _
instance showTapeRecoveryPointStatus :: Show TapeRecoveryPointStatus where show = genericShow
instance decodeTapeRecoveryPointStatus :: Decode TapeRecoveryPointStatus where decode = genericDecode options
instance encodeTapeRecoveryPointStatus :: Encode TapeRecoveryPointStatus where encode = genericEncode options



newtype TapeSize = TapeSize Number
derive instance newtypeTapeSize :: Newtype TapeSize _
derive instance repGenericTapeSize :: Generic TapeSize _
instance showTapeSize :: Show TapeSize where show = genericShow
instance decodeTapeSize :: Decode TapeSize where decode = genericDecode options
instance encodeTapeSize :: Encode TapeSize where encode = genericEncode options



newtype TapeStatus = TapeStatus String
derive instance newtypeTapeStatus :: Newtype TapeStatus _
derive instance repGenericTapeStatus :: Generic TapeStatus _
instance showTapeStatus :: Show TapeStatus where show = genericShow
instance decodeTapeStatus :: Decode TapeStatus where decode = genericDecode options
instance encodeTapeStatus :: Encode TapeStatus where encode = genericEncode options



newtype TapeUsage = TapeUsage Number
derive instance newtypeTapeUsage :: Newtype TapeUsage _
derive instance repGenericTapeUsage :: Generic TapeUsage _
instance showTapeUsage :: Show TapeUsage where show = genericShow
instance decodeTapeUsage :: Decode TapeUsage where decode = genericDecode options
instance encodeTapeUsage :: Encode TapeUsage where encode = genericEncode options



newtype Tapes = Tapes (Array Tape)
derive instance newtypeTapes :: Newtype Tapes _
derive instance repGenericTapes :: Generic Tapes _
instance showTapes :: Show Tapes where show = genericShow
instance decodeTapes :: Decode Tapes where decode = genericDecode options
instance encodeTapes :: Encode Tapes where encode = genericEncode options



newtype TargetARN = TargetARN String
derive instance newtypeTargetARN :: Newtype TargetARN _
derive instance repGenericTargetARN :: Generic TargetARN _
instance showTargetARN :: Show TargetARN where show = genericShow
instance decodeTargetARN :: Decode TargetARN where decode = genericDecode options
instance encodeTargetARN :: Encode TargetARN where encode = genericEncode options



newtype TargetName = TargetName String
derive instance newtypeTargetName :: Newtype TargetName _
derive instance repGenericTargetName :: Generic TargetName _
instance showTargetName :: Show TargetName where show = genericShow
instance decodeTargetName :: Decode TargetName where decode = genericDecode options
instance encodeTargetName :: Encode TargetName where encode = genericEncode options



newtype Time = Time Types.Timestamp
derive instance newtypeTime :: Newtype Time _
derive instance repGenericTime :: Generic Time _
instance showTime :: Show Time where show = genericShow
instance decodeTime :: Decode Time where decode = genericDecode options
instance encodeTime :: Encode Time where encode = genericEncode options



-- | <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateBandwidthRateLimitInput$AverageDownloadRateLimitInBitsPerSec</a> </p> </li> <li> <p> <a>UpdateBandwidthRateLimitInput$AverageUploadRateLimitInBitsPerSec</a> </p> </li> </ul>
newtype UpdateBandwidthRateLimitInput = UpdateBandwidthRateLimitInput 
  { "GatewayARN" :: (GatewayARN)
  , "AverageUploadRateLimitInBitsPerSec" :: Maybe (BandwidthUploadRateLimit)
  , "AverageDownloadRateLimitInBitsPerSec" :: Maybe (BandwidthDownloadRateLimit)
  }
derive instance newtypeUpdateBandwidthRateLimitInput :: Newtype UpdateBandwidthRateLimitInput _
derive instance repGenericUpdateBandwidthRateLimitInput :: Generic UpdateBandwidthRateLimitInput _
instance showUpdateBandwidthRateLimitInput :: Show UpdateBandwidthRateLimitInput where show = genericShow
instance decodeUpdateBandwidthRateLimitInput :: Decode UpdateBandwidthRateLimitInput where decode = genericDecode options
instance encodeUpdateBandwidthRateLimitInput :: Encode UpdateBandwidthRateLimitInput where encode = genericEncode options

-- | Constructs UpdateBandwidthRateLimitInput from required parameters
newUpdateBandwidthRateLimitInput :: GatewayARN -> UpdateBandwidthRateLimitInput
newUpdateBandwidthRateLimitInput _GatewayARN = UpdateBandwidthRateLimitInput { "GatewayARN": _GatewayARN, "AverageDownloadRateLimitInBitsPerSec": Nothing, "AverageUploadRateLimitInBitsPerSec": Nothing }

-- | Constructs UpdateBandwidthRateLimitInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateBandwidthRateLimitInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) , "AverageUploadRateLimitInBitsPerSec" :: Maybe (BandwidthUploadRateLimit) , "AverageDownloadRateLimitInBitsPerSec" :: Maybe (BandwidthDownloadRateLimit) } -> {"GatewayARN" :: (GatewayARN) , "AverageUploadRateLimitInBitsPerSec" :: Maybe (BandwidthUploadRateLimit) , "AverageDownloadRateLimitInBitsPerSec" :: Maybe (BandwidthDownloadRateLimit) } ) -> UpdateBandwidthRateLimitInput
newUpdateBandwidthRateLimitInput' _GatewayARN customize = (UpdateBandwidthRateLimitInput <<< customize) { "GatewayARN": _GatewayARN, "AverageDownloadRateLimitInBitsPerSec": Nothing, "AverageUploadRateLimitInBitsPerSec": Nothing }



-- | <p>A JSON object containing the of the gateway whose throttle information was updated.</p>
newtype UpdateBandwidthRateLimitOutput = UpdateBandwidthRateLimitOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeUpdateBandwidthRateLimitOutput :: Newtype UpdateBandwidthRateLimitOutput _
derive instance repGenericUpdateBandwidthRateLimitOutput :: Generic UpdateBandwidthRateLimitOutput _
instance showUpdateBandwidthRateLimitOutput :: Show UpdateBandwidthRateLimitOutput where show = genericShow
instance decodeUpdateBandwidthRateLimitOutput :: Decode UpdateBandwidthRateLimitOutput where decode = genericDecode options
instance encodeUpdateBandwidthRateLimitOutput :: Encode UpdateBandwidthRateLimitOutput where encode = genericEncode options

-- | Constructs UpdateBandwidthRateLimitOutput from required parameters
newUpdateBandwidthRateLimitOutput :: UpdateBandwidthRateLimitOutput
newUpdateBandwidthRateLimitOutput  = UpdateBandwidthRateLimitOutput { "GatewayARN": Nothing }

-- | Constructs UpdateBandwidthRateLimitOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateBandwidthRateLimitOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> UpdateBandwidthRateLimitOutput
newUpdateBandwidthRateLimitOutput'  customize = (UpdateBandwidthRateLimitOutput <<< customize) { "GatewayARN": Nothing }



-- | <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateChapCredentialsInput$InitiatorName</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$SecretToAuthenticateInitiator</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$SecretToAuthenticateTarget</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$TargetARN</a> </p> </li> </ul>
newtype UpdateChapCredentialsInput = UpdateChapCredentialsInput 
  { "TargetARN" :: (TargetARN)
  , "SecretToAuthenticateInitiator" :: (ChapSecret)
  , "InitiatorName" :: (IqnName)
  , "SecretToAuthenticateTarget" :: Maybe (ChapSecret)
  }
derive instance newtypeUpdateChapCredentialsInput :: Newtype UpdateChapCredentialsInput _
derive instance repGenericUpdateChapCredentialsInput :: Generic UpdateChapCredentialsInput _
instance showUpdateChapCredentialsInput :: Show UpdateChapCredentialsInput where show = genericShow
instance decodeUpdateChapCredentialsInput :: Decode UpdateChapCredentialsInput where decode = genericDecode options
instance encodeUpdateChapCredentialsInput :: Encode UpdateChapCredentialsInput where encode = genericEncode options

-- | Constructs UpdateChapCredentialsInput from required parameters
newUpdateChapCredentialsInput :: IqnName -> ChapSecret -> TargetARN -> UpdateChapCredentialsInput
newUpdateChapCredentialsInput _InitiatorName _SecretToAuthenticateInitiator _TargetARN = UpdateChapCredentialsInput { "InitiatorName": _InitiatorName, "SecretToAuthenticateInitiator": _SecretToAuthenticateInitiator, "TargetARN": _TargetARN, "SecretToAuthenticateTarget": Nothing }

-- | Constructs UpdateChapCredentialsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateChapCredentialsInput' :: IqnName -> ChapSecret -> TargetARN -> ( { "TargetARN" :: (TargetARN) , "SecretToAuthenticateInitiator" :: (ChapSecret) , "InitiatorName" :: (IqnName) , "SecretToAuthenticateTarget" :: Maybe (ChapSecret) } -> {"TargetARN" :: (TargetARN) , "SecretToAuthenticateInitiator" :: (ChapSecret) , "InitiatorName" :: (IqnName) , "SecretToAuthenticateTarget" :: Maybe (ChapSecret) } ) -> UpdateChapCredentialsInput
newUpdateChapCredentialsInput' _InitiatorName _SecretToAuthenticateInitiator _TargetARN customize = (UpdateChapCredentialsInput <<< customize) { "InitiatorName": _InitiatorName, "SecretToAuthenticateInitiator": _SecretToAuthenticateInitiator, "TargetARN": _TargetARN, "SecretToAuthenticateTarget": Nothing }



-- | <p>A JSON object containing the following fields:</p>
newtype UpdateChapCredentialsOutput = UpdateChapCredentialsOutput 
  { "TargetARN" :: Maybe (TargetARN)
  , "InitiatorName" :: Maybe (IqnName)
  }
derive instance newtypeUpdateChapCredentialsOutput :: Newtype UpdateChapCredentialsOutput _
derive instance repGenericUpdateChapCredentialsOutput :: Generic UpdateChapCredentialsOutput _
instance showUpdateChapCredentialsOutput :: Show UpdateChapCredentialsOutput where show = genericShow
instance decodeUpdateChapCredentialsOutput :: Decode UpdateChapCredentialsOutput where decode = genericDecode options
instance encodeUpdateChapCredentialsOutput :: Encode UpdateChapCredentialsOutput where encode = genericEncode options

-- | Constructs UpdateChapCredentialsOutput from required parameters
newUpdateChapCredentialsOutput :: UpdateChapCredentialsOutput
newUpdateChapCredentialsOutput  = UpdateChapCredentialsOutput { "InitiatorName": Nothing, "TargetARN": Nothing }

-- | Constructs UpdateChapCredentialsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateChapCredentialsOutput' :: ( { "TargetARN" :: Maybe (TargetARN) , "InitiatorName" :: Maybe (IqnName) } -> {"TargetARN" :: Maybe (TargetARN) , "InitiatorName" :: Maybe (IqnName) } ) -> UpdateChapCredentialsOutput
newUpdateChapCredentialsOutput'  customize = (UpdateChapCredentialsOutput <<< customize) { "InitiatorName": Nothing, "TargetARN": Nothing }



newtype UpdateGatewayInformationInput = UpdateGatewayInformationInput 
  { "GatewayARN" :: (GatewayARN)
  , "GatewayName" :: Maybe (GatewayName)
  , "GatewayTimezone" :: Maybe (GatewayTimezone)
  }
derive instance newtypeUpdateGatewayInformationInput :: Newtype UpdateGatewayInformationInput _
derive instance repGenericUpdateGatewayInformationInput :: Generic UpdateGatewayInformationInput _
instance showUpdateGatewayInformationInput :: Show UpdateGatewayInformationInput where show = genericShow
instance decodeUpdateGatewayInformationInput :: Decode UpdateGatewayInformationInput where decode = genericDecode options
instance encodeUpdateGatewayInformationInput :: Encode UpdateGatewayInformationInput where encode = genericEncode options

-- | Constructs UpdateGatewayInformationInput from required parameters
newUpdateGatewayInformationInput :: GatewayARN -> UpdateGatewayInformationInput
newUpdateGatewayInformationInput _GatewayARN = UpdateGatewayInformationInput { "GatewayARN": _GatewayARN, "GatewayName": Nothing, "GatewayTimezone": Nothing }

-- | Constructs UpdateGatewayInformationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGatewayInformationInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) , "GatewayName" :: Maybe (GatewayName) , "GatewayTimezone" :: Maybe (GatewayTimezone) } -> {"GatewayARN" :: (GatewayARN) , "GatewayName" :: Maybe (GatewayName) , "GatewayTimezone" :: Maybe (GatewayTimezone) } ) -> UpdateGatewayInformationInput
newUpdateGatewayInformationInput' _GatewayARN customize = (UpdateGatewayInformationInput <<< customize) { "GatewayARN": _GatewayARN, "GatewayName": Nothing, "GatewayTimezone": Nothing }



-- | <p>A JSON object containing the ARN of the gateway that was updated.</p>
newtype UpdateGatewayInformationOutput = UpdateGatewayInformationOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  , "GatewayName" :: Maybe (String)
  }
derive instance newtypeUpdateGatewayInformationOutput :: Newtype UpdateGatewayInformationOutput _
derive instance repGenericUpdateGatewayInformationOutput :: Generic UpdateGatewayInformationOutput _
instance showUpdateGatewayInformationOutput :: Show UpdateGatewayInformationOutput where show = genericShow
instance decodeUpdateGatewayInformationOutput :: Decode UpdateGatewayInformationOutput where decode = genericDecode options
instance encodeUpdateGatewayInformationOutput :: Encode UpdateGatewayInformationOutput where encode = genericEncode options

-- | Constructs UpdateGatewayInformationOutput from required parameters
newUpdateGatewayInformationOutput :: UpdateGatewayInformationOutput
newUpdateGatewayInformationOutput  = UpdateGatewayInformationOutput { "GatewayARN": Nothing, "GatewayName": Nothing }

-- | Constructs UpdateGatewayInformationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGatewayInformationOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) , "GatewayName" :: Maybe (String) } -> {"GatewayARN" :: Maybe (GatewayARN) , "GatewayName" :: Maybe (String) } ) -> UpdateGatewayInformationOutput
newUpdateGatewayInformationOutput'  customize = (UpdateGatewayInformationOutput <<< customize) { "GatewayARN": Nothing, "GatewayName": Nothing }



-- | <p>A JSON object containing the of the gateway to update.</p>
newtype UpdateGatewaySoftwareNowInput = UpdateGatewaySoftwareNowInput 
  { "GatewayARN" :: (GatewayARN)
  }
derive instance newtypeUpdateGatewaySoftwareNowInput :: Newtype UpdateGatewaySoftwareNowInput _
derive instance repGenericUpdateGatewaySoftwareNowInput :: Generic UpdateGatewaySoftwareNowInput _
instance showUpdateGatewaySoftwareNowInput :: Show UpdateGatewaySoftwareNowInput where show = genericShow
instance decodeUpdateGatewaySoftwareNowInput :: Decode UpdateGatewaySoftwareNowInput where decode = genericDecode options
instance encodeUpdateGatewaySoftwareNowInput :: Encode UpdateGatewaySoftwareNowInput where encode = genericEncode options

-- | Constructs UpdateGatewaySoftwareNowInput from required parameters
newUpdateGatewaySoftwareNowInput :: GatewayARN -> UpdateGatewaySoftwareNowInput
newUpdateGatewaySoftwareNowInput _GatewayARN = UpdateGatewaySoftwareNowInput { "GatewayARN": _GatewayARN }

-- | Constructs UpdateGatewaySoftwareNowInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGatewaySoftwareNowInput' :: GatewayARN -> ( { "GatewayARN" :: (GatewayARN) } -> {"GatewayARN" :: (GatewayARN) } ) -> UpdateGatewaySoftwareNowInput
newUpdateGatewaySoftwareNowInput' _GatewayARN customize = (UpdateGatewaySoftwareNowInput <<< customize) { "GatewayARN": _GatewayARN }



-- | <p>A JSON object containing the of the gateway that was updated.</p>
newtype UpdateGatewaySoftwareNowOutput = UpdateGatewaySoftwareNowOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeUpdateGatewaySoftwareNowOutput :: Newtype UpdateGatewaySoftwareNowOutput _
derive instance repGenericUpdateGatewaySoftwareNowOutput :: Generic UpdateGatewaySoftwareNowOutput _
instance showUpdateGatewaySoftwareNowOutput :: Show UpdateGatewaySoftwareNowOutput where show = genericShow
instance decodeUpdateGatewaySoftwareNowOutput :: Decode UpdateGatewaySoftwareNowOutput where decode = genericDecode options
instance encodeUpdateGatewaySoftwareNowOutput :: Encode UpdateGatewaySoftwareNowOutput where encode = genericEncode options

-- | Constructs UpdateGatewaySoftwareNowOutput from required parameters
newUpdateGatewaySoftwareNowOutput :: UpdateGatewaySoftwareNowOutput
newUpdateGatewaySoftwareNowOutput  = UpdateGatewaySoftwareNowOutput { "GatewayARN": Nothing }

-- | Constructs UpdateGatewaySoftwareNowOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGatewaySoftwareNowOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> UpdateGatewaySoftwareNowOutput
newUpdateGatewaySoftwareNowOutput'  customize = (UpdateGatewaySoftwareNowOutput <<< customize) { "GatewayARN": Nothing }



-- | <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>UpdateMaintenanceStartTimeInput$DayOfWeek</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$HourOfDay</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$MinuteOfHour</a> </p> </li> </ul>
newtype UpdateMaintenanceStartTimeInput = UpdateMaintenanceStartTimeInput 
  { "GatewayARN" :: (GatewayARN)
  , "HourOfDay" :: (HourOfDay)
  , "MinuteOfHour" :: (MinuteOfHour)
  , "DayOfWeek" :: (DayOfWeek)
  }
derive instance newtypeUpdateMaintenanceStartTimeInput :: Newtype UpdateMaintenanceStartTimeInput _
derive instance repGenericUpdateMaintenanceStartTimeInput :: Generic UpdateMaintenanceStartTimeInput _
instance showUpdateMaintenanceStartTimeInput :: Show UpdateMaintenanceStartTimeInput where show = genericShow
instance decodeUpdateMaintenanceStartTimeInput :: Decode UpdateMaintenanceStartTimeInput where decode = genericDecode options
instance encodeUpdateMaintenanceStartTimeInput :: Encode UpdateMaintenanceStartTimeInput where encode = genericEncode options

-- | Constructs UpdateMaintenanceStartTimeInput from required parameters
newUpdateMaintenanceStartTimeInput :: DayOfWeek -> GatewayARN -> HourOfDay -> MinuteOfHour -> UpdateMaintenanceStartTimeInput
newUpdateMaintenanceStartTimeInput _DayOfWeek _GatewayARN _HourOfDay _MinuteOfHour = UpdateMaintenanceStartTimeInput { "DayOfWeek": _DayOfWeek, "GatewayARN": _GatewayARN, "HourOfDay": _HourOfDay, "MinuteOfHour": _MinuteOfHour }

-- | Constructs UpdateMaintenanceStartTimeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateMaintenanceStartTimeInput' :: DayOfWeek -> GatewayARN -> HourOfDay -> MinuteOfHour -> ( { "GatewayARN" :: (GatewayARN) , "HourOfDay" :: (HourOfDay) , "MinuteOfHour" :: (MinuteOfHour) , "DayOfWeek" :: (DayOfWeek) } -> {"GatewayARN" :: (GatewayARN) , "HourOfDay" :: (HourOfDay) , "MinuteOfHour" :: (MinuteOfHour) , "DayOfWeek" :: (DayOfWeek) } ) -> UpdateMaintenanceStartTimeInput
newUpdateMaintenanceStartTimeInput' _DayOfWeek _GatewayARN _HourOfDay _MinuteOfHour customize = (UpdateMaintenanceStartTimeInput <<< customize) { "DayOfWeek": _DayOfWeek, "GatewayARN": _GatewayARN, "HourOfDay": _HourOfDay, "MinuteOfHour": _MinuteOfHour }



-- | <p>A JSON object containing the of the gateway whose maintenance start time is updated.</p>
newtype UpdateMaintenanceStartTimeOutput = UpdateMaintenanceStartTimeOutput 
  { "GatewayARN" :: Maybe (GatewayARN)
  }
derive instance newtypeUpdateMaintenanceStartTimeOutput :: Newtype UpdateMaintenanceStartTimeOutput _
derive instance repGenericUpdateMaintenanceStartTimeOutput :: Generic UpdateMaintenanceStartTimeOutput _
instance showUpdateMaintenanceStartTimeOutput :: Show UpdateMaintenanceStartTimeOutput where show = genericShow
instance decodeUpdateMaintenanceStartTimeOutput :: Decode UpdateMaintenanceStartTimeOutput where decode = genericDecode options
instance encodeUpdateMaintenanceStartTimeOutput :: Encode UpdateMaintenanceStartTimeOutput where encode = genericEncode options

-- | Constructs UpdateMaintenanceStartTimeOutput from required parameters
newUpdateMaintenanceStartTimeOutput :: UpdateMaintenanceStartTimeOutput
newUpdateMaintenanceStartTimeOutput  = UpdateMaintenanceStartTimeOutput { "GatewayARN": Nothing }

-- | Constructs UpdateMaintenanceStartTimeOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateMaintenanceStartTimeOutput' :: ( { "GatewayARN" :: Maybe (GatewayARN) } -> {"GatewayARN" :: Maybe (GatewayARN) } ) -> UpdateMaintenanceStartTimeOutput
newUpdateMaintenanceStartTimeOutput'  customize = (UpdateMaintenanceStartTimeOutput <<< customize) { "GatewayARN": Nothing }



-- | <p>UpdateNFSFileShareInput</p>
newtype UpdateNFSFileShareInput = UpdateNFSFileShareInput 
  { "FileShareARN" :: (FileShareARN)
  , "KMSEncrypted" :: Maybe (Boolean)
  , "KMSKey" :: Maybe (KMSKey)
  , "NFSFileShareDefaults" :: Maybe (NFSFileShareDefaults)
  , "DefaultStorageClass" :: Maybe (StorageClass)
  , "ObjectACL" :: Maybe (ObjectACL)
  , "ClientList" :: Maybe (FileShareClientList)
  , "Squash" :: Maybe (Squash)
  , "ReadOnly" :: Maybe (Boolean)
  , "GuessMIMETypeEnabled" :: Maybe (Boolean)
  , "RequesterPays" :: Maybe (Boolean)
  }
derive instance newtypeUpdateNFSFileShareInput :: Newtype UpdateNFSFileShareInput _
derive instance repGenericUpdateNFSFileShareInput :: Generic UpdateNFSFileShareInput _
instance showUpdateNFSFileShareInput :: Show UpdateNFSFileShareInput where show = genericShow
instance decodeUpdateNFSFileShareInput :: Decode UpdateNFSFileShareInput where decode = genericDecode options
instance encodeUpdateNFSFileShareInput :: Encode UpdateNFSFileShareInput where encode = genericEncode options

-- | Constructs UpdateNFSFileShareInput from required parameters
newUpdateNFSFileShareInput :: FileShareARN -> UpdateNFSFileShareInput
newUpdateNFSFileShareInput _FileShareARN = UpdateNFSFileShareInput { "FileShareARN": _FileShareARN, "ClientList": Nothing, "DefaultStorageClass": Nothing, "GuessMIMETypeEnabled": Nothing, "KMSEncrypted": Nothing, "KMSKey": Nothing, "NFSFileShareDefaults": Nothing, "ObjectACL": Nothing, "ReadOnly": Nothing, "RequesterPays": Nothing, "Squash": Nothing }

-- | Constructs UpdateNFSFileShareInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateNFSFileShareInput' :: FileShareARN -> ( { "FileShareARN" :: (FileShareARN) , "KMSEncrypted" :: Maybe (Boolean) , "KMSKey" :: Maybe (KMSKey) , "NFSFileShareDefaults" :: Maybe (NFSFileShareDefaults) , "DefaultStorageClass" :: Maybe (StorageClass) , "ObjectACL" :: Maybe (ObjectACL) , "ClientList" :: Maybe (FileShareClientList) , "Squash" :: Maybe (Squash) , "ReadOnly" :: Maybe (Boolean) , "GuessMIMETypeEnabled" :: Maybe (Boolean) , "RequesterPays" :: Maybe (Boolean) } -> {"FileShareARN" :: (FileShareARN) , "KMSEncrypted" :: Maybe (Boolean) , "KMSKey" :: Maybe (KMSKey) , "NFSFileShareDefaults" :: Maybe (NFSFileShareDefaults) , "DefaultStorageClass" :: Maybe (StorageClass) , "ObjectACL" :: Maybe (ObjectACL) , "ClientList" :: Maybe (FileShareClientList) , "Squash" :: Maybe (Squash) , "ReadOnly" :: Maybe (Boolean) , "GuessMIMETypeEnabled" :: Maybe (Boolean) , "RequesterPays" :: Maybe (Boolean) } ) -> UpdateNFSFileShareInput
newUpdateNFSFileShareInput' _FileShareARN customize = (UpdateNFSFileShareInput <<< customize) { "FileShareARN": _FileShareARN, "ClientList": Nothing, "DefaultStorageClass": Nothing, "GuessMIMETypeEnabled": Nothing, "KMSEncrypted": Nothing, "KMSKey": Nothing, "NFSFileShareDefaults": Nothing, "ObjectACL": Nothing, "ReadOnly": Nothing, "RequesterPays": Nothing, "Squash": Nothing }



-- | <p>UpdateNFSFileShareOutput</p>
newtype UpdateNFSFileShareOutput = UpdateNFSFileShareOutput 
  { "FileShareARN" :: Maybe (FileShareARN)
  }
derive instance newtypeUpdateNFSFileShareOutput :: Newtype UpdateNFSFileShareOutput _
derive instance repGenericUpdateNFSFileShareOutput :: Generic UpdateNFSFileShareOutput _
instance showUpdateNFSFileShareOutput :: Show UpdateNFSFileShareOutput where show = genericShow
instance decodeUpdateNFSFileShareOutput :: Decode UpdateNFSFileShareOutput where decode = genericDecode options
instance encodeUpdateNFSFileShareOutput :: Encode UpdateNFSFileShareOutput where encode = genericEncode options

-- | Constructs UpdateNFSFileShareOutput from required parameters
newUpdateNFSFileShareOutput :: UpdateNFSFileShareOutput
newUpdateNFSFileShareOutput  = UpdateNFSFileShareOutput { "FileShareARN": Nothing }

-- | Constructs UpdateNFSFileShareOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateNFSFileShareOutput' :: ( { "FileShareARN" :: Maybe (FileShareARN) } -> {"FileShareARN" :: Maybe (FileShareARN) } ) -> UpdateNFSFileShareOutput
newUpdateNFSFileShareOutput'  customize = (UpdateNFSFileShareOutput <<< customize) { "FileShareARN": Nothing }



-- | <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateSnapshotScheduleInput$Description</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$RecurrenceInHours</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$StartAt</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$VolumeARN</a> </p> </li> </ul>
newtype UpdateSnapshotScheduleInput = UpdateSnapshotScheduleInput 
  { "VolumeARN" :: (VolumeARN)
  , "StartAt" :: (HourOfDay)
  , "RecurrenceInHours" :: (RecurrenceInHours)
  , "Description" :: Maybe (Description)
  }
derive instance newtypeUpdateSnapshotScheduleInput :: Newtype UpdateSnapshotScheduleInput _
derive instance repGenericUpdateSnapshotScheduleInput :: Generic UpdateSnapshotScheduleInput _
instance showUpdateSnapshotScheduleInput :: Show UpdateSnapshotScheduleInput where show = genericShow
instance decodeUpdateSnapshotScheduleInput :: Decode UpdateSnapshotScheduleInput where decode = genericDecode options
instance encodeUpdateSnapshotScheduleInput :: Encode UpdateSnapshotScheduleInput where encode = genericEncode options

-- | Constructs UpdateSnapshotScheduleInput from required parameters
newUpdateSnapshotScheduleInput :: RecurrenceInHours -> HourOfDay -> VolumeARN -> UpdateSnapshotScheduleInput
newUpdateSnapshotScheduleInput _RecurrenceInHours _StartAt _VolumeARN = UpdateSnapshotScheduleInput { "RecurrenceInHours": _RecurrenceInHours, "StartAt": _StartAt, "VolumeARN": _VolumeARN, "Description": Nothing }

-- | Constructs UpdateSnapshotScheduleInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSnapshotScheduleInput' :: RecurrenceInHours -> HourOfDay -> VolumeARN -> ( { "VolumeARN" :: (VolumeARN) , "StartAt" :: (HourOfDay) , "RecurrenceInHours" :: (RecurrenceInHours) , "Description" :: Maybe (Description) } -> {"VolumeARN" :: (VolumeARN) , "StartAt" :: (HourOfDay) , "RecurrenceInHours" :: (RecurrenceInHours) , "Description" :: Maybe (Description) } ) -> UpdateSnapshotScheduleInput
newUpdateSnapshotScheduleInput' _RecurrenceInHours _StartAt _VolumeARN customize = (UpdateSnapshotScheduleInput <<< customize) { "RecurrenceInHours": _RecurrenceInHours, "StartAt": _StartAt, "VolumeARN": _VolumeARN, "Description": Nothing }



-- | <p>A JSON object containing the of the updated storage volume.</p>
newtype UpdateSnapshotScheduleOutput = UpdateSnapshotScheduleOutput 
  { "VolumeARN" :: Maybe (VolumeARN)
  }
derive instance newtypeUpdateSnapshotScheduleOutput :: Newtype UpdateSnapshotScheduleOutput _
derive instance repGenericUpdateSnapshotScheduleOutput :: Generic UpdateSnapshotScheduleOutput _
instance showUpdateSnapshotScheduleOutput :: Show UpdateSnapshotScheduleOutput where show = genericShow
instance decodeUpdateSnapshotScheduleOutput :: Decode UpdateSnapshotScheduleOutput where decode = genericDecode options
instance encodeUpdateSnapshotScheduleOutput :: Encode UpdateSnapshotScheduleOutput where encode = genericEncode options

-- | Constructs UpdateSnapshotScheduleOutput from required parameters
newUpdateSnapshotScheduleOutput :: UpdateSnapshotScheduleOutput
newUpdateSnapshotScheduleOutput  = UpdateSnapshotScheduleOutput { "VolumeARN": Nothing }

-- | Constructs UpdateSnapshotScheduleOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSnapshotScheduleOutput' :: ( { "VolumeARN" :: Maybe (VolumeARN) } -> {"VolumeARN" :: Maybe (VolumeARN) } ) -> UpdateSnapshotScheduleOutput
newUpdateSnapshotScheduleOutput'  customize = (UpdateSnapshotScheduleOutput <<< customize) { "VolumeARN": Nothing }



newtype UpdateVTLDeviceTypeInput = UpdateVTLDeviceTypeInput 
  { "VTLDeviceARN" :: (VTLDeviceARN)
  , "DeviceType" :: (DeviceType)
  }
derive instance newtypeUpdateVTLDeviceTypeInput :: Newtype UpdateVTLDeviceTypeInput _
derive instance repGenericUpdateVTLDeviceTypeInput :: Generic UpdateVTLDeviceTypeInput _
instance showUpdateVTLDeviceTypeInput :: Show UpdateVTLDeviceTypeInput where show = genericShow
instance decodeUpdateVTLDeviceTypeInput :: Decode UpdateVTLDeviceTypeInput where decode = genericDecode options
instance encodeUpdateVTLDeviceTypeInput :: Encode UpdateVTLDeviceTypeInput where encode = genericEncode options

-- | Constructs UpdateVTLDeviceTypeInput from required parameters
newUpdateVTLDeviceTypeInput :: DeviceType -> VTLDeviceARN -> UpdateVTLDeviceTypeInput
newUpdateVTLDeviceTypeInput _DeviceType _VTLDeviceARN = UpdateVTLDeviceTypeInput { "DeviceType": _DeviceType, "VTLDeviceARN": _VTLDeviceARN }

-- | Constructs UpdateVTLDeviceTypeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateVTLDeviceTypeInput' :: DeviceType -> VTLDeviceARN -> ( { "VTLDeviceARN" :: (VTLDeviceARN) , "DeviceType" :: (DeviceType) } -> {"VTLDeviceARN" :: (VTLDeviceARN) , "DeviceType" :: (DeviceType) } ) -> UpdateVTLDeviceTypeInput
newUpdateVTLDeviceTypeInput' _DeviceType _VTLDeviceARN customize = (UpdateVTLDeviceTypeInput <<< customize) { "DeviceType": _DeviceType, "VTLDeviceARN": _VTLDeviceARN }



-- | <p>UpdateVTLDeviceTypeOutput</p>
newtype UpdateVTLDeviceTypeOutput = UpdateVTLDeviceTypeOutput 
  { "VTLDeviceARN" :: Maybe (VTLDeviceARN)
  }
derive instance newtypeUpdateVTLDeviceTypeOutput :: Newtype UpdateVTLDeviceTypeOutput _
derive instance repGenericUpdateVTLDeviceTypeOutput :: Generic UpdateVTLDeviceTypeOutput _
instance showUpdateVTLDeviceTypeOutput :: Show UpdateVTLDeviceTypeOutput where show = genericShow
instance decodeUpdateVTLDeviceTypeOutput :: Decode UpdateVTLDeviceTypeOutput where decode = genericDecode options
instance encodeUpdateVTLDeviceTypeOutput :: Encode UpdateVTLDeviceTypeOutput where encode = genericEncode options

-- | Constructs UpdateVTLDeviceTypeOutput from required parameters
newUpdateVTLDeviceTypeOutput :: UpdateVTLDeviceTypeOutput
newUpdateVTLDeviceTypeOutput  = UpdateVTLDeviceTypeOutput { "VTLDeviceARN": Nothing }

-- | Constructs UpdateVTLDeviceTypeOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateVTLDeviceTypeOutput' :: ( { "VTLDeviceARN" :: Maybe (VTLDeviceARN) } -> {"VTLDeviceARN" :: Maybe (VTLDeviceARN) } ) -> UpdateVTLDeviceTypeOutput
newUpdateVTLDeviceTypeOutput'  customize = (UpdateVTLDeviceTypeOutput <<< customize) { "VTLDeviceARN": Nothing }



-- | <p>Represents a device object associated with a tape gateway.</p>
newtype VTLDevice = VTLDevice 
  { "VTLDeviceARN" :: Maybe (VTLDeviceARN)
  , "VTLDeviceType" :: Maybe (VTLDeviceType)
  , "VTLDeviceVendor" :: Maybe (VTLDeviceVendor)
  , "VTLDeviceProductIdentifier" :: Maybe (VTLDeviceProductIdentifier)
  , "DeviceiSCSIAttributes" :: Maybe (DeviceiSCSIAttributes)
  }
derive instance newtypeVTLDevice :: Newtype VTLDevice _
derive instance repGenericVTLDevice :: Generic VTLDevice _
instance showVTLDevice :: Show VTLDevice where show = genericShow
instance decodeVTLDevice :: Decode VTLDevice where decode = genericDecode options
instance encodeVTLDevice :: Encode VTLDevice where encode = genericEncode options

-- | Constructs VTLDevice from required parameters
newVTLDevice :: VTLDevice
newVTLDevice  = VTLDevice { "DeviceiSCSIAttributes": Nothing, "VTLDeviceARN": Nothing, "VTLDeviceProductIdentifier": Nothing, "VTLDeviceType": Nothing, "VTLDeviceVendor": Nothing }

-- | Constructs VTLDevice's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVTLDevice' :: ( { "VTLDeviceARN" :: Maybe (VTLDeviceARN) , "VTLDeviceType" :: Maybe (VTLDeviceType) , "VTLDeviceVendor" :: Maybe (VTLDeviceVendor) , "VTLDeviceProductIdentifier" :: Maybe (VTLDeviceProductIdentifier) , "DeviceiSCSIAttributes" :: Maybe (DeviceiSCSIAttributes) } -> {"VTLDeviceARN" :: Maybe (VTLDeviceARN) , "VTLDeviceType" :: Maybe (VTLDeviceType) , "VTLDeviceVendor" :: Maybe (VTLDeviceVendor) , "VTLDeviceProductIdentifier" :: Maybe (VTLDeviceProductIdentifier) , "DeviceiSCSIAttributes" :: Maybe (DeviceiSCSIAttributes) } ) -> VTLDevice
newVTLDevice'  customize = (VTLDevice <<< customize) { "DeviceiSCSIAttributes": Nothing, "VTLDeviceARN": Nothing, "VTLDeviceProductIdentifier": Nothing, "VTLDeviceType": Nothing, "VTLDeviceVendor": Nothing }



newtype VTLDeviceARN = VTLDeviceARN String
derive instance newtypeVTLDeviceARN :: Newtype VTLDeviceARN _
derive instance repGenericVTLDeviceARN :: Generic VTLDeviceARN _
instance showVTLDeviceARN :: Show VTLDeviceARN where show = genericShow
instance decodeVTLDeviceARN :: Decode VTLDeviceARN where decode = genericDecode options
instance encodeVTLDeviceARN :: Encode VTLDeviceARN where encode = genericEncode options



newtype VTLDeviceARNs = VTLDeviceARNs (Array VTLDeviceARN)
derive instance newtypeVTLDeviceARNs :: Newtype VTLDeviceARNs _
derive instance repGenericVTLDeviceARNs :: Generic VTLDeviceARNs _
instance showVTLDeviceARNs :: Show VTLDeviceARNs where show = genericShow
instance decodeVTLDeviceARNs :: Decode VTLDeviceARNs where decode = genericDecode options
instance encodeVTLDeviceARNs :: Encode VTLDeviceARNs where encode = genericEncode options



newtype VTLDeviceProductIdentifier = VTLDeviceProductIdentifier String
derive instance newtypeVTLDeviceProductIdentifier :: Newtype VTLDeviceProductIdentifier _
derive instance repGenericVTLDeviceProductIdentifier :: Generic VTLDeviceProductIdentifier _
instance showVTLDeviceProductIdentifier :: Show VTLDeviceProductIdentifier where show = genericShow
instance decodeVTLDeviceProductIdentifier :: Decode VTLDeviceProductIdentifier where decode = genericDecode options
instance encodeVTLDeviceProductIdentifier :: Encode VTLDeviceProductIdentifier where encode = genericEncode options



newtype VTLDeviceType = VTLDeviceType String
derive instance newtypeVTLDeviceType :: Newtype VTLDeviceType _
derive instance repGenericVTLDeviceType :: Generic VTLDeviceType _
instance showVTLDeviceType :: Show VTLDeviceType where show = genericShow
instance decodeVTLDeviceType :: Decode VTLDeviceType where decode = genericDecode options
instance encodeVTLDeviceType :: Encode VTLDeviceType where encode = genericEncode options



newtype VTLDeviceVendor = VTLDeviceVendor String
derive instance newtypeVTLDeviceVendor :: Newtype VTLDeviceVendor _
derive instance repGenericVTLDeviceVendor :: Generic VTLDeviceVendor _
instance showVTLDeviceVendor :: Show VTLDeviceVendor where show = genericShow
instance decodeVTLDeviceVendor :: Decode VTLDeviceVendor where decode = genericDecode options
instance encodeVTLDeviceVendor :: Encode VTLDeviceVendor where encode = genericEncode options



newtype VTLDevices = VTLDevices (Array VTLDevice)
derive instance newtypeVTLDevices :: Newtype VTLDevices _
derive instance repGenericVTLDevices :: Generic VTLDevices _
instance showVTLDevices :: Show VTLDevices where show = genericShow
instance decodeVTLDevices :: Decode VTLDevices where decode = genericDecode options
instance encodeVTLDevices :: Encode VTLDevices where encode = genericEncode options



newtype VolumeARN = VolumeARN String
derive instance newtypeVolumeARN :: Newtype VolumeARN _
derive instance repGenericVolumeARN :: Generic VolumeARN _
instance showVolumeARN :: Show VolumeARN where show = genericShow
instance decodeVolumeARN :: Decode VolumeARN where decode = genericDecode options
instance encodeVolumeARN :: Encode VolumeARN where encode = genericEncode options



newtype VolumeARNs = VolumeARNs (Array VolumeARN)
derive instance newtypeVolumeARNs :: Newtype VolumeARNs _
derive instance repGenericVolumeARNs :: Generic VolumeARNs _
instance showVolumeARNs :: Show VolumeARNs where show = genericShow
instance decodeVolumeARNs :: Decode VolumeARNs where decode = genericDecode options
instance encodeVolumeARNs :: Encode VolumeARNs where encode = genericEncode options



newtype VolumeId = VolumeId String
derive instance newtypeVolumeId :: Newtype VolumeId _
derive instance repGenericVolumeId :: Generic VolumeId _
instance showVolumeId :: Show VolumeId where show = genericShow
instance decodeVolumeId :: Decode VolumeId where decode = genericDecode options
instance encodeVolumeId :: Encode VolumeId where encode = genericEncode options



-- | <p>Describes a storage volume object.</p>
newtype VolumeInfo = VolumeInfo 
  { "VolumeARN" :: Maybe (VolumeARN)
  , "VolumeId" :: Maybe (VolumeId)
  , "GatewayARN" :: Maybe (GatewayARN)
  , "GatewayId" :: Maybe (GatewayId)
  , "VolumeType" :: Maybe (VolumeType)
  , "VolumeSizeInBytes" :: Maybe (Number)
  }
derive instance newtypeVolumeInfo :: Newtype VolumeInfo _
derive instance repGenericVolumeInfo :: Generic VolumeInfo _
instance showVolumeInfo :: Show VolumeInfo where show = genericShow
instance decodeVolumeInfo :: Decode VolumeInfo where decode = genericDecode options
instance encodeVolumeInfo :: Encode VolumeInfo where encode = genericEncode options

-- | Constructs VolumeInfo from required parameters
newVolumeInfo :: VolumeInfo
newVolumeInfo  = VolumeInfo { "GatewayARN": Nothing, "GatewayId": Nothing, "VolumeARN": Nothing, "VolumeId": Nothing, "VolumeSizeInBytes": Nothing, "VolumeType": Nothing }

-- | Constructs VolumeInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolumeInfo' :: ( { "VolumeARN" :: Maybe (VolumeARN) , "VolumeId" :: Maybe (VolumeId) , "GatewayARN" :: Maybe (GatewayARN) , "GatewayId" :: Maybe (GatewayId) , "VolumeType" :: Maybe (VolumeType) , "VolumeSizeInBytes" :: Maybe (Number) } -> {"VolumeARN" :: Maybe (VolumeARN) , "VolumeId" :: Maybe (VolumeId) , "GatewayARN" :: Maybe (GatewayARN) , "GatewayId" :: Maybe (GatewayId) , "VolumeType" :: Maybe (VolumeType) , "VolumeSizeInBytes" :: Maybe (Number) } ) -> VolumeInfo
newVolumeInfo'  customize = (VolumeInfo <<< customize) { "GatewayARN": Nothing, "GatewayId": Nothing, "VolumeARN": Nothing, "VolumeId": Nothing, "VolumeSizeInBytes": Nothing, "VolumeType": Nothing }



newtype VolumeInfos = VolumeInfos (Array VolumeInfo)
derive instance newtypeVolumeInfos :: Newtype VolumeInfos _
derive instance repGenericVolumeInfos :: Generic VolumeInfos _
instance showVolumeInfos :: Show VolumeInfos where show = genericShow
instance decodeVolumeInfos :: Decode VolumeInfos where decode = genericDecode options
instance encodeVolumeInfos :: Encode VolumeInfos where encode = genericEncode options



newtype VolumeRecoveryPointInfo = VolumeRecoveryPointInfo 
  { "VolumeARN" :: Maybe (VolumeARN)
  , "VolumeSizeInBytes" :: Maybe (Number)
  , "VolumeUsageInBytes" :: Maybe (Number)
  , "VolumeRecoveryPointTime" :: Maybe (String)
  }
derive instance newtypeVolumeRecoveryPointInfo :: Newtype VolumeRecoveryPointInfo _
derive instance repGenericVolumeRecoveryPointInfo :: Generic VolumeRecoveryPointInfo _
instance showVolumeRecoveryPointInfo :: Show VolumeRecoveryPointInfo where show = genericShow
instance decodeVolumeRecoveryPointInfo :: Decode VolumeRecoveryPointInfo where decode = genericDecode options
instance encodeVolumeRecoveryPointInfo :: Encode VolumeRecoveryPointInfo where encode = genericEncode options

-- | Constructs VolumeRecoveryPointInfo from required parameters
newVolumeRecoveryPointInfo :: VolumeRecoveryPointInfo
newVolumeRecoveryPointInfo  = VolumeRecoveryPointInfo { "VolumeARN": Nothing, "VolumeRecoveryPointTime": Nothing, "VolumeSizeInBytes": Nothing, "VolumeUsageInBytes": Nothing }

-- | Constructs VolumeRecoveryPointInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolumeRecoveryPointInfo' :: ( { "VolumeARN" :: Maybe (VolumeARN) , "VolumeSizeInBytes" :: Maybe (Number) , "VolumeUsageInBytes" :: Maybe (Number) , "VolumeRecoveryPointTime" :: Maybe (String) } -> {"VolumeARN" :: Maybe (VolumeARN) , "VolumeSizeInBytes" :: Maybe (Number) , "VolumeUsageInBytes" :: Maybe (Number) , "VolumeRecoveryPointTime" :: Maybe (String) } ) -> VolumeRecoveryPointInfo
newVolumeRecoveryPointInfo'  customize = (VolumeRecoveryPointInfo <<< customize) { "VolumeARN": Nothing, "VolumeRecoveryPointTime": Nothing, "VolumeSizeInBytes": Nothing, "VolumeUsageInBytes": Nothing }



newtype VolumeRecoveryPointInfos = VolumeRecoveryPointInfos (Array VolumeRecoveryPointInfo)
derive instance newtypeVolumeRecoveryPointInfos :: Newtype VolumeRecoveryPointInfos _
derive instance repGenericVolumeRecoveryPointInfos :: Generic VolumeRecoveryPointInfos _
instance showVolumeRecoveryPointInfos :: Show VolumeRecoveryPointInfos where show = genericShow
instance decodeVolumeRecoveryPointInfos :: Decode VolumeRecoveryPointInfos where decode = genericDecode options
instance encodeVolumeRecoveryPointInfos :: Encode VolumeRecoveryPointInfos where encode = genericEncode options



newtype VolumeStatus = VolumeStatus String
derive instance newtypeVolumeStatus :: Newtype VolumeStatus _
derive instance repGenericVolumeStatus :: Generic VolumeStatus _
instance showVolumeStatus :: Show VolumeStatus where show = genericShow
instance decodeVolumeStatus :: Decode VolumeStatus where decode = genericDecode options
instance encodeVolumeStatus :: Encode VolumeStatus where encode = genericEncode options



newtype VolumeType = VolumeType String
derive instance newtypeVolumeType :: Newtype VolumeType _
derive instance repGenericVolumeType :: Generic VolumeType _
instance showVolumeType :: Show VolumeType where show = genericShow
instance decodeVolumeType :: Decode VolumeType where decode = genericDecode options
instance encodeVolumeType :: Encode VolumeType where encode = genericEncode options



newtype VolumeUsedInBytes = VolumeUsedInBytes Number
derive instance newtypeVolumeUsedInBytes :: Newtype VolumeUsedInBytes _
derive instance repGenericVolumeUsedInBytes :: Generic VolumeUsedInBytes _
instance showVolumeUsedInBytes :: Show VolumeUsedInBytes where show = genericShow
instance decodeVolumeUsedInBytes :: Decode VolumeUsedInBytes where decode = genericDecode options
instance encodeVolumeUsedInBytes :: Encode VolumeUsedInBytes where encode = genericEncode options



-- | <p>Lists iSCSI information about a volume.</p>
newtype VolumeiSCSIAttributes = VolumeiSCSIAttributes 
  { "TargetARN" :: Maybe (TargetARN)
  , "NetworkInterfaceId" :: Maybe (NetworkInterfaceId)
  , "NetworkInterfacePort" :: Maybe (Int)
  , "LunNumber" :: Maybe (PositiveIntObject)
  , "ChapEnabled" :: Maybe (Boolean)
  }
derive instance newtypeVolumeiSCSIAttributes :: Newtype VolumeiSCSIAttributes _
derive instance repGenericVolumeiSCSIAttributes :: Generic VolumeiSCSIAttributes _
instance showVolumeiSCSIAttributes :: Show VolumeiSCSIAttributes where show = genericShow
instance decodeVolumeiSCSIAttributes :: Decode VolumeiSCSIAttributes where decode = genericDecode options
instance encodeVolumeiSCSIAttributes :: Encode VolumeiSCSIAttributes where encode = genericEncode options

-- | Constructs VolumeiSCSIAttributes from required parameters
newVolumeiSCSIAttributes :: VolumeiSCSIAttributes
newVolumeiSCSIAttributes  = VolumeiSCSIAttributes { "ChapEnabled": Nothing, "LunNumber": Nothing, "NetworkInterfaceId": Nothing, "NetworkInterfacePort": Nothing, "TargetARN": Nothing }

-- | Constructs VolumeiSCSIAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolumeiSCSIAttributes' :: ( { "TargetARN" :: Maybe (TargetARN) , "NetworkInterfaceId" :: Maybe (NetworkInterfaceId) , "NetworkInterfacePort" :: Maybe (Int) , "LunNumber" :: Maybe (PositiveIntObject) , "ChapEnabled" :: Maybe (Boolean) } -> {"TargetARN" :: Maybe (TargetARN) , "NetworkInterfaceId" :: Maybe (NetworkInterfaceId) , "NetworkInterfacePort" :: Maybe (Int) , "LunNumber" :: Maybe (PositiveIntObject) , "ChapEnabled" :: Maybe (Boolean) } ) -> VolumeiSCSIAttributes
newVolumeiSCSIAttributes'  customize = (VolumeiSCSIAttributes <<< customize) { "ChapEnabled": Nothing, "LunNumber": Nothing, "NetworkInterfaceId": Nothing, "NetworkInterfacePort": Nothing, "TargetARN": Nothing }



newtype ErrorDetails' = ErrorDetails' (StrMap.StrMap String)
derive instance newtypeErrorDetails' :: Newtype ErrorDetails' _
derive instance repGenericErrorDetails' :: Generic ErrorDetails' _
instance showErrorDetails' :: Show ErrorDetails' where show = genericShow
instance decodeErrorDetails' :: Decode ErrorDetails' where decode = genericDecode options
instance encodeErrorDetails' :: Encode ErrorDetails' where encode = genericEncode options

