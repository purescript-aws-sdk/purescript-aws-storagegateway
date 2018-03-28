## Module AWS.StorageGateway.Types

#### `options`

``` purescript
options :: Options
```

#### `ActivateGatewayInput`

``` purescript
newtype ActivateGatewayInput
  = ActivateGatewayInput { "ActivationKey" :: ActivationKey, "GatewayName" :: GatewayName, "GatewayTimezone" :: GatewayTimezone, "GatewayRegion" :: RegionId, "GatewayType" :: NullOrUndefined (GatewayType), "TapeDriveType" :: NullOrUndefined (TapeDriveType), "MediumChangerType" :: NullOrUndefined (MediumChangerType) }
```

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>ActivateGatewayInput$ActivationKey</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayName</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayRegion</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayTimezone</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayType</a> </p> </li> <li> <p> <a>ActivateGatewayInput$TapeDriveType</a> </p> </li> <li> <p> <a>ActivateGatewayInput$MediumChangerType</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype ActivateGatewayInput _
Generic ActivateGatewayInput _
Show ActivateGatewayInput
Decode ActivateGatewayInput
Encode ActivateGatewayInput
```

#### `newActivateGatewayInput`

``` purescript
newActivateGatewayInput :: ActivationKey -> GatewayName -> RegionId -> GatewayTimezone -> ActivateGatewayInput
```

Constructs ActivateGatewayInput from required parameters

#### `newActivateGatewayInput'`

``` purescript
newActivateGatewayInput' :: ActivationKey -> GatewayName -> RegionId -> GatewayTimezone -> ({ "ActivationKey" :: ActivationKey, "GatewayName" :: GatewayName, "GatewayTimezone" :: GatewayTimezone, "GatewayRegion" :: RegionId, "GatewayType" :: NullOrUndefined (GatewayType), "TapeDriveType" :: NullOrUndefined (TapeDriveType), "MediumChangerType" :: NullOrUndefined (MediumChangerType) } -> { "ActivationKey" :: ActivationKey, "GatewayName" :: GatewayName, "GatewayTimezone" :: GatewayTimezone, "GatewayRegion" :: RegionId, "GatewayType" :: NullOrUndefined (GatewayType), "TapeDriveType" :: NullOrUndefined (TapeDriveType), "MediumChangerType" :: NullOrUndefined (MediumChangerType) }) -> ActivateGatewayInput
```

Constructs ActivateGatewayInput's fields from required parameters

#### `ActivateGatewayOutput`

``` purescript
newtype ActivateGatewayOutput
  = ActivateGatewayOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

<p>AWS Storage Gateway returns the Amazon Resource Name (ARN) of the activated gateway. It is a string made of information such as your account, gateway name, and region. This ARN is used to reference the gateway in other API operations as well as resource-based authorization.</p> <note> <p>For gateways activated prior to September 02, 2015, the gateway ARN contains the gateway name rather than the gateway ID. Changing the name of the gateway has no effect on the gateway ARN.</p> </note>

##### Instances
``` purescript
Newtype ActivateGatewayOutput _
Generic ActivateGatewayOutput _
Show ActivateGatewayOutput
Decode ActivateGatewayOutput
Encode ActivateGatewayOutput
```

#### `newActivateGatewayOutput`

``` purescript
newActivateGatewayOutput :: ActivateGatewayOutput
```

Constructs ActivateGatewayOutput from required parameters

#### `newActivateGatewayOutput'`

``` purescript
newActivateGatewayOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> ActivateGatewayOutput
```

Constructs ActivateGatewayOutput's fields from required parameters

#### `ActivationKey`

``` purescript
newtype ActivationKey
  = ActivationKey String
```

##### Instances
``` purescript
Newtype ActivationKey _
Generic ActivationKey _
Show ActivationKey
Decode ActivationKey
Encode ActivationKey
```

#### `AddCacheInput`

``` purescript
newtype AddCacheInput
  = AddCacheInput { "GatewayARN" :: GatewayARN, "DiskIds" :: DiskIds }
```

##### Instances
``` purescript
Newtype AddCacheInput _
Generic AddCacheInput _
Show AddCacheInput
Decode AddCacheInput
Encode AddCacheInput
```

#### `newAddCacheInput`

``` purescript
newAddCacheInput :: DiskIds -> GatewayARN -> AddCacheInput
```

Constructs AddCacheInput from required parameters

#### `newAddCacheInput'`

``` purescript
newAddCacheInput' :: DiskIds -> GatewayARN -> ({ "GatewayARN" :: GatewayARN, "DiskIds" :: DiskIds } -> { "GatewayARN" :: GatewayARN, "DiskIds" :: DiskIds }) -> AddCacheInput
```

Constructs AddCacheInput's fields from required parameters

#### `AddCacheOutput`

``` purescript
newtype AddCacheOutput
  = AddCacheOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

##### Instances
``` purescript
Newtype AddCacheOutput _
Generic AddCacheOutput _
Show AddCacheOutput
Decode AddCacheOutput
Encode AddCacheOutput
```

#### `newAddCacheOutput`

``` purescript
newAddCacheOutput :: AddCacheOutput
```

Constructs AddCacheOutput from required parameters

#### `newAddCacheOutput'`

``` purescript
newAddCacheOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> AddCacheOutput
```

Constructs AddCacheOutput's fields from required parameters

#### `AddTagsToResourceInput`

``` purescript
newtype AddTagsToResourceInput
  = AddTagsToResourceInput { "ResourceARN" :: ResourceARN, "Tags" :: Tags }
```

<p>AddTagsToResourceInput</p>

##### Instances
``` purescript
Newtype AddTagsToResourceInput _
Generic AddTagsToResourceInput _
Show AddTagsToResourceInput
Decode AddTagsToResourceInput
Encode AddTagsToResourceInput
```

#### `newAddTagsToResourceInput`

``` purescript
newAddTagsToResourceInput :: ResourceARN -> Tags -> AddTagsToResourceInput
```

Constructs AddTagsToResourceInput from required parameters

#### `newAddTagsToResourceInput'`

``` purescript
newAddTagsToResourceInput' :: ResourceARN -> Tags -> ({ "ResourceARN" :: ResourceARN, "Tags" :: Tags } -> { "ResourceARN" :: ResourceARN, "Tags" :: Tags }) -> AddTagsToResourceInput
```

Constructs AddTagsToResourceInput's fields from required parameters

#### `AddTagsToResourceOutput`

``` purescript
newtype AddTagsToResourceOutput
  = AddTagsToResourceOutput { "ResourceARN" :: NullOrUndefined (ResourceARN) }
```

<p>AddTagsToResourceOutput</p>

##### Instances
``` purescript
Newtype AddTagsToResourceOutput _
Generic AddTagsToResourceOutput _
Show AddTagsToResourceOutput
Decode AddTagsToResourceOutput
Encode AddTagsToResourceOutput
```

#### `newAddTagsToResourceOutput`

``` purescript
newAddTagsToResourceOutput :: AddTagsToResourceOutput
```

Constructs AddTagsToResourceOutput from required parameters

#### `newAddTagsToResourceOutput'`

``` purescript
newAddTagsToResourceOutput' :: ({ "ResourceARN" :: NullOrUndefined (ResourceARN) } -> { "ResourceARN" :: NullOrUndefined (ResourceARN) }) -> AddTagsToResourceOutput
```

Constructs AddTagsToResourceOutput's fields from required parameters

#### `AddUploadBufferInput`

``` purescript
newtype AddUploadBufferInput
  = AddUploadBufferInput { "GatewayARN" :: GatewayARN, "DiskIds" :: DiskIds }
```

##### Instances
``` purescript
Newtype AddUploadBufferInput _
Generic AddUploadBufferInput _
Show AddUploadBufferInput
Decode AddUploadBufferInput
Encode AddUploadBufferInput
```

#### `newAddUploadBufferInput`

``` purescript
newAddUploadBufferInput :: DiskIds -> GatewayARN -> AddUploadBufferInput
```

Constructs AddUploadBufferInput from required parameters

#### `newAddUploadBufferInput'`

``` purescript
newAddUploadBufferInput' :: DiskIds -> GatewayARN -> ({ "GatewayARN" :: GatewayARN, "DiskIds" :: DiskIds } -> { "GatewayARN" :: GatewayARN, "DiskIds" :: DiskIds }) -> AddUploadBufferInput
```

Constructs AddUploadBufferInput's fields from required parameters

#### `AddUploadBufferOutput`

``` purescript
newtype AddUploadBufferOutput
  = AddUploadBufferOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

##### Instances
``` purescript
Newtype AddUploadBufferOutput _
Generic AddUploadBufferOutput _
Show AddUploadBufferOutput
Decode AddUploadBufferOutput
Encode AddUploadBufferOutput
```

#### `newAddUploadBufferOutput`

``` purescript
newAddUploadBufferOutput :: AddUploadBufferOutput
```

Constructs AddUploadBufferOutput from required parameters

#### `newAddUploadBufferOutput'`

``` purescript
newAddUploadBufferOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> AddUploadBufferOutput
```

Constructs AddUploadBufferOutput's fields from required parameters

#### `AddWorkingStorageInput`

``` purescript
newtype AddWorkingStorageInput
  = AddWorkingStorageInput { "GatewayARN" :: GatewayARN, "DiskIds" :: DiskIds }
```

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>AddWorkingStorageInput$DiskIds</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype AddWorkingStorageInput _
Generic AddWorkingStorageInput _
Show AddWorkingStorageInput
Decode AddWorkingStorageInput
Encode AddWorkingStorageInput
```

#### `newAddWorkingStorageInput`

``` purescript
newAddWorkingStorageInput :: DiskIds -> GatewayARN -> AddWorkingStorageInput
```

Constructs AddWorkingStorageInput from required parameters

#### `newAddWorkingStorageInput'`

``` purescript
newAddWorkingStorageInput' :: DiskIds -> GatewayARN -> ({ "GatewayARN" :: GatewayARN, "DiskIds" :: DiskIds } -> { "GatewayARN" :: GatewayARN, "DiskIds" :: DiskIds }) -> AddWorkingStorageInput
```

Constructs AddWorkingStorageInput's fields from required parameters

#### `AddWorkingStorageOutput`

``` purescript
newtype AddWorkingStorageOutput
  = AddWorkingStorageOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

<p>A JSON object containing the of the gateway for which working storage was configured.</p>

##### Instances
``` purescript
Newtype AddWorkingStorageOutput _
Generic AddWorkingStorageOutput _
Show AddWorkingStorageOutput
Decode AddWorkingStorageOutput
Encode AddWorkingStorageOutput
```

#### `newAddWorkingStorageOutput`

``` purescript
newAddWorkingStorageOutput :: AddWorkingStorageOutput
```

Constructs AddWorkingStorageOutput from required parameters

#### `newAddWorkingStorageOutput'`

``` purescript
newAddWorkingStorageOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> AddWorkingStorageOutput
```

Constructs AddWorkingStorageOutput's fields from required parameters

#### `BandwidthDownloadRateLimit`

``` purescript
newtype BandwidthDownloadRateLimit
  = BandwidthDownloadRateLimit Number
```

##### Instances
``` purescript
Newtype BandwidthDownloadRateLimit _
Generic BandwidthDownloadRateLimit _
Show BandwidthDownloadRateLimit
Decode BandwidthDownloadRateLimit
Encode BandwidthDownloadRateLimit
```

#### `BandwidthType`

``` purescript
newtype BandwidthType
  = BandwidthType String
```

##### Instances
``` purescript
Newtype BandwidthType _
Generic BandwidthType _
Show BandwidthType
Decode BandwidthType
Encode BandwidthType
```

#### `BandwidthUploadRateLimit`

``` purescript
newtype BandwidthUploadRateLimit
  = BandwidthUploadRateLimit Number
```

##### Instances
``` purescript
Newtype BandwidthUploadRateLimit _
Generic BandwidthUploadRateLimit _
Show BandwidthUploadRateLimit
Decode BandwidthUploadRateLimit
Encode BandwidthUploadRateLimit
```

#### `CachediSCSIVolume`

``` purescript
newtype CachediSCSIVolume
  = CachediSCSIVolume { "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeId" :: NullOrUndefined (VolumeId), "VolumeType" :: NullOrUndefined (VolumeType), "VolumeStatus" :: NullOrUndefined (VolumeStatus), "VolumeSizeInBytes" :: NullOrUndefined (Number), "VolumeProgress" :: NullOrUndefined (DoubleObject), "SourceSnapshotId" :: NullOrUndefined (SnapshotId), "VolumeiSCSIAttributes" :: NullOrUndefined (VolumeiSCSIAttributes), "CreatedDate" :: NullOrUndefined (CreatedDate), "VolumeUsedInBytes" :: NullOrUndefined (VolumeUsedInBytes) }
```

<p>Describes an iSCSI cached volume.</p>

##### Instances
``` purescript
Newtype CachediSCSIVolume _
Generic CachediSCSIVolume _
Show CachediSCSIVolume
Decode CachediSCSIVolume
Encode CachediSCSIVolume
```

#### `newCachediSCSIVolume`

``` purescript
newCachediSCSIVolume :: CachediSCSIVolume
```

Constructs CachediSCSIVolume from required parameters

#### `newCachediSCSIVolume'`

``` purescript
newCachediSCSIVolume' :: ({ "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeId" :: NullOrUndefined (VolumeId), "VolumeType" :: NullOrUndefined (VolumeType), "VolumeStatus" :: NullOrUndefined (VolumeStatus), "VolumeSizeInBytes" :: NullOrUndefined (Number), "VolumeProgress" :: NullOrUndefined (DoubleObject), "SourceSnapshotId" :: NullOrUndefined (SnapshotId), "VolumeiSCSIAttributes" :: NullOrUndefined (VolumeiSCSIAttributes), "CreatedDate" :: NullOrUndefined (CreatedDate), "VolumeUsedInBytes" :: NullOrUndefined (VolumeUsedInBytes) } -> { "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeId" :: NullOrUndefined (VolumeId), "VolumeType" :: NullOrUndefined (VolumeType), "VolumeStatus" :: NullOrUndefined (VolumeStatus), "VolumeSizeInBytes" :: NullOrUndefined (Number), "VolumeProgress" :: NullOrUndefined (DoubleObject), "SourceSnapshotId" :: NullOrUndefined (SnapshotId), "VolumeiSCSIAttributes" :: NullOrUndefined (VolumeiSCSIAttributes), "CreatedDate" :: NullOrUndefined (CreatedDate), "VolumeUsedInBytes" :: NullOrUndefined (VolumeUsedInBytes) }) -> CachediSCSIVolume
```

Constructs CachediSCSIVolume's fields from required parameters

#### `CachediSCSIVolumes`

``` purescript
newtype CachediSCSIVolumes
  = CachediSCSIVolumes (Array CachediSCSIVolume)
```

##### Instances
``` purescript
Newtype CachediSCSIVolumes _
Generic CachediSCSIVolumes _
Show CachediSCSIVolumes
Decode CachediSCSIVolumes
Encode CachediSCSIVolumes
```

#### `CancelArchivalInput`

``` purescript
newtype CancelArchivalInput
  = CancelArchivalInput { "GatewayARN" :: GatewayARN, "TapeARN" :: TapeARN }
```

<p>CancelArchivalInput</p>

##### Instances
``` purescript
Newtype CancelArchivalInput _
Generic CancelArchivalInput _
Show CancelArchivalInput
Decode CancelArchivalInput
Encode CancelArchivalInput
```

#### `newCancelArchivalInput`

``` purescript
newCancelArchivalInput :: GatewayARN -> TapeARN -> CancelArchivalInput
```

Constructs CancelArchivalInput from required parameters

#### `newCancelArchivalInput'`

``` purescript
newCancelArchivalInput' :: GatewayARN -> TapeARN -> ({ "GatewayARN" :: GatewayARN, "TapeARN" :: TapeARN } -> { "GatewayARN" :: GatewayARN, "TapeARN" :: TapeARN }) -> CancelArchivalInput
```

Constructs CancelArchivalInput's fields from required parameters

#### `CancelArchivalOutput`

``` purescript
newtype CancelArchivalOutput
  = CancelArchivalOutput { "TapeARN" :: NullOrUndefined (TapeARN) }
```

<p>CancelArchivalOutput</p>

##### Instances
``` purescript
Newtype CancelArchivalOutput _
Generic CancelArchivalOutput _
Show CancelArchivalOutput
Decode CancelArchivalOutput
Encode CancelArchivalOutput
```

#### `newCancelArchivalOutput`

``` purescript
newCancelArchivalOutput :: CancelArchivalOutput
```

Constructs CancelArchivalOutput from required parameters

#### `newCancelArchivalOutput'`

``` purescript
newCancelArchivalOutput' :: ({ "TapeARN" :: NullOrUndefined (TapeARN) } -> { "TapeARN" :: NullOrUndefined (TapeARN) }) -> CancelArchivalOutput
```

Constructs CancelArchivalOutput's fields from required parameters

#### `CancelRetrievalInput`

``` purescript
newtype CancelRetrievalInput
  = CancelRetrievalInput { "GatewayARN" :: GatewayARN, "TapeARN" :: TapeARN }
```

<p>CancelRetrievalInput</p>

##### Instances
``` purescript
Newtype CancelRetrievalInput _
Generic CancelRetrievalInput _
Show CancelRetrievalInput
Decode CancelRetrievalInput
Encode CancelRetrievalInput
```

#### `newCancelRetrievalInput`

``` purescript
newCancelRetrievalInput :: GatewayARN -> TapeARN -> CancelRetrievalInput
```

Constructs CancelRetrievalInput from required parameters

#### `newCancelRetrievalInput'`

``` purescript
newCancelRetrievalInput' :: GatewayARN -> TapeARN -> ({ "GatewayARN" :: GatewayARN, "TapeARN" :: TapeARN } -> { "GatewayARN" :: GatewayARN, "TapeARN" :: TapeARN }) -> CancelRetrievalInput
```

Constructs CancelRetrievalInput's fields from required parameters

#### `CancelRetrievalOutput`

``` purescript
newtype CancelRetrievalOutput
  = CancelRetrievalOutput { "TapeARN" :: NullOrUndefined (TapeARN) }
```

<p>CancelRetrievalOutput</p>

##### Instances
``` purescript
Newtype CancelRetrievalOutput _
Generic CancelRetrievalOutput _
Show CancelRetrievalOutput
Decode CancelRetrievalOutput
Encode CancelRetrievalOutput
```

#### `newCancelRetrievalOutput`

``` purescript
newCancelRetrievalOutput :: CancelRetrievalOutput
```

Constructs CancelRetrievalOutput from required parameters

#### `newCancelRetrievalOutput'`

``` purescript
newCancelRetrievalOutput' :: ({ "TapeARN" :: NullOrUndefined (TapeARN) } -> { "TapeARN" :: NullOrUndefined (TapeARN) }) -> CancelRetrievalOutput
```

Constructs CancelRetrievalOutput's fields from required parameters

#### `ChapCredentials`

``` purescript
newtype ChapCredentials
  = ChapCredentials (Array ChapInfo)
```

##### Instances
``` purescript
Newtype ChapCredentials _
Generic ChapCredentials _
Show ChapCredentials
Decode ChapCredentials
Encode ChapCredentials
```

#### `ChapInfo`

``` purescript
newtype ChapInfo
  = ChapInfo { "TargetARN" :: NullOrUndefined (TargetARN), "SecretToAuthenticateInitiator" :: NullOrUndefined (ChapSecret), "InitiatorName" :: NullOrUndefined (IqnName), "SecretToAuthenticateTarget" :: NullOrUndefined (ChapSecret) }
```

<p>Describes Challenge-Handshake Authentication Protocol (CHAP) information that supports authentication between your gateway and iSCSI initiators.</p>

##### Instances
``` purescript
Newtype ChapInfo _
Generic ChapInfo _
Show ChapInfo
Decode ChapInfo
Encode ChapInfo
```

#### `newChapInfo`

``` purescript
newChapInfo :: ChapInfo
```

Constructs ChapInfo from required parameters

#### `newChapInfo'`

``` purescript
newChapInfo' :: ({ "TargetARN" :: NullOrUndefined (TargetARN), "SecretToAuthenticateInitiator" :: NullOrUndefined (ChapSecret), "InitiatorName" :: NullOrUndefined (IqnName), "SecretToAuthenticateTarget" :: NullOrUndefined (ChapSecret) } -> { "TargetARN" :: NullOrUndefined (TargetARN), "SecretToAuthenticateInitiator" :: NullOrUndefined (ChapSecret), "InitiatorName" :: NullOrUndefined (IqnName), "SecretToAuthenticateTarget" :: NullOrUndefined (ChapSecret) }) -> ChapInfo
```

Constructs ChapInfo's fields from required parameters

#### `ChapSecret`

``` purescript
newtype ChapSecret
  = ChapSecret String
```

##### Instances
``` purescript
Newtype ChapSecret _
Generic ChapSecret _
Show ChapSecret
Decode ChapSecret
Encode ChapSecret
```

#### `ClientToken`

``` purescript
newtype ClientToken
  = ClientToken String
```

##### Instances
``` purescript
Newtype ClientToken _
Generic ClientToken _
Show ClientToken
Decode ClientToken
Encode ClientToken
```

#### `CreateCachediSCSIVolumeInput`

``` purescript
newtype CreateCachediSCSIVolumeInput
  = CreateCachediSCSIVolumeInput { "GatewayARN" :: GatewayARN, "VolumeSizeInBytes" :: Number, "SnapshotId" :: NullOrUndefined (SnapshotId), "TargetName" :: TargetName, "SourceVolumeARN" :: NullOrUndefined (VolumeARN), "NetworkInterfaceId" :: NetworkInterfaceId, "ClientToken" :: ClientToken }
```

##### Instances
``` purescript
Newtype CreateCachediSCSIVolumeInput _
Generic CreateCachediSCSIVolumeInput _
Show CreateCachediSCSIVolumeInput
Decode CreateCachediSCSIVolumeInput
Encode CreateCachediSCSIVolumeInput
```

#### `newCreateCachediSCSIVolumeInput`

``` purescript
newCreateCachediSCSIVolumeInput :: ClientToken -> GatewayARN -> NetworkInterfaceId -> TargetName -> Number -> CreateCachediSCSIVolumeInput
```

Constructs CreateCachediSCSIVolumeInput from required parameters

#### `newCreateCachediSCSIVolumeInput'`

``` purescript
newCreateCachediSCSIVolumeInput' :: ClientToken -> GatewayARN -> NetworkInterfaceId -> TargetName -> Number -> ({ "GatewayARN" :: GatewayARN, "VolumeSizeInBytes" :: Number, "SnapshotId" :: NullOrUndefined (SnapshotId), "TargetName" :: TargetName, "SourceVolumeARN" :: NullOrUndefined (VolumeARN), "NetworkInterfaceId" :: NetworkInterfaceId, "ClientToken" :: ClientToken } -> { "GatewayARN" :: GatewayARN, "VolumeSizeInBytes" :: Number, "SnapshotId" :: NullOrUndefined (SnapshotId), "TargetName" :: TargetName, "SourceVolumeARN" :: NullOrUndefined (VolumeARN), "NetworkInterfaceId" :: NetworkInterfaceId, "ClientToken" :: ClientToken }) -> CreateCachediSCSIVolumeInput
```

Constructs CreateCachediSCSIVolumeInput's fields from required parameters

#### `CreateCachediSCSIVolumeOutput`

``` purescript
newtype CreateCachediSCSIVolumeOutput
  = CreateCachediSCSIVolumeOutput { "VolumeARN" :: NullOrUndefined (VolumeARN), "TargetARN" :: NullOrUndefined (TargetARN) }
```

##### Instances
``` purescript
Newtype CreateCachediSCSIVolumeOutput _
Generic CreateCachediSCSIVolumeOutput _
Show CreateCachediSCSIVolumeOutput
Decode CreateCachediSCSIVolumeOutput
Encode CreateCachediSCSIVolumeOutput
```

#### `newCreateCachediSCSIVolumeOutput`

``` purescript
newCreateCachediSCSIVolumeOutput :: CreateCachediSCSIVolumeOutput
```

Constructs CreateCachediSCSIVolumeOutput from required parameters

#### `newCreateCachediSCSIVolumeOutput'`

``` purescript
newCreateCachediSCSIVolumeOutput' :: ({ "VolumeARN" :: NullOrUndefined (VolumeARN), "TargetARN" :: NullOrUndefined (TargetARN) } -> { "VolumeARN" :: NullOrUndefined (VolumeARN), "TargetARN" :: NullOrUndefined (TargetARN) }) -> CreateCachediSCSIVolumeOutput
```

Constructs CreateCachediSCSIVolumeOutput's fields from required parameters

#### `CreateNFSFileShareInput`

``` purescript
newtype CreateNFSFileShareInput
  = CreateNFSFileShareInput { "ClientToken" :: ClientToken, "NFSFileShareDefaults" :: NullOrUndefined (NFSFileShareDefaults), "GatewayARN" :: GatewayARN, "KMSEncrypted" :: NullOrUndefined (Boolean), "KMSKey" :: NullOrUndefined (KMSKey), "Role" :: Role, "LocationARN" :: LocationARN, "DefaultStorageClass" :: NullOrUndefined (StorageClass), "ObjectACL" :: NullOrUndefined (ObjectACL), "ClientList" :: NullOrUndefined (FileShareClientList), "Squash" :: NullOrUndefined (Squash), "ReadOnly" :: NullOrUndefined (Boolean), "GuessMIMETypeEnabled" :: NullOrUndefined (Boolean), "RequesterPays" :: NullOrUndefined (Boolean) }
```

<p>CreateNFSFileShareInput</p>

##### Instances
``` purescript
Newtype CreateNFSFileShareInput _
Generic CreateNFSFileShareInput _
Show CreateNFSFileShareInput
Decode CreateNFSFileShareInput
Encode CreateNFSFileShareInput
```

#### `newCreateNFSFileShareInput`

``` purescript
newCreateNFSFileShareInput :: ClientToken -> GatewayARN -> LocationARN -> Role -> CreateNFSFileShareInput
```

Constructs CreateNFSFileShareInput from required parameters

#### `newCreateNFSFileShareInput'`

``` purescript
newCreateNFSFileShareInput' :: ClientToken -> GatewayARN -> LocationARN -> Role -> ({ "ClientToken" :: ClientToken, "NFSFileShareDefaults" :: NullOrUndefined (NFSFileShareDefaults), "GatewayARN" :: GatewayARN, "KMSEncrypted" :: NullOrUndefined (Boolean), "KMSKey" :: NullOrUndefined (KMSKey), "Role" :: Role, "LocationARN" :: LocationARN, "DefaultStorageClass" :: NullOrUndefined (StorageClass), "ObjectACL" :: NullOrUndefined (ObjectACL), "ClientList" :: NullOrUndefined (FileShareClientList), "Squash" :: NullOrUndefined (Squash), "ReadOnly" :: NullOrUndefined (Boolean), "GuessMIMETypeEnabled" :: NullOrUndefined (Boolean), "RequesterPays" :: NullOrUndefined (Boolean) } -> { "ClientToken" :: ClientToken, "NFSFileShareDefaults" :: NullOrUndefined (NFSFileShareDefaults), "GatewayARN" :: GatewayARN, "KMSEncrypted" :: NullOrUndefined (Boolean), "KMSKey" :: NullOrUndefined (KMSKey), "Role" :: Role, "LocationARN" :: LocationARN, "DefaultStorageClass" :: NullOrUndefined (StorageClass), "ObjectACL" :: NullOrUndefined (ObjectACL), "ClientList" :: NullOrUndefined (FileShareClientList), "Squash" :: NullOrUndefined (Squash), "ReadOnly" :: NullOrUndefined (Boolean), "GuessMIMETypeEnabled" :: NullOrUndefined (Boolean), "RequesterPays" :: NullOrUndefined (Boolean) }) -> CreateNFSFileShareInput
```

Constructs CreateNFSFileShareInput's fields from required parameters

#### `CreateNFSFileShareOutput`

``` purescript
newtype CreateNFSFileShareOutput
  = CreateNFSFileShareOutput { "FileShareARN" :: NullOrUndefined (FileShareARN) }
```

<p>CreateNFSFileShareOutput</p>

##### Instances
``` purescript
Newtype CreateNFSFileShareOutput _
Generic CreateNFSFileShareOutput _
Show CreateNFSFileShareOutput
Decode CreateNFSFileShareOutput
Encode CreateNFSFileShareOutput
```

#### `newCreateNFSFileShareOutput`

``` purescript
newCreateNFSFileShareOutput :: CreateNFSFileShareOutput
```

Constructs CreateNFSFileShareOutput from required parameters

#### `newCreateNFSFileShareOutput'`

``` purescript
newCreateNFSFileShareOutput' :: ({ "FileShareARN" :: NullOrUndefined (FileShareARN) } -> { "FileShareARN" :: NullOrUndefined (FileShareARN) }) -> CreateNFSFileShareOutput
```

Constructs CreateNFSFileShareOutput's fields from required parameters

#### `CreateSnapshotFromVolumeRecoveryPointInput`

``` purescript
newtype CreateSnapshotFromVolumeRecoveryPointInput
  = CreateSnapshotFromVolumeRecoveryPointInput { "VolumeARN" :: VolumeARN, "SnapshotDescription" :: SnapshotDescription }
```

##### Instances
``` purescript
Newtype CreateSnapshotFromVolumeRecoveryPointInput _
Generic CreateSnapshotFromVolumeRecoveryPointInput _
Show CreateSnapshotFromVolumeRecoveryPointInput
Decode CreateSnapshotFromVolumeRecoveryPointInput
Encode CreateSnapshotFromVolumeRecoveryPointInput
```

#### `newCreateSnapshotFromVolumeRecoveryPointInput`

``` purescript
newCreateSnapshotFromVolumeRecoveryPointInput :: SnapshotDescription -> VolumeARN -> CreateSnapshotFromVolumeRecoveryPointInput
```

Constructs CreateSnapshotFromVolumeRecoveryPointInput from required parameters

#### `newCreateSnapshotFromVolumeRecoveryPointInput'`

``` purescript
newCreateSnapshotFromVolumeRecoveryPointInput' :: SnapshotDescription -> VolumeARN -> ({ "VolumeARN" :: VolumeARN, "SnapshotDescription" :: SnapshotDescription } -> { "VolumeARN" :: VolumeARN, "SnapshotDescription" :: SnapshotDescription }) -> CreateSnapshotFromVolumeRecoveryPointInput
```

Constructs CreateSnapshotFromVolumeRecoveryPointInput's fields from required parameters

#### `CreateSnapshotFromVolumeRecoveryPointOutput`

``` purescript
newtype CreateSnapshotFromVolumeRecoveryPointOutput
  = CreateSnapshotFromVolumeRecoveryPointOutput { "SnapshotId" :: NullOrUndefined (SnapshotId), "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeRecoveryPointTime" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CreateSnapshotFromVolumeRecoveryPointOutput _
Generic CreateSnapshotFromVolumeRecoveryPointOutput _
Show CreateSnapshotFromVolumeRecoveryPointOutput
Decode CreateSnapshotFromVolumeRecoveryPointOutput
Encode CreateSnapshotFromVolumeRecoveryPointOutput
```

#### `newCreateSnapshotFromVolumeRecoveryPointOutput`

``` purescript
newCreateSnapshotFromVolumeRecoveryPointOutput :: CreateSnapshotFromVolumeRecoveryPointOutput
```

Constructs CreateSnapshotFromVolumeRecoveryPointOutput from required parameters

#### `newCreateSnapshotFromVolumeRecoveryPointOutput'`

``` purescript
newCreateSnapshotFromVolumeRecoveryPointOutput' :: ({ "SnapshotId" :: NullOrUndefined (SnapshotId), "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeRecoveryPointTime" :: NullOrUndefined (String) } -> { "SnapshotId" :: NullOrUndefined (SnapshotId), "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeRecoveryPointTime" :: NullOrUndefined (String) }) -> CreateSnapshotFromVolumeRecoveryPointOutput
```

Constructs CreateSnapshotFromVolumeRecoveryPointOutput's fields from required parameters

#### `CreateSnapshotInput`

``` purescript
newtype CreateSnapshotInput
  = CreateSnapshotInput { "VolumeARN" :: VolumeARN, "SnapshotDescription" :: SnapshotDescription }
```

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>CreateSnapshotInput$SnapshotDescription</a> </p> </li> <li> <p> <a>CreateSnapshotInput$VolumeARN</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype CreateSnapshotInput _
Generic CreateSnapshotInput _
Show CreateSnapshotInput
Decode CreateSnapshotInput
Encode CreateSnapshotInput
```

#### `newCreateSnapshotInput`

``` purescript
newCreateSnapshotInput :: SnapshotDescription -> VolumeARN -> CreateSnapshotInput
```

Constructs CreateSnapshotInput from required parameters

#### `newCreateSnapshotInput'`

``` purescript
newCreateSnapshotInput' :: SnapshotDescription -> VolumeARN -> ({ "VolumeARN" :: VolumeARN, "SnapshotDescription" :: SnapshotDescription } -> { "VolumeARN" :: VolumeARN, "SnapshotDescription" :: SnapshotDescription }) -> CreateSnapshotInput
```

Constructs CreateSnapshotInput's fields from required parameters

#### `CreateSnapshotOutput`

``` purescript
newtype CreateSnapshotOutput
  = CreateSnapshotOutput { "VolumeARN" :: NullOrUndefined (VolumeARN), "SnapshotId" :: NullOrUndefined (SnapshotId) }
```

<p>A JSON object containing the following fields:</p>

##### Instances
``` purescript
Newtype CreateSnapshotOutput _
Generic CreateSnapshotOutput _
Show CreateSnapshotOutput
Decode CreateSnapshotOutput
Encode CreateSnapshotOutput
```

#### `newCreateSnapshotOutput`

``` purescript
newCreateSnapshotOutput :: CreateSnapshotOutput
```

Constructs CreateSnapshotOutput from required parameters

#### `newCreateSnapshotOutput'`

``` purescript
newCreateSnapshotOutput' :: ({ "VolumeARN" :: NullOrUndefined (VolumeARN), "SnapshotId" :: NullOrUndefined (SnapshotId) } -> { "VolumeARN" :: NullOrUndefined (VolumeARN), "SnapshotId" :: NullOrUndefined (SnapshotId) }) -> CreateSnapshotOutput
```

Constructs CreateSnapshotOutput's fields from required parameters

#### `CreateStorediSCSIVolumeInput`

``` purescript
newtype CreateStorediSCSIVolumeInput
  = CreateStorediSCSIVolumeInput { "GatewayARN" :: GatewayARN, "DiskId" :: DiskId, "SnapshotId" :: NullOrUndefined (SnapshotId), "PreserveExistingData" :: Boolean, "TargetName" :: TargetName, "NetworkInterfaceId" :: NetworkInterfaceId }
```

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>CreateStorediSCSIVolumeInput$DiskId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$NetworkInterfaceId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$PreserveExistingData</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$SnapshotId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$TargetName</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype CreateStorediSCSIVolumeInput _
Generic CreateStorediSCSIVolumeInput _
Show CreateStorediSCSIVolumeInput
Decode CreateStorediSCSIVolumeInput
Encode CreateStorediSCSIVolumeInput
```

#### `newCreateStorediSCSIVolumeInput`

``` purescript
newCreateStorediSCSIVolumeInput :: DiskId -> GatewayARN -> NetworkInterfaceId -> Boolean -> TargetName -> CreateStorediSCSIVolumeInput
```

Constructs CreateStorediSCSIVolumeInput from required parameters

#### `newCreateStorediSCSIVolumeInput'`

``` purescript
newCreateStorediSCSIVolumeInput' :: DiskId -> GatewayARN -> NetworkInterfaceId -> Boolean -> TargetName -> ({ "GatewayARN" :: GatewayARN, "DiskId" :: DiskId, "SnapshotId" :: NullOrUndefined (SnapshotId), "PreserveExistingData" :: Boolean, "TargetName" :: TargetName, "NetworkInterfaceId" :: NetworkInterfaceId } -> { "GatewayARN" :: GatewayARN, "DiskId" :: DiskId, "SnapshotId" :: NullOrUndefined (SnapshotId), "PreserveExistingData" :: Boolean, "TargetName" :: TargetName, "NetworkInterfaceId" :: NetworkInterfaceId }) -> CreateStorediSCSIVolumeInput
```

Constructs CreateStorediSCSIVolumeInput's fields from required parameters

#### `CreateStorediSCSIVolumeOutput`

``` purescript
newtype CreateStorediSCSIVolumeOutput
  = CreateStorediSCSIVolumeOutput { "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeSizeInBytes" :: NullOrUndefined (Number), "TargetARN" :: NullOrUndefined (TargetARN) }
```

<p>A JSON object containing the following fields:</p>

##### Instances
``` purescript
Newtype CreateStorediSCSIVolumeOutput _
Generic CreateStorediSCSIVolumeOutput _
Show CreateStorediSCSIVolumeOutput
Decode CreateStorediSCSIVolumeOutput
Encode CreateStorediSCSIVolumeOutput
```

#### `newCreateStorediSCSIVolumeOutput`

``` purescript
newCreateStorediSCSIVolumeOutput :: CreateStorediSCSIVolumeOutput
```

Constructs CreateStorediSCSIVolumeOutput from required parameters

#### `newCreateStorediSCSIVolumeOutput'`

``` purescript
newCreateStorediSCSIVolumeOutput' :: ({ "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeSizeInBytes" :: NullOrUndefined (Number), "TargetARN" :: NullOrUndefined (TargetARN) } -> { "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeSizeInBytes" :: NullOrUndefined (Number), "TargetARN" :: NullOrUndefined (TargetARN) }) -> CreateStorediSCSIVolumeOutput
```

Constructs CreateStorediSCSIVolumeOutput's fields from required parameters

#### `CreateTapeWithBarcodeInput`

``` purescript
newtype CreateTapeWithBarcodeInput
  = CreateTapeWithBarcodeInput { "GatewayARN" :: GatewayARN, "TapeSizeInBytes" :: TapeSize, "TapeBarcode" :: TapeBarcode }
```

<p>CreateTapeWithBarcodeInput</p>

##### Instances
``` purescript
Newtype CreateTapeWithBarcodeInput _
Generic CreateTapeWithBarcodeInput _
Show CreateTapeWithBarcodeInput
Decode CreateTapeWithBarcodeInput
Encode CreateTapeWithBarcodeInput
```

#### `newCreateTapeWithBarcodeInput`

``` purescript
newCreateTapeWithBarcodeInput :: GatewayARN -> TapeBarcode -> TapeSize -> CreateTapeWithBarcodeInput
```

Constructs CreateTapeWithBarcodeInput from required parameters

#### `newCreateTapeWithBarcodeInput'`

``` purescript
newCreateTapeWithBarcodeInput' :: GatewayARN -> TapeBarcode -> TapeSize -> ({ "GatewayARN" :: GatewayARN, "TapeSizeInBytes" :: TapeSize, "TapeBarcode" :: TapeBarcode } -> { "GatewayARN" :: GatewayARN, "TapeSizeInBytes" :: TapeSize, "TapeBarcode" :: TapeBarcode }) -> CreateTapeWithBarcodeInput
```

Constructs CreateTapeWithBarcodeInput's fields from required parameters

#### `CreateTapeWithBarcodeOutput`

``` purescript
newtype CreateTapeWithBarcodeOutput
  = CreateTapeWithBarcodeOutput { "TapeARN" :: NullOrUndefined (TapeARN) }
```

<p>CreateTapeOutput</p>

##### Instances
``` purescript
Newtype CreateTapeWithBarcodeOutput _
Generic CreateTapeWithBarcodeOutput _
Show CreateTapeWithBarcodeOutput
Decode CreateTapeWithBarcodeOutput
Encode CreateTapeWithBarcodeOutput
```

#### `newCreateTapeWithBarcodeOutput`

``` purescript
newCreateTapeWithBarcodeOutput :: CreateTapeWithBarcodeOutput
```

Constructs CreateTapeWithBarcodeOutput from required parameters

#### `newCreateTapeWithBarcodeOutput'`

``` purescript
newCreateTapeWithBarcodeOutput' :: ({ "TapeARN" :: NullOrUndefined (TapeARN) } -> { "TapeARN" :: NullOrUndefined (TapeARN) }) -> CreateTapeWithBarcodeOutput
```

Constructs CreateTapeWithBarcodeOutput's fields from required parameters

#### `CreateTapesInput`

``` purescript
newtype CreateTapesInput
  = CreateTapesInput { "GatewayARN" :: GatewayARN, "TapeSizeInBytes" :: TapeSize, "ClientToken" :: ClientToken, "NumTapesToCreate" :: NumTapesToCreate, "TapeBarcodePrefix" :: TapeBarcodePrefix }
```

<p>CreateTapesInput</p>

##### Instances
``` purescript
Newtype CreateTapesInput _
Generic CreateTapesInput _
Show CreateTapesInput
Decode CreateTapesInput
Encode CreateTapesInput
```

#### `newCreateTapesInput`

``` purescript
newCreateTapesInput :: ClientToken -> GatewayARN -> NumTapesToCreate -> TapeBarcodePrefix -> TapeSize -> CreateTapesInput
```

Constructs CreateTapesInput from required parameters

#### `newCreateTapesInput'`

``` purescript
newCreateTapesInput' :: ClientToken -> GatewayARN -> NumTapesToCreate -> TapeBarcodePrefix -> TapeSize -> ({ "GatewayARN" :: GatewayARN, "TapeSizeInBytes" :: TapeSize, "ClientToken" :: ClientToken, "NumTapesToCreate" :: NumTapesToCreate, "TapeBarcodePrefix" :: TapeBarcodePrefix } -> { "GatewayARN" :: GatewayARN, "TapeSizeInBytes" :: TapeSize, "ClientToken" :: ClientToken, "NumTapesToCreate" :: NumTapesToCreate, "TapeBarcodePrefix" :: TapeBarcodePrefix }) -> CreateTapesInput
```

Constructs CreateTapesInput's fields from required parameters

#### `CreateTapesOutput`

``` purescript
newtype CreateTapesOutput
  = CreateTapesOutput { "TapeARNs" :: NullOrUndefined (TapeARNs) }
```

<p>CreateTapeOutput</p>

##### Instances
``` purescript
Newtype CreateTapesOutput _
Generic CreateTapesOutput _
Show CreateTapesOutput
Decode CreateTapesOutput
Encode CreateTapesOutput
```

#### `newCreateTapesOutput`

``` purescript
newCreateTapesOutput :: CreateTapesOutput
```

Constructs CreateTapesOutput from required parameters

#### `newCreateTapesOutput'`

``` purescript
newCreateTapesOutput' :: ({ "TapeARNs" :: NullOrUndefined (TapeARNs) } -> { "TapeARNs" :: NullOrUndefined (TapeARNs) }) -> CreateTapesOutput
```

Constructs CreateTapesOutput's fields from required parameters

#### `CreatedDate`

``` purescript
newtype CreatedDate
  = CreatedDate Timestamp
```

##### Instances
``` purescript
Newtype CreatedDate _
Generic CreatedDate _
Show CreatedDate
Decode CreatedDate
Encode CreatedDate
```

#### `DayOfWeek`

``` purescript
newtype DayOfWeek
  = DayOfWeek Int
```

##### Instances
``` purescript
Newtype DayOfWeek _
Generic DayOfWeek _
Show DayOfWeek
Decode DayOfWeek
Encode DayOfWeek
```

#### `DeleteBandwidthRateLimitInput`

``` purescript
newtype DeleteBandwidthRateLimitInput
  = DeleteBandwidthRateLimitInput { "GatewayARN" :: GatewayARN, "BandwidthType" :: BandwidthType }
```

<p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>DeleteBandwidthRateLimitInput$BandwidthType</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype DeleteBandwidthRateLimitInput _
Generic DeleteBandwidthRateLimitInput _
Show DeleteBandwidthRateLimitInput
Decode DeleteBandwidthRateLimitInput
Encode DeleteBandwidthRateLimitInput
```

#### `newDeleteBandwidthRateLimitInput`

``` purescript
newDeleteBandwidthRateLimitInput :: BandwidthType -> GatewayARN -> DeleteBandwidthRateLimitInput
```

Constructs DeleteBandwidthRateLimitInput from required parameters

#### `newDeleteBandwidthRateLimitInput'`

``` purescript
newDeleteBandwidthRateLimitInput' :: BandwidthType -> GatewayARN -> ({ "GatewayARN" :: GatewayARN, "BandwidthType" :: BandwidthType } -> { "GatewayARN" :: GatewayARN, "BandwidthType" :: BandwidthType }) -> DeleteBandwidthRateLimitInput
```

Constructs DeleteBandwidthRateLimitInput's fields from required parameters

#### `DeleteBandwidthRateLimitOutput`

``` purescript
newtype DeleteBandwidthRateLimitOutput
  = DeleteBandwidthRateLimitOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

<p>A JSON object containing the of the gateway whose bandwidth rate information was deleted.</p>

##### Instances
``` purescript
Newtype DeleteBandwidthRateLimitOutput _
Generic DeleteBandwidthRateLimitOutput _
Show DeleteBandwidthRateLimitOutput
Decode DeleteBandwidthRateLimitOutput
Encode DeleteBandwidthRateLimitOutput
```

#### `newDeleteBandwidthRateLimitOutput`

``` purescript
newDeleteBandwidthRateLimitOutput :: DeleteBandwidthRateLimitOutput
```

Constructs DeleteBandwidthRateLimitOutput from required parameters

#### `newDeleteBandwidthRateLimitOutput'`

``` purescript
newDeleteBandwidthRateLimitOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> DeleteBandwidthRateLimitOutput
```

Constructs DeleteBandwidthRateLimitOutput's fields from required parameters

#### `DeleteChapCredentialsInput`

``` purescript
newtype DeleteChapCredentialsInput
  = DeleteChapCredentialsInput { "TargetARN" :: TargetARN, "InitiatorName" :: IqnName }
```

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>DeleteChapCredentialsInput$InitiatorName</a> </p> </li> <li> <p> <a>DeleteChapCredentialsInput$TargetARN</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype DeleteChapCredentialsInput _
Generic DeleteChapCredentialsInput _
Show DeleteChapCredentialsInput
Decode DeleteChapCredentialsInput
Encode DeleteChapCredentialsInput
```

#### `newDeleteChapCredentialsInput`

``` purescript
newDeleteChapCredentialsInput :: IqnName -> TargetARN -> DeleteChapCredentialsInput
```

Constructs DeleteChapCredentialsInput from required parameters

#### `newDeleteChapCredentialsInput'`

``` purescript
newDeleteChapCredentialsInput' :: IqnName -> TargetARN -> ({ "TargetARN" :: TargetARN, "InitiatorName" :: IqnName } -> { "TargetARN" :: TargetARN, "InitiatorName" :: IqnName }) -> DeleteChapCredentialsInput
```

Constructs DeleteChapCredentialsInput's fields from required parameters

#### `DeleteChapCredentialsOutput`

``` purescript
newtype DeleteChapCredentialsOutput
  = DeleteChapCredentialsOutput { "TargetARN" :: NullOrUndefined (TargetARN), "InitiatorName" :: NullOrUndefined (IqnName) }
```

<p>A JSON object containing the following fields:</p>

##### Instances
``` purescript
Newtype DeleteChapCredentialsOutput _
Generic DeleteChapCredentialsOutput _
Show DeleteChapCredentialsOutput
Decode DeleteChapCredentialsOutput
Encode DeleteChapCredentialsOutput
```

#### `newDeleteChapCredentialsOutput`

``` purescript
newDeleteChapCredentialsOutput :: DeleteChapCredentialsOutput
```

Constructs DeleteChapCredentialsOutput from required parameters

#### `newDeleteChapCredentialsOutput'`

``` purescript
newDeleteChapCredentialsOutput' :: ({ "TargetARN" :: NullOrUndefined (TargetARN), "InitiatorName" :: NullOrUndefined (IqnName) } -> { "TargetARN" :: NullOrUndefined (TargetARN), "InitiatorName" :: NullOrUndefined (IqnName) }) -> DeleteChapCredentialsOutput
```

Constructs DeleteChapCredentialsOutput's fields from required parameters

#### `DeleteFileShareInput`

``` purescript
newtype DeleteFileShareInput
  = DeleteFileShareInput { "FileShareARN" :: FileShareARN, "ForceDelete" :: NullOrUndefined (Boolean) }
```

<p>DeleteFileShareInput</p>

##### Instances
``` purescript
Newtype DeleteFileShareInput _
Generic DeleteFileShareInput _
Show DeleteFileShareInput
Decode DeleteFileShareInput
Encode DeleteFileShareInput
```

#### `newDeleteFileShareInput`

``` purescript
newDeleteFileShareInput :: FileShareARN -> DeleteFileShareInput
```

Constructs DeleteFileShareInput from required parameters

#### `newDeleteFileShareInput'`

``` purescript
newDeleteFileShareInput' :: FileShareARN -> ({ "FileShareARN" :: FileShareARN, "ForceDelete" :: NullOrUndefined (Boolean) } -> { "FileShareARN" :: FileShareARN, "ForceDelete" :: NullOrUndefined (Boolean) }) -> DeleteFileShareInput
```

Constructs DeleteFileShareInput's fields from required parameters

#### `DeleteFileShareOutput`

``` purescript
newtype DeleteFileShareOutput
  = DeleteFileShareOutput { "FileShareARN" :: NullOrUndefined (FileShareARN) }
```

<p>DeleteFileShareOutput</p>

##### Instances
``` purescript
Newtype DeleteFileShareOutput _
Generic DeleteFileShareOutput _
Show DeleteFileShareOutput
Decode DeleteFileShareOutput
Encode DeleteFileShareOutput
```

#### `newDeleteFileShareOutput`

``` purescript
newDeleteFileShareOutput :: DeleteFileShareOutput
```

Constructs DeleteFileShareOutput from required parameters

#### `newDeleteFileShareOutput'`

``` purescript
newDeleteFileShareOutput' :: ({ "FileShareARN" :: NullOrUndefined (FileShareARN) } -> { "FileShareARN" :: NullOrUndefined (FileShareARN) }) -> DeleteFileShareOutput
```

Constructs DeleteFileShareOutput's fields from required parameters

#### `DeleteGatewayInput`

``` purescript
newtype DeleteGatewayInput
  = DeleteGatewayInput { "GatewayARN" :: GatewayARN }
```

<p>A JSON object containing the ID of the gateway to delete.</p>

##### Instances
``` purescript
Newtype DeleteGatewayInput _
Generic DeleteGatewayInput _
Show DeleteGatewayInput
Decode DeleteGatewayInput
Encode DeleteGatewayInput
```

#### `newDeleteGatewayInput`

``` purescript
newDeleteGatewayInput :: GatewayARN -> DeleteGatewayInput
```

Constructs DeleteGatewayInput from required parameters

#### `newDeleteGatewayInput'`

``` purescript
newDeleteGatewayInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> DeleteGatewayInput
```

Constructs DeleteGatewayInput's fields from required parameters

#### `DeleteGatewayOutput`

``` purescript
newtype DeleteGatewayOutput
  = DeleteGatewayOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

<p>A JSON object containing the ID of the deleted gateway.</p>

##### Instances
``` purescript
Newtype DeleteGatewayOutput _
Generic DeleteGatewayOutput _
Show DeleteGatewayOutput
Decode DeleteGatewayOutput
Encode DeleteGatewayOutput
```

#### `newDeleteGatewayOutput`

``` purescript
newDeleteGatewayOutput :: DeleteGatewayOutput
```

Constructs DeleteGatewayOutput from required parameters

#### `newDeleteGatewayOutput'`

``` purescript
newDeleteGatewayOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> DeleteGatewayOutput
```

Constructs DeleteGatewayOutput's fields from required parameters

#### `DeleteSnapshotScheduleInput`

``` purescript
newtype DeleteSnapshotScheduleInput
  = DeleteSnapshotScheduleInput { "VolumeARN" :: VolumeARN }
```

##### Instances
``` purescript
Newtype DeleteSnapshotScheduleInput _
Generic DeleteSnapshotScheduleInput _
Show DeleteSnapshotScheduleInput
Decode DeleteSnapshotScheduleInput
Encode DeleteSnapshotScheduleInput
```

#### `newDeleteSnapshotScheduleInput`

``` purescript
newDeleteSnapshotScheduleInput :: VolumeARN -> DeleteSnapshotScheduleInput
```

Constructs DeleteSnapshotScheduleInput from required parameters

#### `newDeleteSnapshotScheduleInput'`

``` purescript
newDeleteSnapshotScheduleInput' :: VolumeARN -> ({ "VolumeARN" :: VolumeARN } -> { "VolumeARN" :: VolumeARN }) -> DeleteSnapshotScheduleInput
```

Constructs DeleteSnapshotScheduleInput's fields from required parameters

#### `DeleteSnapshotScheduleOutput`

``` purescript
newtype DeleteSnapshotScheduleOutput
  = DeleteSnapshotScheduleOutput { "VolumeARN" :: NullOrUndefined (VolumeARN) }
```

##### Instances
``` purescript
Newtype DeleteSnapshotScheduleOutput _
Generic DeleteSnapshotScheduleOutput _
Show DeleteSnapshotScheduleOutput
Decode DeleteSnapshotScheduleOutput
Encode DeleteSnapshotScheduleOutput
```

#### `newDeleteSnapshotScheduleOutput`

``` purescript
newDeleteSnapshotScheduleOutput :: DeleteSnapshotScheduleOutput
```

Constructs DeleteSnapshotScheduleOutput from required parameters

#### `newDeleteSnapshotScheduleOutput'`

``` purescript
newDeleteSnapshotScheduleOutput' :: ({ "VolumeARN" :: NullOrUndefined (VolumeARN) } -> { "VolumeARN" :: NullOrUndefined (VolumeARN) }) -> DeleteSnapshotScheduleOutput
```

Constructs DeleteSnapshotScheduleOutput's fields from required parameters

#### `DeleteTapeArchiveInput`

``` purescript
newtype DeleteTapeArchiveInput
  = DeleteTapeArchiveInput { "TapeARN" :: TapeARN }
```

<p>DeleteTapeArchiveInput</p>

##### Instances
``` purescript
Newtype DeleteTapeArchiveInput _
Generic DeleteTapeArchiveInput _
Show DeleteTapeArchiveInput
Decode DeleteTapeArchiveInput
Encode DeleteTapeArchiveInput
```

#### `newDeleteTapeArchiveInput`

``` purescript
newDeleteTapeArchiveInput :: TapeARN -> DeleteTapeArchiveInput
```

Constructs DeleteTapeArchiveInput from required parameters

#### `newDeleteTapeArchiveInput'`

``` purescript
newDeleteTapeArchiveInput' :: TapeARN -> ({ "TapeARN" :: TapeARN } -> { "TapeARN" :: TapeARN }) -> DeleteTapeArchiveInput
```

Constructs DeleteTapeArchiveInput's fields from required parameters

#### `DeleteTapeArchiveOutput`

``` purescript
newtype DeleteTapeArchiveOutput
  = DeleteTapeArchiveOutput { "TapeARN" :: NullOrUndefined (TapeARN) }
```

<p>DeleteTapeArchiveOutput</p>

##### Instances
``` purescript
Newtype DeleteTapeArchiveOutput _
Generic DeleteTapeArchiveOutput _
Show DeleteTapeArchiveOutput
Decode DeleteTapeArchiveOutput
Encode DeleteTapeArchiveOutput
```

#### `newDeleteTapeArchiveOutput`

``` purescript
newDeleteTapeArchiveOutput :: DeleteTapeArchiveOutput
```

Constructs DeleteTapeArchiveOutput from required parameters

#### `newDeleteTapeArchiveOutput'`

``` purescript
newDeleteTapeArchiveOutput' :: ({ "TapeARN" :: NullOrUndefined (TapeARN) } -> { "TapeARN" :: NullOrUndefined (TapeARN) }) -> DeleteTapeArchiveOutput
```

Constructs DeleteTapeArchiveOutput's fields from required parameters

#### `DeleteTapeInput`

``` purescript
newtype DeleteTapeInput
  = DeleteTapeInput { "GatewayARN" :: GatewayARN, "TapeARN" :: TapeARN }
```

<p>DeleteTapeInput</p>

##### Instances
``` purescript
Newtype DeleteTapeInput _
Generic DeleteTapeInput _
Show DeleteTapeInput
Decode DeleteTapeInput
Encode DeleteTapeInput
```

#### `newDeleteTapeInput`

``` purescript
newDeleteTapeInput :: GatewayARN -> TapeARN -> DeleteTapeInput
```

Constructs DeleteTapeInput from required parameters

#### `newDeleteTapeInput'`

``` purescript
newDeleteTapeInput' :: GatewayARN -> TapeARN -> ({ "GatewayARN" :: GatewayARN, "TapeARN" :: TapeARN } -> { "GatewayARN" :: GatewayARN, "TapeARN" :: TapeARN }) -> DeleteTapeInput
```

Constructs DeleteTapeInput's fields from required parameters

#### `DeleteTapeOutput`

``` purescript
newtype DeleteTapeOutput
  = DeleteTapeOutput { "TapeARN" :: NullOrUndefined (TapeARN) }
```

<p>DeleteTapeOutput</p>

##### Instances
``` purescript
Newtype DeleteTapeOutput _
Generic DeleteTapeOutput _
Show DeleteTapeOutput
Decode DeleteTapeOutput
Encode DeleteTapeOutput
```

#### `newDeleteTapeOutput`

``` purescript
newDeleteTapeOutput :: DeleteTapeOutput
```

Constructs DeleteTapeOutput from required parameters

#### `newDeleteTapeOutput'`

``` purescript
newDeleteTapeOutput' :: ({ "TapeARN" :: NullOrUndefined (TapeARN) } -> { "TapeARN" :: NullOrUndefined (TapeARN) }) -> DeleteTapeOutput
```

Constructs DeleteTapeOutput's fields from required parameters

#### `DeleteVolumeInput`

``` purescript
newtype DeleteVolumeInput
  = DeleteVolumeInput { "VolumeARN" :: VolumeARN }
```

<p>A JSON object containing the <a>DeleteVolumeInput$VolumeARN</a> to delete.</p>

##### Instances
``` purescript
Newtype DeleteVolumeInput _
Generic DeleteVolumeInput _
Show DeleteVolumeInput
Decode DeleteVolumeInput
Encode DeleteVolumeInput
```

#### `newDeleteVolumeInput`

``` purescript
newDeleteVolumeInput :: VolumeARN -> DeleteVolumeInput
```

Constructs DeleteVolumeInput from required parameters

#### `newDeleteVolumeInput'`

``` purescript
newDeleteVolumeInput' :: VolumeARN -> ({ "VolumeARN" :: VolumeARN } -> { "VolumeARN" :: VolumeARN }) -> DeleteVolumeInput
```

Constructs DeleteVolumeInput's fields from required parameters

#### `DeleteVolumeOutput`

``` purescript
newtype DeleteVolumeOutput
  = DeleteVolumeOutput { "VolumeARN" :: NullOrUndefined (VolumeARN) }
```

<p>A JSON object containing the of the storage volume that was deleted</p>

##### Instances
``` purescript
Newtype DeleteVolumeOutput _
Generic DeleteVolumeOutput _
Show DeleteVolumeOutput
Decode DeleteVolumeOutput
Encode DeleteVolumeOutput
```

#### `newDeleteVolumeOutput`

``` purescript
newDeleteVolumeOutput :: DeleteVolumeOutput
```

Constructs DeleteVolumeOutput from required parameters

#### `newDeleteVolumeOutput'`

``` purescript
newDeleteVolumeOutput' :: ({ "VolumeARN" :: NullOrUndefined (VolumeARN) } -> { "VolumeARN" :: NullOrUndefined (VolumeARN) }) -> DeleteVolumeOutput
```

Constructs DeleteVolumeOutput's fields from required parameters

#### `DescribeBandwidthRateLimitInput`

``` purescript
newtype DescribeBandwidthRateLimitInput
  = DescribeBandwidthRateLimitInput { "GatewayARN" :: GatewayARN }
```

<p>A JSON object containing the of the gateway.</p>

##### Instances
``` purescript
Newtype DescribeBandwidthRateLimitInput _
Generic DescribeBandwidthRateLimitInput _
Show DescribeBandwidthRateLimitInput
Decode DescribeBandwidthRateLimitInput
Encode DescribeBandwidthRateLimitInput
```

#### `newDescribeBandwidthRateLimitInput`

``` purescript
newDescribeBandwidthRateLimitInput :: GatewayARN -> DescribeBandwidthRateLimitInput
```

Constructs DescribeBandwidthRateLimitInput from required parameters

#### `newDescribeBandwidthRateLimitInput'`

``` purescript
newDescribeBandwidthRateLimitInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> DescribeBandwidthRateLimitInput
```

Constructs DescribeBandwidthRateLimitInput's fields from required parameters

#### `DescribeBandwidthRateLimitOutput`

``` purescript
newtype DescribeBandwidthRateLimitOutput
  = DescribeBandwidthRateLimitOutput { "GatewayARN" :: NullOrUndefined (GatewayARN), "AverageUploadRateLimitInBitsPerSec" :: NullOrUndefined (BandwidthUploadRateLimit), "AverageDownloadRateLimitInBitsPerSec" :: NullOrUndefined (BandwidthDownloadRateLimit) }
```

<p>A JSON object containing the following fields:</p>

##### Instances
``` purescript
Newtype DescribeBandwidthRateLimitOutput _
Generic DescribeBandwidthRateLimitOutput _
Show DescribeBandwidthRateLimitOutput
Decode DescribeBandwidthRateLimitOutput
Encode DescribeBandwidthRateLimitOutput
```

#### `newDescribeBandwidthRateLimitOutput`

``` purescript
newDescribeBandwidthRateLimitOutput :: DescribeBandwidthRateLimitOutput
```

Constructs DescribeBandwidthRateLimitOutput from required parameters

#### `newDescribeBandwidthRateLimitOutput'`

``` purescript
newDescribeBandwidthRateLimitOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "AverageUploadRateLimitInBitsPerSec" :: NullOrUndefined (BandwidthUploadRateLimit), "AverageDownloadRateLimitInBitsPerSec" :: NullOrUndefined (BandwidthDownloadRateLimit) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "AverageUploadRateLimitInBitsPerSec" :: NullOrUndefined (BandwidthUploadRateLimit), "AverageDownloadRateLimitInBitsPerSec" :: NullOrUndefined (BandwidthDownloadRateLimit) }) -> DescribeBandwidthRateLimitOutput
```

Constructs DescribeBandwidthRateLimitOutput's fields from required parameters

#### `DescribeCacheInput`

``` purescript
newtype DescribeCacheInput
  = DescribeCacheInput { "GatewayARN" :: GatewayARN }
```

##### Instances
``` purescript
Newtype DescribeCacheInput _
Generic DescribeCacheInput _
Show DescribeCacheInput
Decode DescribeCacheInput
Encode DescribeCacheInput
```

#### `newDescribeCacheInput`

``` purescript
newDescribeCacheInput :: GatewayARN -> DescribeCacheInput
```

Constructs DescribeCacheInput from required parameters

#### `newDescribeCacheInput'`

``` purescript
newDescribeCacheInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> DescribeCacheInput
```

Constructs DescribeCacheInput's fields from required parameters

#### `DescribeCacheOutput`

``` purescript
newtype DescribeCacheOutput
  = DescribeCacheOutput { "GatewayARN" :: NullOrUndefined (GatewayARN), "DiskIds" :: NullOrUndefined (DiskIds), "CacheAllocatedInBytes" :: NullOrUndefined (Number), "CacheUsedPercentage" :: NullOrUndefined (Number), "CacheDirtyPercentage" :: NullOrUndefined (Number), "CacheHitPercentage" :: NullOrUndefined (Number), "CacheMissPercentage" :: NullOrUndefined (Number) }
```

##### Instances
``` purescript
Newtype DescribeCacheOutput _
Generic DescribeCacheOutput _
Show DescribeCacheOutput
Decode DescribeCacheOutput
Encode DescribeCacheOutput
```

#### `newDescribeCacheOutput`

``` purescript
newDescribeCacheOutput :: DescribeCacheOutput
```

Constructs DescribeCacheOutput from required parameters

#### `newDescribeCacheOutput'`

``` purescript
newDescribeCacheOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "DiskIds" :: NullOrUndefined (DiskIds), "CacheAllocatedInBytes" :: NullOrUndefined (Number), "CacheUsedPercentage" :: NullOrUndefined (Number), "CacheDirtyPercentage" :: NullOrUndefined (Number), "CacheHitPercentage" :: NullOrUndefined (Number), "CacheMissPercentage" :: NullOrUndefined (Number) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "DiskIds" :: NullOrUndefined (DiskIds), "CacheAllocatedInBytes" :: NullOrUndefined (Number), "CacheUsedPercentage" :: NullOrUndefined (Number), "CacheDirtyPercentage" :: NullOrUndefined (Number), "CacheHitPercentage" :: NullOrUndefined (Number), "CacheMissPercentage" :: NullOrUndefined (Number) }) -> DescribeCacheOutput
```

Constructs DescribeCacheOutput's fields from required parameters

#### `DescribeCachediSCSIVolumesInput`

``` purescript
newtype DescribeCachediSCSIVolumesInput
  = DescribeCachediSCSIVolumesInput { "VolumeARNs" :: VolumeARNs }
```

##### Instances
``` purescript
Newtype DescribeCachediSCSIVolumesInput _
Generic DescribeCachediSCSIVolumesInput _
Show DescribeCachediSCSIVolumesInput
Decode DescribeCachediSCSIVolumesInput
Encode DescribeCachediSCSIVolumesInput
```

#### `newDescribeCachediSCSIVolumesInput`

``` purescript
newDescribeCachediSCSIVolumesInput :: VolumeARNs -> DescribeCachediSCSIVolumesInput
```

Constructs DescribeCachediSCSIVolumesInput from required parameters

#### `newDescribeCachediSCSIVolumesInput'`

``` purescript
newDescribeCachediSCSIVolumesInput' :: VolumeARNs -> ({ "VolumeARNs" :: VolumeARNs } -> { "VolumeARNs" :: VolumeARNs }) -> DescribeCachediSCSIVolumesInput
```

Constructs DescribeCachediSCSIVolumesInput's fields from required parameters

#### `DescribeCachediSCSIVolumesOutput`

``` purescript
newtype DescribeCachediSCSIVolumesOutput
  = DescribeCachediSCSIVolumesOutput { "CachediSCSIVolumes" :: NullOrUndefined (CachediSCSIVolumes) }
```

<p>A JSON object containing the following fields:</p>

##### Instances
``` purescript
Newtype DescribeCachediSCSIVolumesOutput _
Generic DescribeCachediSCSIVolumesOutput _
Show DescribeCachediSCSIVolumesOutput
Decode DescribeCachediSCSIVolumesOutput
Encode DescribeCachediSCSIVolumesOutput
```

#### `newDescribeCachediSCSIVolumesOutput`

``` purescript
newDescribeCachediSCSIVolumesOutput :: DescribeCachediSCSIVolumesOutput
```

Constructs DescribeCachediSCSIVolumesOutput from required parameters

#### `newDescribeCachediSCSIVolumesOutput'`

``` purescript
newDescribeCachediSCSIVolumesOutput' :: ({ "CachediSCSIVolumes" :: NullOrUndefined (CachediSCSIVolumes) } -> { "CachediSCSIVolumes" :: NullOrUndefined (CachediSCSIVolumes) }) -> DescribeCachediSCSIVolumesOutput
```

Constructs DescribeCachediSCSIVolumesOutput's fields from required parameters

#### `DescribeChapCredentialsInput`

``` purescript
newtype DescribeChapCredentialsInput
  = DescribeChapCredentialsInput { "TargetARN" :: TargetARN }
```

<p>A JSON object containing the Amazon Resource Name (ARN) of the iSCSI volume target.</p>

##### Instances
``` purescript
Newtype DescribeChapCredentialsInput _
Generic DescribeChapCredentialsInput _
Show DescribeChapCredentialsInput
Decode DescribeChapCredentialsInput
Encode DescribeChapCredentialsInput
```

#### `newDescribeChapCredentialsInput`

``` purescript
newDescribeChapCredentialsInput :: TargetARN -> DescribeChapCredentialsInput
```

Constructs DescribeChapCredentialsInput from required parameters

#### `newDescribeChapCredentialsInput'`

``` purescript
newDescribeChapCredentialsInput' :: TargetARN -> ({ "TargetARN" :: TargetARN } -> { "TargetARN" :: TargetARN }) -> DescribeChapCredentialsInput
```

Constructs DescribeChapCredentialsInput's fields from required parameters

#### `DescribeChapCredentialsOutput`

``` purescript
newtype DescribeChapCredentialsOutput
  = DescribeChapCredentialsOutput { "ChapCredentials" :: NullOrUndefined (ChapCredentials) }
```

<p>A JSON object containing a .</p>

##### Instances
``` purescript
Newtype DescribeChapCredentialsOutput _
Generic DescribeChapCredentialsOutput _
Show DescribeChapCredentialsOutput
Decode DescribeChapCredentialsOutput
Encode DescribeChapCredentialsOutput
```

#### `newDescribeChapCredentialsOutput`

``` purescript
newDescribeChapCredentialsOutput :: DescribeChapCredentialsOutput
```

Constructs DescribeChapCredentialsOutput from required parameters

#### `newDescribeChapCredentialsOutput'`

``` purescript
newDescribeChapCredentialsOutput' :: ({ "ChapCredentials" :: NullOrUndefined (ChapCredentials) } -> { "ChapCredentials" :: NullOrUndefined (ChapCredentials) }) -> DescribeChapCredentialsOutput
```

Constructs DescribeChapCredentialsOutput's fields from required parameters

#### `DescribeGatewayInformationInput`

``` purescript
newtype DescribeGatewayInformationInput
  = DescribeGatewayInformationInput { "GatewayARN" :: GatewayARN }
```

<p>A JSON object containing the ID of the gateway.</p>

##### Instances
``` purescript
Newtype DescribeGatewayInformationInput _
Generic DescribeGatewayInformationInput _
Show DescribeGatewayInformationInput
Decode DescribeGatewayInformationInput
Encode DescribeGatewayInformationInput
```

#### `newDescribeGatewayInformationInput`

``` purescript
newDescribeGatewayInformationInput :: GatewayARN -> DescribeGatewayInformationInput
```

Constructs DescribeGatewayInformationInput from required parameters

#### `newDescribeGatewayInformationInput'`

``` purescript
newDescribeGatewayInformationInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> DescribeGatewayInformationInput
```

Constructs DescribeGatewayInformationInput's fields from required parameters

#### `DescribeGatewayInformationOutput`

``` purescript
newtype DescribeGatewayInformationOutput
  = DescribeGatewayInformationOutput { "GatewayARN" :: NullOrUndefined (GatewayARN), "GatewayId" :: NullOrUndefined (GatewayId), "GatewayName" :: NullOrUndefined (String), "GatewayTimezone" :: NullOrUndefined (GatewayTimezone), "GatewayState" :: NullOrUndefined (GatewayState), "GatewayNetworkInterfaces" :: NullOrUndefined (GatewayNetworkInterfaces), "GatewayType" :: NullOrUndefined (GatewayType), "NextUpdateAvailabilityDate" :: NullOrUndefined (NextUpdateAvailabilityDate), "LastSoftwareUpdate" :: NullOrUndefined (LastSoftwareUpdate) }
```

<p>A JSON object containing the following fields:</p>

##### Instances
``` purescript
Newtype DescribeGatewayInformationOutput _
Generic DescribeGatewayInformationOutput _
Show DescribeGatewayInformationOutput
Decode DescribeGatewayInformationOutput
Encode DescribeGatewayInformationOutput
```

#### `newDescribeGatewayInformationOutput`

``` purescript
newDescribeGatewayInformationOutput :: DescribeGatewayInformationOutput
```

Constructs DescribeGatewayInformationOutput from required parameters

#### `newDescribeGatewayInformationOutput'`

``` purescript
newDescribeGatewayInformationOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "GatewayId" :: NullOrUndefined (GatewayId), "GatewayName" :: NullOrUndefined (String), "GatewayTimezone" :: NullOrUndefined (GatewayTimezone), "GatewayState" :: NullOrUndefined (GatewayState), "GatewayNetworkInterfaces" :: NullOrUndefined (GatewayNetworkInterfaces), "GatewayType" :: NullOrUndefined (GatewayType), "NextUpdateAvailabilityDate" :: NullOrUndefined (NextUpdateAvailabilityDate), "LastSoftwareUpdate" :: NullOrUndefined (LastSoftwareUpdate) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "GatewayId" :: NullOrUndefined (GatewayId), "GatewayName" :: NullOrUndefined (String), "GatewayTimezone" :: NullOrUndefined (GatewayTimezone), "GatewayState" :: NullOrUndefined (GatewayState), "GatewayNetworkInterfaces" :: NullOrUndefined (GatewayNetworkInterfaces), "GatewayType" :: NullOrUndefined (GatewayType), "NextUpdateAvailabilityDate" :: NullOrUndefined (NextUpdateAvailabilityDate), "LastSoftwareUpdate" :: NullOrUndefined (LastSoftwareUpdate) }) -> DescribeGatewayInformationOutput
```

Constructs DescribeGatewayInformationOutput's fields from required parameters

#### `DescribeMaintenanceStartTimeInput`

``` purescript
newtype DescribeMaintenanceStartTimeInput
  = DescribeMaintenanceStartTimeInput { "GatewayARN" :: GatewayARN }
```

<p>A JSON object containing the of the gateway.</p>

##### Instances
``` purescript
Newtype DescribeMaintenanceStartTimeInput _
Generic DescribeMaintenanceStartTimeInput _
Show DescribeMaintenanceStartTimeInput
Decode DescribeMaintenanceStartTimeInput
Encode DescribeMaintenanceStartTimeInput
```

#### `newDescribeMaintenanceStartTimeInput`

``` purescript
newDescribeMaintenanceStartTimeInput :: GatewayARN -> DescribeMaintenanceStartTimeInput
```

Constructs DescribeMaintenanceStartTimeInput from required parameters

#### `newDescribeMaintenanceStartTimeInput'`

``` purescript
newDescribeMaintenanceStartTimeInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> DescribeMaintenanceStartTimeInput
```

Constructs DescribeMaintenanceStartTimeInput's fields from required parameters

#### `DescribeMaintenanceStartTimeOutput`

``` purescript
newtype DescribeMaintenanceStartTimeOutput
  = DescribeMaintenanceStartTimeOutput { "GatewayARN" :: NullOrUndefined (GatewayARN), "HourOfDay" :: NullOrUndefined (HourOfDay), "MinuteOfHour" :: NullOrUndefined (MinuteOfHour), "DayOfWeek" :: NullOrUndefined (DayOfWeek), "Timezone" :: NullOrUndefined (GatewayTimezone) }
```

<p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>DescribeMaintenanceStartTimeOutput$DayOfWeek</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$HourOfDay</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$MinuteOfHour</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$Timezone</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype DescribeMaintenanceStartTimeOutput _
Generic DescribeMaintenanceStartTimeOutput _
Show DescribeMaintenanceStartTimeOutput
Decode DescribeMaintenanceStartTimeOutput
Encode DescribeMaintenanceStartTimeOutput
```

#### `newDescribeMaintenanceStartTimeOutput`

``` purescript
newDescribeMaintenanceStartTimeOutput :: DescribeMaintenanceStartTimeOutput
```

Constructs DescribeMaintenanceStartTimeOutput from required parameters

#### `newDescribeMaintenanceStartTimeOutput'`

``` purescript
newDescribeMaintenanceStartTimeOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "HourOfDay" :: NullOrUndefined (HourOfDay), "MinuteOfHour" :: NullOrUndefined (MinuteOfHour), "DayOfWeek" :: NullOrUndefined (DayOfWeek), "Timezone" :: NullOrUndefined (GatewayTimezone) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "HourOfDay" :: NullOrUndefined (HourOfDay), "MinuteOfHour" :: NullOrUndefined (MinuteOfHour), "DayOfWeek" :: NullOrUndefined (DayOfWeek), "Timezone" :: NullOrUndefined (GatewayTimezone) }) -> DescribeMaintenanceStartTimeOutput
```

Constructs DescribeMaintenanceStartTimeOutput's fields from required parameters

#### `DescribeNFSFileSharesInput`

``` purescript
newtype DescribeNFSFileSharesInput
  = DescribeNFSFileSharesInput { "FileShareARNList" :: FileShareARNList }
```

<p>DescribeNFSFileSharesInput</p>

##### Instances
``` purescript
Newtype DescribeNFSFileSharesInput _
Generic DescribeNFSFileSharesInput _
Show DescribeNFSFileSharesInput
Decode DescribeNFSFileSharesInput
Encode DescribeNFSFileSharesInput
```

#### `newDescribeNFSFileSharesInput`

``` purescript
newDescribeNFSFileSharesInput :: FileShareARNList -> DescribeNFSFileSharesInput
```

Constructs DescribeNFSFileSharesInput from required parameters

#### `newDescribeNFSFileSharesInput'`

``` purescript
newDescribeNFSFileSharesInput' :: FileShareARNList -> ({ "FileShareARNList" :: FileShareARNList } -> { "FileShareARNList" :: FileShareARNList }) -> DescribeNFSFileSharesInput
```

Constructs DescribeNFSFileSharesInput's fields from required parameters

#### `DescribeNFSFileSharesOutput`

``` purescript
newtype DescribeNFSFileSharesOutput
  = DescribeNFSFileSharesOutput { "NFSFileShareInfoList" :: NullOrUndefined (NFSFileShareInfoList) }
```

<p>DescribeNFSFileSharesOutput</p>

##### Instances
``` purescript
Newtype DescribeNFSFileSharesOutput _
Generic DescribeNFSFileSharesOutput _
Show DescribeNFSFileSharesOutput
Decode DescribeNFSFileSharesOutput
Encode DescribeNFSFileSharesOutput
```

#### `newDescribeNFSFileSharesOutput`

``` purescript
newDescribeNFSFileSharesOutput :: DescribeNFSFileSharesOutput
```

Constructs DescribeNFSFileSharesOutput from required parameters

#### `newDescribeNFSFileSharesOutput'`

``` purescript
newDescribeNFSFileSharesOutput' :: ({ "NFSFileShareInfoList" :: NullOrUndefined (NFSFileShareInfoList) } -> { "NFSFileShareInfoList" :: NullOrUndefined (NFSFileShareInfoList) }) -> DescribeNFSFileSharesOutput
```

Constructs DescribeNFSFileSharesOutput's fields from required parameters

#### `DescribeSnapshotScheduleInput`

``` purescript
newtype DescribeSnapshotScheduleInput
  = DescribeSnapshotScheduleInput { "VolumeARN" :: VolumeARN }
```

<p>A JSON object containing the <a>DescribeSnapshotScheduleInput$VolumeARN</a> of the volume.</p>

##### Instances
``` purescript
Newtype DescribeSnapshotScheduleInput _
Generic DescribeSnapshotScheduleInput _
Show DescribeSnapshotScheduleInput
Decode DescribeSnapshotScheduleInput
Encode DescribeSnapshotScheduleInput
```

#### `newDescribeSnapshotScheduleInput`

``` purescript
newDescribeSnapshotScheduleInput :: VolumeARN -> DescribeSnapshotScheduleInput
```

Constructs DescribeSnapshotScheduleInput from required parameters

#### `newDescribeSnapshotScheduleInput'`

``` purescript
newDescribeSnapshotScheduleInput' :: VolumeARN -> ({ "VolumeARN" :: VolumeARN } -> { "VolumeARN" :: VolumeARN }) -> DescribeSnapshotScheduleInput
```

Constructs DescribeSnapshotScheduleInput's fields from required parameters

#### `DescribeSnapshotScheduleOutput`

``` purescript
newtype DescribeSnapshotScheduleOutput
  = DescribeSnapshotScheduleOutput { "VolumeARN" :: NullOrUndefined (VolumeARN), "StartAt" :: NullOrUndefined (HourOfDay), "RecurrenceInHours" :: NullOrUndefined (RecurrenceInHours), "Description" :: NullOrUndefined (Description), "Timezone" :: NullOrUndefined (GatewayTimezone) }
```

##### Instances
``` purescript
Newtype DescribeSnapshotScheduleOutput _
Generic DescribeSnapshotScheduleOutput _
Show DescribeSnapshotScheduleOutput
Decode DescribeSnapshotScheduleOutput
Encode DescribeSnapshotScheduleOutput
```

#### `newDescribeSnapshotScheduleOutput`

``` purescript
newDescribeSnapshotScheduleOutput :: DescribeSnapshotScheduleOutput
```

Constructs DescribeSnapshotScheduleOutput from required parameters

#### `newDescribeSnapshotScheduleOutput'`

``` purescript
newDescribeSnapshotScheduleOutput' :: ({ "VolumeARN" :: NullOrUndefined (VolumeARN), "StartAt" :: NullOrUndefined (HourOfDay), "RecurrenceInHours" :: NullOrUndefined (RecurrenceInHours), "Description" :: NullOrUndefined (Description), "Timezone" :: NullOrUndefined (GatewayTimezone) } -> { "VolumeARN" :: NullOrUndefined (VolumeARN), "StartAt" :: NullOrUndefined (HourOfDay), "RecurrenceInHours" :: NullOrUndefined (RecurrenceInHours), "Description" :: NullOrUndefined (Description), "Timezone" :: NullOrUndefined (GatewayTimezone) }) -> DescribeSnapshotScheduleOutput
```

Constructs DescribeSnapshotScheduleOutput's fields from required parameters

#### `DescribeStorediSCSIVolumesInput`

``` purescript
newtype DescribeStorediSCSIVolumesInput
  = DescribeStorediSCSIVolumesInput { "VolumeARNs" :: VolumeARNs }
```

<p>A JSON object containing a list of <a>DescribeStorediSCSIVolumesInput$VolumeARNs</a>.</p>

##### Instances
``` purescript
Newtype DescribeStorediSCSIVolumesInput _
Generic DescribeStorediSCSIVolumesInput _
Show DescribeStorediSCSIVolumesInput
Decode DescribeStorediSCSIVolumesInput
Encode DescribeStorediSCSIVolumesInput
```

#### `newDescribeStorediSCSIVolumesInput`

``` purescript
newDescribeStorediSCSIVolumesInput :: VolumeARNs -> DescribeStorediSCSIVolumesInput
```

Constructs DescribeStorediSCSIVolumesInput from required parameters

#### `newDescribeStorediSCSIVolumesInput'`

``` purescript
newDescribeStorediSCSIVolumesInput' :: VolumeARNs -> ({ "VolumeARNs" :: VolumeARNs } -> { "VolumeARNs" :: VolumeARNs }) -> DescribeStorediSCSIVolumesInput
```

Constructs DescribeStorediSCSIVolumesInput's fields from required parameters

#### `DescribeStorediSCSIVolumesOutput`

``` purescript
newtype DescribeStorediSCSIVolumesOutput
  = DescribeStorediSCSIVolumesOutput { "StorediSCSIVolumes" :: NullOrUndefined (StorediSCSIVolumes) }
```

##### Instances
``` purescript
Newtype DescribeStorediSCSIVolumesOutput _
Generic DescribeStorediSCSIVolumesOutput _
Show DescribeStorediSCSIVolumesOutput
Decode DescribeStorediSCSIVolumesOutput
Encode DescribeStorediSCSIVolumesOutput
```

#### `newDescribeStorediSCSIVolumesOutput`

``` purescript
newDescribeStorediSCSIVolumesOutput :: DescribeStorediSCSIVolumesOutput
```

Constructs DescribeStorediSCSIVolumesOutput from required parameters

#### `newDescribeStorediSCSIVolumesOutput'`

``` purescript
newDescribeStorediSCSIVolumesOutput' :: ({ "StorediSCSIVolumes" :: NullOrUndefined (StorediSCSIVolumes) } -> { "StorediSCSIVolumes" :: NullOrUndefined (StorediSCSIVolumes) }) -> DescribeStorediSCSIVolumesOutput
```

Constructs DescribeStorediSCSIVolumesOutput's fields from required parameters

#### `DescribeTapeArchivesInput`

``` purescript
newtype DescribeTapeArchivesInput
  = DescribeTapeArchivesInput { "TapeARNs" :: NullOrUndefined (TapeARNs), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }
```

<p>DescribeTapeArchivesInput</p>

##### Instances
``` purescript
Newtype DescribeTapeArchivesInput _
Generic DescribeTapeArchivesInput _
Show DescribeTapeArchivesInput
Decode DescribeTapeArchivesInput
Encode DescribeTapeArchivesInput
```

#### `newDescribeTapeArchivesInput`

``` purescript
newDescribeTapeArchivesInput :: DescribeTapeArchivesInput
```

Constructs DescribeTapeArchivesInput from required parameters

#### `newDescribeTapeArchivesInput'`

``` purescript
newDescribeTapeArchivesInput' :: ({ "TapeARNs" :: NullOrUndefined (TapeARNs), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) } -> { "TapeARNs" :: NullOrUndefined (TapeARNs), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }) -> DescribeTapeArchivesInput
```

Constructs DescribeTapeArchivesInput's fields from required parameters

#### `DescribeTapeArchivesOutput`

``` purescript
newtype DescribeTapeArchivesOutput
  = DescribeTapeArchivesOutput { "TapeArchives" :: NullOrUndefined (TapeArchives), "Marker" :: NullOrUndefined (Marker) }
```

<p>DescribeTapeArchivesOutput</p>

##### Instances
``` purescript
Newtype DescribeTapeArchivesOutput _
Generic DescribeTapeArchivesOutput _
Show DescribeTapeArchivesOutput
Decode DescribeTapeArchivesOutput
Encode DescribeTapeArchivesOutput
```

#### `newDescribeTapeArchivesOutput`

``` purescript
newDescribeTapeArchivesOutput :: DescribeTapeArchivesOutput
```

Constructs DescribeTapeArchivesOutput from required parameters

#### `newDescribeTapeArchivesOutput'`

``` purescript
newDescribeTapeArchivesOutput' :: ({ "TapeArchives" :: NullOrUndefined (TapeArchives), "Marker" :: NullOrUndefined (Marker) } -> { "TapeArchives" :: NullOrUndefined (TapeArchives), "Marker" :: NullOrUndefined (Marker) }) -> DescribeTapeArchivesOutput
```

Constructs DescribeTapeArchivesOutput's fields from required parameters

#### `DescribeTapeRecoveryPointsInput`

``` purescript
newtype DescribeTapeRecoveryPointsInput
  = DescribeTapeRecoveryPointsInput { "GatewayARN" :: GatewayARN, "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }
```

<p>DescribeTapeRecoveryPointsInput</p>

##### Instances
``` purescript
Newtype DescribeTapeRecoveryPointsInput _
Generic DescribeTapeRecoveryPointsInput _
Show DescribeTapeRecoveryPointsInput
Decode DescribeTapeRecoveryPointsInput
Encode DescribeTapeRecoveryPointsInput
```

#### `newDescribeTapeRecoveryPointsInput`

``` purescript
newDescribeTapeRecoveryPointsInput :: GatewayARN -> DescribeTapeRecoveryPointsInput
```

Constructs DescribeTapeRecoveryPointsInput from required parameters

#### `newDescribeTapeRecoveryPointsInput'`

``` purescript
newDescribeTapeRecoveryPointsInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN, "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) } -> { "GatewayARN" :: GatewayARN, "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }) -> DescribeTapeRecoveryPointsInput
```

Constructs DescribeTapeRecoveryPointsInput's fields from required parameters

#### `DescribeTapeRecoveryPointsOutput`

``` purescript
newtype DescribeTapeRecoveryPointsOutput
  = DescribeTapeRecoveryPointsOutput { "GatewayARN" :: NullOrUndefined (GatewayARN), "TapeRecoveryPointInfos" :: NullOrUndefined (TapeRecoveryPointInfos), "Marker" :: NullOrUndefined (Marker) }
```

<p>DescribeTapeRecoveryPointsOutput</p>

##### Instances
``` purescript
Newtype DescribeTapeRecoveryPointsOutput _
Generic DescribeTapeRecoveryPointsOutput _
Show DescribeTapeRecoveryPointsOutput
Decode DescribeTapeRecoveryPointsOutput
Encode DescribeTapeRecoveryPointsOutput
```

#### `newDescribeTapeRecoveryPointsOutput`

``` purescript
newDescribeTapeRecoveryPointsOutput :: DescribeTapeRecoveryPointsOutput
```

Constructs DescribeTapeRecoveryPointsOutput from required parameters

#### `newDescribeTapeRecoveryPointsOutput'`

``` purescript
newDescribeTapeRecoveryPointsOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "TapeRecoveryPointInfos" :: NullOrUndefined (TapeRecoveryPointInfos), "Marker" :: NullOrUndefined (Marker) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "TapeRecoveryPointInfos" :: NullOrUndefined (TapeRecoveryPointInfos), "Marker" :: NullOrUndefined (Marker) }) -> DescribeTapeRecoveryPointsOutput
```

Constructs DescribeTapeRecoveryPointsOutput's fields from required parameters

#### `DescribeTapesInput`

``` purescript
newtype DescribeTapesInput
  = DescribeTapesInput { "GatewayARN" :: GatewayARN, "TapeARNs" :: NullOrUndefined (TapeARNs), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }
```

<p>DescribeTapesInput</p>

##### Instances
``` purescript
Newtype DescribeTapesInput _
Generic DescribeTapesInput _
Show DescribeTapesInput
Decode DescribeTapesInput
Encode DescribeTapesInput
```

#### `newDescribeTapesInput`

``` purescript
newDescribeTapesInput :: GatewayARN -> DescribeTapesInput
```

Constructs DescribeTapesInput from required parameters

#### `newDescribeTapesInput'`

``` purescript
newDescribeTapesInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN, "TapeARNs" :: NullOrUndefined (TapeARNs), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) } -> { "GatewayARN" :: GatewayARN, "TapeARNs" :: NullOrUndefined (TapeARNs), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }) -> DescribeTapesInput
```

Constructs DescribeTapesInput's fields from required parameters

#### `DescribeTapesOutput`

``` purescript
newtype DescribeTapesOutput
  = DescribeTapesOutput { "Tapes" :: NullOrUndefined (Tapes), "Marker" :: NullOrUndefined (Marker) }
```

<p>DescribeTapesOutput</p>

##### Instances
``` purescript
Newtype DescribeTapesOutput _
Generic DescribeTapesOutput _
Show DescribeTapesOutput
Decode DescribeTapesOutput
Encode DescribeTapesOutput
```

#### `newDescribeTapesOutput`

``` purescript
newDescribeTapesOutput :: DescribeTapesOutput
```

Constructs DescribeTapesOutput from required parameters

#### `newDescribeTapesOutput'`

``` purescript
newDescribeTapesOutput' :: ({ "Tapes" :: NullOrUndefined (Tapes), "Marker" :: NullOrUndefined (Marker) } -> { "Tapes" :: NullOrUndefined (Tapes), "Marker" :: NullOrUndefined (Marker) }) -> DescribeTapesOutput
```

Constructs DescribeTapesOutput's fields from required parameters

#### `DescribeUploadBufferInput`

``` purescript
newtype DescribeUploadBufferInput
  = DescribeUploadBufferInput { "GatewayARN" :: GatewayARN }
```

##### Instances
``` purescript
Newtype DescribeUploadBufferInput _
Generic DescribeUploadBufferInput _
Show DescribeUploadBufferInput
Decode DescribeUploadBufferInput
Encode DescribeUploadBufferInput
```

#### `newDescribeUploadBufferInput`

``` purescript
newDescribeUploadBufferInput :: GatewayARN -> DescribeUploadBufferInput
```

Constructs DescribeUploadBufferInput from required parameters

#### `newDescribeUploadBufferInput'`

``` purescript
newDescribeUploadBufferInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> DescribeUploadBufferInput
```

Constructs DescribeUploadBufferInput's fields from required parameters

#### `DescribeUploadBufferOutput`

``` purescript
newtype DescribeUploadBufferOutput
  = DescribeUploadBufferOutput { "GatewayARN" :: NullOrUndefined (GatewayARN), "DiskIds" :: NullOrUndefined (DiskIds), "UploadBufferUsedInBytes" :: NullOrUndefined (Number), "UploadBufferAllocatedInBytes" :: NullOrUndefined (Number) }
```

##### Instances
``` purescript
Newtype DescribeUploadBufferOutput _
Generic DescribeUploadBufferOutput _
Show DescribeUploadBufferOutput
Decode DescribeUploadBufferOutput
Encode DescribeUploadBufferOutput
```

#### `newDescribeUploadBufferOutput`

``` purescript
newDescribeUploadBufferOutput :: DescribeUploadBufferOutput
```

Constructs DescribeUploadBufferOutput from required parameters

#### `newDescribeUploadBufferOutput'`

``` purescript
newDescribeUploadBufferOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "DiskIds" :: NullOrUndefined (DiskIds), "UploadBufferUsedInBytes" :: NullOrUndefined (Number), "UploadBufferAllocatedInBytes" :: NullOrUndefined (Number) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "DiskIds" :: NullOrUndefined (DiskIds), "UploadBufferUsedInBytes" :: NullOrUndefined (Number), "UploadBufferAllocatedInBytes" :: NullOrUndefined (Number) }) -> DescribeUploadBufferOutput
```

Constructs DescribeUploadBufferOutput's fields from required parameters

#### `DescribeVTLDevicesInput`

``` purescript
newtype DescribeVTLDevicesInput
  = DescribeVTLDevicesInput { "GatewayARN" :: GatewayARN, "VTLDeviceARNs" :: NullOrUndefined (VTLDeviceARNs), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }
```

<p>DescribeVTLDevicesInput</p>

##### Instances
``` purescript
Newtype DescribeVTLDevicesInput _
Generic DescribeVTLDevicesInput _
Show DescribeVTLDevicesInput
Decode DescribeVTLDevicesInput
Encode DescribeVTLDevicesInput
```

#### `newDescribeVTLDevicesInput`

``` purescript
newDescribeVTLDevicesInput :: GatewayARN -> DescribeVTLDevicesInput
```

Constructs DescribeVTLDevicesInput from required parameters

#### `newDescribeVTLDevicesInput'`

``` purescript
newDescribeVTLDevicesInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN, "VTLDeviceARNs" :: NullOrUndefined (VTLDeviceARNs), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) } -> { "GatewayARN" :: GatewayARN, "VTLDeviceARNs" :: NullOrUndefined (VTLDeviceARNs), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }) -> DescribeVTLDevicesInput
```

Constructs DescribeVTLDevicesInput's fields from required parameters

#### `DescribeVTLDevicesOutput`

``` purescript
newtype DescribeVTLDevicesOutput
  = DescribeVTLDevicesOutput { "GatewayARN" :: NullOrUndefined (GatewayARN), "VTLDevices" :: NullOrUndefined (VTLDevices), "Marker" :: NullOrUndefined (Marker) }
```

<p>DescribeVTLDevicesOutput</p>

##### Instances
``` purescript
Newtype DescribeVTLDevicesOutput _
Generic DescribeVTLDevicesOutput _
Show DescribeVTLDevicesOutput
Decode DescribeVTLDevicesOutput
Encode DescribeVTLDevicesOutput
```

#### `newDescribeVTLDevicesOutput`

``` purescript
newDescribeVTLDevicesOutput :: DescribeVTLDevicesOutput
```

Constructs DescribeVTLDevicesOutput from required parameters

#### `newDescribeVTLDevicesOutput'`

``` purescript
newDescribeVTLDevicesOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "VTLDevices" :: NullOrUndefined (VTLDevices), "Marker" :: NullOrUndefined (Marker) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "VTLDevices" :: NullOrUndefined (VTLDevices), "Marker" :: NullOrUndefined (Marker) }) -> DescribeVTLDevicesOutput
```

Constructs DescribeVTLDevicesOutput's fields from required parameters

#### `DescribeWorkingStorageInput`

``` purescript
newtype DescribeWorkingStorageInput
  = DescribeWorkingStorageInput { "GatewayARN" :: GatewayARN }
```

<p>A JSON object containing the of the gateway.</p>

##### Instances
``` purescript
Newtype DescribeWorkingStorageInput _
Generic DescribeWorkingStorageInput _
Show DescribeWorkingStorageInput
Decode DescribeWorkingStorageInput
Encode DescribeWorkingStorageInput
```

#### `newDescribeWorkingStorageInput`

``` purescript
newDescribeWorkingStorageInput :: GatewayARN -> DescribeWorkingStorageInput
```

Constructs DescribeWorkingStorageInput from required parameters

#### `newDescribeWorkingStorageInput'`

``` purescript
newDescribeWorkingStorageInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> DescribeWorkingStorageInput
```

Constructs DescribeWorkingStorageInput's fields from required parameters

#### `DescribeWorkingStorageOutput`

``` purescript
newtype DescribeWorkingStorageOutput
  = DescribeWorkingStorageOutput { "GatewayARN" :: NullOrUndefined (GatewayARN), "DiskIds" :: NullOrUndefined (DiskIds), "WorkingStorageUsedInBytes" :: NullOrUndefined (Number), "WorkingStorageAllocatedInBytes" :: NullOrUndefined (Number) }
```

<p>A JSON object containing the following fields:</p>

##### Instances
``` purescript
Newtype DescribeWorkingStorageOutput _
Generic DescribeWorkingStorageOutput _
Show DescribeWorkingStorageOutput
Decode DescribeWorkingStorageOutput
Encode DescribeWorkingStorageOutput
```

#### `newDescribeWorkingStorageOutput`

``` purescript
newDescribeWorkingStorageOutput :: DescribeWorkingStorageOutput
```

Constructs DescribeWorkingStorageOutput from required parameters

#### `newDescribeWorkingStorageOutput'`

``` purescript
newDescribeWorkingStorageOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "DiskIds" :: NullOrUndefined (DiskIds), "WorkingStorageUsedInBytes" :: NullOrUndefined (Number), "WorkingStorageAllocatedInBytes" :: NullOrUndefined (Number) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "DiskIds" :: NullOrUndefined (DiskIds), "WorkingStorageUsedInBytes" :: NullOrUndefined (Number), "WorkingStorageAllocatedInBytes" :: NullOrUndefined (Number) }) -> DescribeWorkingStorageOutput
```

Constructs DescribeWorkingStorageOutput's fields from required parameters

#### `Description`

``` purescript
newtype Description
  = Description String
```

##### Instances
``` purescript
Newtype Description _
Generic Description _
Show Description
Decode Description
Encode Description
```

#### `DeviceType`

``` purescript
newtype DeviceType
  = DeviceType String
```

##### Instances
``` purescript
Newtype DeviceType _
Generic DeviceType _
Show DeviceType
Decode DeviceType
Encode DeviceType
```

#### `DeviceiSCSIAttributes`

``` purescript
newtype DeviceiSCSIAttributes
  = DeviceiSCSIAttributes { "TargetARN" :: NullOrUndefined (TargetARN), "NetworkInterfaceId" :: NullOrUndefined (NetworkInterfaceId), "NetworkInterfacePort" :: NullOrUndefined (Int), "ChapEnabled" :: NullOrUndefined (Boolean) }
```

<p>Lists iSCSI information about a VTL device.</p>

##### Instances
``` purescript
Newtype DeviceiSCSIAttributes _
Generic DeviceiSCSIAttributes _
Show DeviceiSCSIAttributes
Decode DeviceiSCSIAttributes
Encode DeviceiSCSIAttributes
```

#### `newDeviceiSCSIAttributes`

``` purescript
newDeviceiSCSIAttributes :: DeviceiSCSIAttributes
```

Constructs DeviceiSCSIAttributes from required parameters

#### `newDeviceiSCSIAttributes'`

``` purescript
newDeviceiSCSIAttributes' :: ({ "TargetARN" :: NullOrUndefined (TargetARN), "NetworkInterfaceId" :: NullOrUndefined (NetworkInterfaceId), "NetworkInterfacePort" :: NullOrUndefined (Int), "ChapEnabled" :: NullOrUndefined (Boolean) } -> { "TargetARN" :: NullOrUndefined (TargetARN), "NetworkInterfaceId" :: NullOrUndefined (NetworkInterfaceId), "NetworkInterfacePort" :: NullOrUndefined (Int), "ChapEnabled" :: NullOrUndefined (Boolean) }) -> DeviceiSCSIAttributes
```

Constructs DeviceiSCSIAttributes's fields from required parameters

#### `DisableGatewayInput`

``` purescript
newtype DisableGatewayInput
  = DisableGatewayInput { "GatewayARN" :: GatewayARN }
```

<p>DisableGatewayInput</p>

##### Instances
``` purescript
Newtype DisableGatewayInput _
Generic DisableGatewayInput _
Show DisableGatewayInput
Decode DisableGatewayInput
Encode DisableGatewayInput
```

#### `newDisableGatewayInput`

``` purescript
newDisableGatewayInput :: GatewayARN -> DisableGatewayInput
```

Constructs DisableGatewayInput from required parameters

#### `newDisableGatewayInput'`

``` purescript
newDisableGatewayInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> DisableGatewayInput
```

Constructs DisableGatewayInput's fields from required parameters

#### `DisableGatewayOutput`

``` purescript
newtype DisableGatewayOutput
  = DisableGatewayOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

<p>DisableGatewayOutput</p>

##### Instances
``` purescript
Newtype DisableGatewayOutput _
Generic DisableGatewayOutput _
Show DisableGatewayOutput
Decode DisableGatewayOutput
Encode DisableGatewayOutput
```

#### `newDisableGatewayOutput`

``` purescript
newDisableGatewayOutput :: DisableGatewayOutput
```

Constructs DisableGatewayOutput from required parameters

#### `newDisableGatewayOutput'`

``` purescript
newDisableGatewayOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> DisableGatewayOutput
```

Constructs DisableGatewayOutput's fields from required parameters

#### `Disk`

``` purescript
newtype Disk
  = Disk { "DiskId" :: NullOrUndefined (DiskId), "DiskPath" :: NullOrUndefined (String), "DiskNode" :: NullOrUndefined (String), "DiskStatus" :: NullOrUndefined (String), "DiskSizeInBytes" :: NullOrUndefined (Number), "DiskAllocationType" :: NullOrUndefined (DiskAllocationType), "DiskAllocationResource" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype Disk _
Generic Disk _
Show Disk
Decode Disk
Encode Disk
```

#### `newDisk`

``` purescript
newDisk :: Disk
```

Constructs Disk from required parameters

#### `newDisk'`

``` purescript
newDisk' :: ({ "DiskId" :: NullOrUndefined (DiskId), "DiskPath" :: NullOrUndefined (String), "DiskNode" :: NullOrUndefined (String), "DiskStatus" :: NullOrUndefined (String), "DiskSizeInBytes" :: NullOrUndefined (Number), "DiskAllocationType" :: NullOrUndefined (DiskAllocationType), "DiskAllocationResource" :: NullOrUndefined (String) } -> { "DiskId" :: NullOrUndefined (DiskId), "DiskPath" :: NullOrUndefined (String), "DiskNode" :: NullOrUndefined (String), "DiskStatus" :: NullOrUndefined (String), "DiskSizeInBytes" :: NullOrUndefined (Number), "DiskAllocationType" :: NullOrUndefined (DiskAllocationType), "DiskAllocationResource" :: NullOrUndefined (String) }) -> Disk
```

Constructs Disk's fields from required parameters

#### `DiskAllocationType`

``` purescript
newtype DiskAllocationType
  = DiskAllocationType String
```

##### Instances
``` purescript
Newtype DiskAllocationType _
Generic DiskAllocationType _
Show DiskAllocationType
Decode DiskAllocationType
Encode DiskAllocationType
```

#### `DiskId`

``` purescript
newtype DiskId
  = DiskId String
```

##### Instances
``` purescript
Newtype DiskId _
Generic DiskId _
Show DiskId
Decode DiskId
Encode DiskId
```

#### `DiskIds`

``` purescript
newtype DiskIds
  = DiskIds (Array DiskId)
```

##### Instances
``` purescript
Newtype DiskIds _
Generic DiskIds _
Show DiskIds
Decode DiskIds
Encode DiskIds
```

#### `Disks`

``` purescript
newtype Disks
  = Disks (Array Disk)
```

##### Instances
``` purescript
Newtype Disks _
Generic Disks _
Show Disks
Decode Disks
Encode Disks
```

#### `DoubleObject`

``` purescript
newtype DoubleObject
  = DoubleObject Number
```

##### Instances
``` purescript
Newtype DoubleObject _
Generic DoubleObject _
Show DoubleObject
Decode DoubleObject
Encode DoubleObject
```

#### `ErrorCode`

``` purescript
newtype ErrorCode
  = ErrorCode String
```

##### Instances
``` purescript
Newtype ErrorCode _
Generic ErrorCode _
Show ErrorCode
Decode ErrorCode
Encode ErrorCode
```

#### `FileShareARN`

``` purescript
newtype FileShareARN
  = FileShareARN String
```

<p>The Amazon Resource Name (ARN) of the file share. </p>

##### Instances
``` purescript
Newtype FileShareARN _
Generic FileShareARN _
Show FileShareARN
Decode FileShareARN
Encode FileShareARN
```

#### `FileShareARNList`

``` purescript
newtype FileShareARNList
  = FileShareARNList (Array FileShareARN)
```

##### Instances
``` purescript
Newtype FileShareARNList _
Generic FileShareARNList _
Show FileShareARNList
Decode FileShareARNList
Encode FileShareARNList
```

#### `FileShareClientList`

``` purescript
newtype FileShareClientList
  = FileShareClientList (Array IPV4AddressCIDR)
```

<p>The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. </p>

##### Instances
``` purescript
Newtype FileShareClientList _
Generic FileShareClientList _
Show FileShareClientList
Decode FileShareClientList
Encode FileShareClientList
```

#### `FileShareId`

``` purescript
newtype FileShareId
  = FileShareId String
```

<p>The ID of the file share. </p>

##### Instances
``` purescript
Newtype FileShareId _
Generic FileShareId _
Show FileShareId
Decode FileShareId
Encode FileShareId
```

#### `FileShareInfo`

``` purescript
newtype FileShareInfo
  = FileShareInfo { "FileShareARN" :: NullOrUndefined (FileShareARN), "FileShareId" :: NullOrUndefined (FileShareId), "FileShareStatus" :: NullOrUndefined (FileShareStatus), "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

<p>Describes a file share.</p>

##### Instances
``` purescript
Newtype FileShareInfo _
Generic FileShareInfo _
Show FileShareInfo
Decode FileShareInfo
Encode FileShareInfo
```

#### `newFileShareInfo`

``` purescript
newFileShareInfo :: FileShareInfo
```

Constructs FileShareInfo from required parameters

#### `newFileShareInfo'`

``` purescript
newFileShareInfo' :: ({ "FileShareARN" :: NullOrUndefined (FileShareARN), "FileShareId" :: NullOrUndefined (FileShareId), "FileShareStatus" :: NullOrUndefined (FileShareStatus), "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "FileShareARN" :: NullOrUndefined (FileShareARN), "FileShareId" :: NullOrUndefined (FileShareId), "FileShareStatus" :: NullOrUndefined (FileShareStatus), "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> FileShareInfo
```

Constructs FileShareInfo's fields from required parameters

#### `FileShareInfoList`

``` purescript
newtype FileShareInfoList
  = FileShareInfoList (Array FileShareInfo)
```

##### Instances
``` purescript
Newtype FileShareInfoList _
Generic FileShareInfoList _
Show FileShareInfoList
Decode FileShareInfoList
Encode FileShareInfoList
```

#### `FileShareStatus`

``` purescript
newtype FileShareStatus
  = FileShareStatus String
```

<p>The status of the file share. Possible values are CREATING, UPDATING, AVAILABLE and DELETING. </p>

##### Instances
``` purescript
Newtype FileShareStatus _
Generic FileShareStatus _
Show FileShareStatus
Decode FileShareStatus
Encode FileShareStatus
```

#### `GatewayARN`

``` purescript
newtype GatewayARN
  = GatewayARN String
```

<p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>

##### Instances
``` purescript
Newtype GatewayARN _
Generic GatewayARN _
Show GatewayARN
Decode GatewayARN
Encode GatewayARN
```

#### `GatewayId`

``` purescript
newtype GatewayId
  = GatewayId String
```

##### Instances
``` purescript
Newtype GatewayId _
Generic GatewayId _
Show GatewayId
Decode GatewayId
Encode GatewayId
```

#### `GatewayInfo`

``` purescript
newtype GatewayInfo
  = GatewayInfo { "GatewayId" :: NullOrUndefined (GatewayId), "GatewayARN" :: NullOrUndefined (GatewayARN), "GatewayType" :: NullOrUndefined (GatewayType), "GatewayOperationalState" :: NullOrUndefined (GatewayOperationalState), "GatewayName" :: NullOrUndefined (String) }
```

<p>Describes a gateway object.</p>

##### Instances
``` purescript
Newtype GatewayInfo _
Generic GatewayInfo _
Show GatewayInfo
Decode GatewayInfo
Encode GatewayInfo
```

#### `newGatewayInfo`

``` purescript
newGatewayInfo :: GatewayInfo
```

Constructs GatewayInfo from required parameters

#### `newGatewayInfo'`

``` purescript
newGatewayInfo' :: ({ "GatewayId" :: NullOrUndefined (GatewayId), "GatewayARN" :: NullOrUndefined (GatewayARN), "GatewayType" :: NullOrUndefined (GatewayType), "GatewayOperationalState" :: NullOrUndefined (GatewayOperationalState), "GatewayName" :: NullOrUndefined (String) } -> { "GatewayId" :: NullOrUndefined (GatewayId), "GatewayARN" :: NullOrUndefined (GatewayARN), "GatewayType" :: NullOrUndefined (GatewayType), "GatewayOperationalState" :: NullOrUndefined (GatewayOperationalState), "GatewayName" :: NullOrUndefined (String) }) -> GatewayInfo
```

Constructs GatewayInfo's fields from required parameters

#### `GatewayName`

``` purescript
newtype GatewayName
  = GatewayName String
```

<p>The name you configured for your gateway.</p>

##### Instances
``` purescript
Newtype GatewayName _
Generic GatewayName _
Show GatewayName
Decode GatewayName
Encode GatewayName
```

#### `GatewayNetworkInterfaces`

``` purescript
newtype GatewayNetworkInterfaces
  = GatewayNetworkInterfaces (Array NetworkInterface)
```

##### Instances
``` purescript
Newtype GatewayNetworkInterfaces _
Generic GatewayNetworkInterfaces _
Show GatewayNetworkInterfaces
Decode GatewayNetworkInterfaces
Encode GatewayNetworkInterfaces
```

#### `GatewayOperationalState`

``` purescript
newtype GatewayOperationalState
  = GatewayOperationalState String
```

##### Instances
``` purescript
Newtype GatewayOperationalState _
Generic GatewayOperationalState _
Show GatewayOperationalState
Decode GatewayOperationalState
Encode GatewayOperationalState
```

#### `GatewayState`

``` purescript
newtype GatewayState
  = GatewayState String
```

##### Instances
``` purescript
Newtype GatewayState _
Generic GatewayState _
Show GatewayState
Decode GatewayState
Encode GatewayState
```

#### `GatewayTimezone`

``` purescript
newtype GatewayTimezone
  = GatewayTimezone String
```

##### Instances
``` purescript
Newtype GatewayTimezone _
Generic GatewayTimezone _
Show GatewayTimezone
Decode GatewayTimezone
Encode GatewayTimezone
```

#### `GatewayType`

``` purescript
newtype GatewayType
  = GatewayType String
```

##### Instances
``` purescript
Newtype GatewayType _
Generic GatewayType _
Show GatewayType
Decode GatewayType
Encode GatewayType
```

#### `Gateways`

``` purescript
newtype Gateways
  = Gateways (Array GatewayInfo)
```

##### Instances
``` purescript
Newtype Gateways _
Generic Gateways _
Show Gateways
Decode Gateways
Encode Gateways
```

#### `HourOfDay`

``` purescript
newtype HourOfDay
  = HourOfDay Int
```

##### Instances
``` purescript
Newtype HourOfDay _
Generic HourOfDay _
Show HourOfDay
Decode HourOfDay
Encode HourOfDay
```

#### `IPV4AddressCIDR`

``` purescript
newtype IPV4AddressCIDR
  = IPV4AddressCIDR String
```

##### Instances
``` purescript
Newtype IPV4AddressCIDR _
Generic IPV4AddressCIDR _
Show IPV4AddressCIDR
Decode IPV4AddressCIDR
Encode IPV4AddressCIDR
```

#### `Initiator`

``` purescript
newtype Initiator
  = Initiator String
```

##### Instances
``` purescript
Newtype Initiator _
Generic Initiator _
Show Initiator
Decode Initiator
Encode Initiator
```

#### `Initiators`

``` purescript
newtype Initiators
  = Initiators (Array Initiator)
```

##### Instances
``` purescript
Newtype Initiators _
Generic Initiators _
Show Initiators
Decode Initiators
Encode Initiators
```

#### `InternalServerError`

``` purescript
newtype InternalServerError
  = InternalServerError { message :: NullOrUndefined (String), error :: NullOrUndefined (StorageGatewayError) }
```

<p>An internal server error has occurred during the request. For more information, see the error and message fields.</p>

##### Instances
``` purescript
Newtype InternalServerError _
Generic InternalServerError _
Show InternalServerError
Decode InternalServerError
Encode InternalServerError
```

#### `newInternalServerError`

``` purescript
newInternalServerError :: InternalServerError
```

Constructs InternalServerError from required parameters

#### `newInternalServerError'`

``` purescript
newInternalServerError' :: ({ message :: NullOrUndefined (String), error :: NullOrUndefined (StorageGatewayError) } -> { message :: NullOrUndefined (String), error :: NullOrUndefined (StorageGatewayError) }) -> InternalServerError
```

Constructs InternalServerError's fields from required parameters

#### `InvalidGatewayRequestException`

``` purescript
newtype InvalidGatewayRequestException
  = InvalidGatewayRequestException { message :: NullOrUndefined (String), error :: NullOrUndefined (StorageGatewayError) }
```

<p>An exception occurred because an invalid gateway request was issued to the service. For more information, see the error and message fields.</p>

##### Instances
``` purescript
Newtype InvalidGatewayRequestException _
Generic InvalidGatewayRequestException _
Show InvalidGatewayRequestException
Decode InvalidGatewayRequestException
Encode InvalidGatewayRequestException
```

#### `newInvalidGatewayRequestException`

``` purescript
newInvalidGatewayRequestException :: InvalidGatewayRequestException
```

Constructs InvalidGatewayRequestException from required parameters

#### `newInvalidGatewayRequestException'`

``` purescript
newInvalidGatewayRequestException' :: ({ message :: NullOrUndefined (String), error :: NullOrUndefined (StorageGatewayError) } -> { message :: NullOrUndefined (String), error :: NullOrUndefined (StorageGatewayError) }) -> InvalidGatewayRequestException
```

Constructs InvalidGatewayRequestException's fields from required parameters

#### `IqnName`

``` purescript
newtype IqnName
  = IqnName String
```

##### Instances
``` purescript
Newtype IqnName _
Generic IqnName _
Show IqnName
Decode IqnName
Encode IqnName
```

#### `KMSKey`

``` purescript
newtype KMSKey
  = KMSKey String
```

<p>The ARN of the KMS key used for Amazon S3 server side encryption. </p>

##### Instances
``` purescript
Newtype KMSKey _
Generic KMSKey _
Show KMSKey
Decode KMSKey
Encode KMSKey
```

#### `LastSoftwareUpdate`

``` purescript
newtype LastSoftwareUpdate
  = LastSoftwareUpdate String
```

##### Instances
``` purescript
Newtype LastSoftwareUpdate _
Generic LastSoftwareUpdate _
Show LastSoftwareUpdate
Decode LastSoftwareUpdate
Encode LastSoftwareUpdate
```

#### `ListFileSharesInput`

``` purescript
newtype ListFileSharesInput
  = ListFileSharesInput { "GatewayARN" :: NullOrUndefined (GatewayARN), "Limit" :: NullOrUndefined (PositiveIntObject), "Marker" :: NullOrUndefined (Marker) }
```

<p>ListFileShareInput</p>

##### Instances
``` purescript
Newtype ListFileSharesInput _
Generic ListFileSharesInput _
Show ListFileSharesInput
Decode ListFileSharesInput
Encode ListFileSharesInput
```

#### `newListFileSharesInput`

``` purescript
newListFileSharesInput :: ListFileSharesInput
```

Constructs ListFileSharesInput from required parameters

#### `newListFileSharesInput'`

``` purescript
newListFileSharesInput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "Limit" :: NullOrUndefined (PositiveIntObject), "Marker" :: NullOrUndefined (Marker) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "Limit" :: NullOrUndefined (PositiveIntObject), "Marker" :: NullOrUndefined (Marker) }) -> ListFileSharesInput
```

Constructs ListFileSharesInput's fields from required parameters

#### `ListFileSharesOutput`

``` purescript
newtype ListFileSharesOutput
  = ListFileSharesOutput { "Marker" :: NullOrUndefined (Marker), "NextMarker" :: NullOrUndefined (Marker), "FileShareInfoList" :: NullOrUndefined (FileShareInfoList) }
```

<p>ListFileShareOutput</p>

##### Instances
``` purescript
Newtype ListFileSharesOutput _
Generic ListFileSharesOutput _
Show ListFileSharesOutput
Decode ListFileSharesOutput
Encode ListFileSharesOutput
```

#### `newListFileSharesOutput`

``` purescript
newListFileSharesOutput :: ListFileSharesOutput
```

Constructs ListFileSharesOutput from required parameters

#### `newListFileSharesOutput'`

``` purescript
newListFileSharesOutput' :: ({ "Marker" :: NullOrUndefined (Marker), "NextMarker" :: NullOrUndefined (Marker), "FileShareInfoList" :: NullOrUndefined (FileShareInfoList) } -> { "Marker" :: NullOrUndefined (Marker), "NextMarker" :: NullOrUndefined (Marker), "FileShareInfoList" :: NullOrUndefined (FileShareInfoList) }) -> ListFileSharesOutput
```

Constructs ListFileSharesOutput's fields from required parameters

#### `ListGatewaysInput`

``` purescript
newtype ListGatewaysInput
  = ListGatewaysInput { "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }
```

<p>A JSON object containing zero or more of the following fields:</p> <ul> <li> <p> <a>ListGatewaysInput$Limit</a> </p> </li> <li> <p> <a>ListGatewaysInput$Marker</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype ListGatewaysInput _
Generic ListGatewaysInput _
Show ListGatewaysInput
Decode ListGatewaysInput
Encode ListGatewaysInput
```

#### `newListGatewaysInput`

``` purescript
newListGatewaysInput :: ListGatewaysInput
```

Constructs ListGatewaysInput from required parameters

#### `newListGatewaysInput'`

``` purescript
newListGatewaysInput' :: ({ "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) } -> { "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }) -> ListGatewaysInput
```

Constructs ListGatewaysInput's fields from required parameters

#### `ListGatewaysOutput`

``` purescript
newtype ListGatewaysOutput
  = ListGatewaysOutput { "Gateways" :: NullOrUndefined (Gateways), "Marker" :: NullOrUndefined (Marker) }
```

##### Instances
``` purescript
Newtype ListGatewaysOutput _
Generic ListGatewaysOutput _
Show ListGatewaysOutput
Decode ListGatewaysOutput
Encode ListGatewaysOutput
```

#### `newListGatewaysOutput`

``` purescript
newListGatewaysOutput :: ListGatewaysOutput
```

Constructs ListGatewaysOutput from required parameters

#### `newListGatewaysOutput'`

``` purescript
newListGatewaysOutput' :: ({ "Gateways" :: NullOrUndefined (Gateways), "Marker" :: NullOrUndefined (Marker) } -> { "Gateways" :: NullOrUndefined (Gateways), "Marker" :: NullOrUndefined (Marker) }) -> ListGatewaysOutput
```

Constructs ListGatewaysOutput's fields from required parameters

#### `ListLocalDisksInput`

``` purescript
newtype ListLocalDisksInput
  = ListLocalDisksInput { "GatewayARN" :: GatewayARN }
```

<p>A JSON object containing the of the gateway.</p>

##### Instances
``` purescript
Newtype ListLocalDisksInput _
Generic ListLocalDisksInput _
Show ListLocalDisksInput
Decode ListLocalDisksInput
Encode ListLocalDisksInput
```

#### `newListLocalDisksInput`

``` purescript
newListLocalDisksInput :: GatewayARN -> ListLocalDisksInput
```

Constructs ListLocalDisksInput from required parameters

#### `newListLocalDisksInput'`

``` purescript
newListLocalDisksInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> ListLocalDisksInput
```

Constructs ListLocalDisksInput's fields from required parameters

#### `ListLocalDisksOutput`

``` purescript
newtype ListLocalDisksOutput
  = ListLocalDisksOutput { "GatewayARN" :: NullOrUndefined (GatewayARN), "Disks" :: NullOrUndefined (Disks) }
```

##### Instances
``` purescript
Newtype ListLocalDisksOutput _
Generic ListLocalDisksOutput _
Show ListLocalDisksOutput
Decode ListLocalDisksOutput
Encode ListLocalDisksOutput
```

#### `newListLocalDisksOutput`

``` purescript
newListLocalDisksOutput :: ListLocalDisksOutput
```

Constructs ListLocalDisksOutput from required parameters

#### `newListLocalDisksOutput'`

``` purescript
newListLocalDisksOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "Disks" :: NullOrUndefined (Disks) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "Disks" :: NullOrUndefined (Disks) }) -> ListLocalDisksOutput
```

Constructs ListLocalDisksOutput's fields from required parameters

#### `ListTagsForResourceInput`

``` purescript
newtype ListTagsForResourceInput
  = ListTagsForResourceInput { "ResourceARN" :: ResourceARN, "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }
```

<p>ListTagsForResourceInput</p>

##### Instances
``` purescript
Newtype ListTagsForResourceInput _
Generic ListTagsForResourceInput _
Show ListTagsForResourceInput
Decode ListTagsForResourceInput
Encode ListTagsForResourceInput
```

#### `newListTagsForResourceInput`

``` purescript
newListTagsForResourceInput :: ResourceARN -> ListTagsForResourceInput
```

Constructs ListTagsForResourceInput from required parameters

#### `newListTagsForResourceInput'`

``` purescript
newListTagsForResourceInput' :: ResourceARN -> ({ "ResourceARN" :: ResourceARN, "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) } -> { "ResourceARN" :: ResourceARN, "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }) -> ListTagsForResourceInput
```

Constructs ListTagsForResourceInput's fields from required parameters

#### `ListTagsForResourceOutput`

``` purescript
newtype ListTagsForResourceOutput
  = ListTagsForResourceOutput { "ResourceARN" :: NullOrUndefined (ResourceARN), "Marker" :: NullOrUndefined (Marker), "Tags" :: NullOrUndefined (Tags) }
```

<p>ListTagsForResourceOutput</p>

##### Instances
``` purescript
Newtype ListTagsForResourceOutput _
Generic ListTagsForResourceOutput _
Show ListTagsForResourceOutput
Decode ListTagsForResourceOutput
Encode ListTagsForResourceOutput
```

#### `newListTagsForResourceOutput`

``` purescript
newListTagsForResourceOutput :: ListTagsForResourceOutput
```

Constructs ListTagsForResourceOutput from required parameters

#### `newListTagsForResourceOutput'`

``` purescript
newListTagsForResourceOutput' :: ({ "ResourceARN" :: NullOrUndefined (ResourceARN), "Marker" :: NullOrUndefined (Marker), "Tags" :: NullOrUndefined (Tags) } -> { "ResourceARN" :: NullOrUndefined (ResourceARN), "Marker" :: NullOrUndefined (Marker), "Tags" :: NullOrUndefined (Tags) }) -> ListTagsForResourceOutput
```

Constructs ListTagsForResourceOutput's fields from required parameters

#### `ListTapesInput`

``` purescript
newtype ListTapesInput
  = ListTapesInput { "TapeARNs" :: NullOrUndefined (TapeARNs), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }
```

<p>A JSON object that contains one or more of the following fields:</p> <ul> <li> <p> <a>ListTapesInput$Limit</a> </p> </li> <li> <p> <a>ListTapesInput$Marker</a> </p> </li> <li> <p> <a>ListTapesInput$TapeARNs</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype ListTapesInput _
Generic ListTapesInput _
Show ListTapesInput
Decode ListTapesInput
Encode ListTapesInput
```

#### `newListTapesInput`

``` purescript
newListTapesInput :: ListTapesInput
```

Constructs ListTapesInput from required parameters

#### `newListTapesInput'`

``` purescript
newListTapesInput' :: ({ "TapeARNs" :: NullOrUndefined (TapeARNs), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) } -> { "TapeARNs" :: NullOrUndefined (TapeARNs), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }) -> ListTapesInput
```

Constructs ListTapesInput's fields from required parameters

#### `ListTapesOutput`

``` purescript
newtype ListTapesOutput
  = ListTapesOutput { "TapeInfos" :: NullOrUndefined (TapeInfos), "Marker" :: NullOrUndefined (Marker) }
```

<p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>ListTapesOutput$Marker</a> </p> </li> <li> <p> <a>ListTapesOutput$VolumeInfos</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype ListTapesOutput _
Generic ListTapesOutput _
Show ListTapesOutput
Decode ListTapesOutput
Encode ListTapesOutput
```

#### `newListTapesOutput`

``` purescript
newListTapesOutput :: ListTapesOutput
```

Constructs ListTapesOutput from required parameters

#### `newListTapesOutput'`

``` purescript
newListTapesOutput' :: ({ "TapeInfos" :: NullOrUndefined (TapeInfos), "Marker" :: NullOrUndefined (Marker) } -> { "TapeInfos" :: NullOrUndefined (TapeInfos), "Marker" :: NullOrUndefined (Marker) }) -> ListTapesOutput
```

Constructs ListTapesOutput's fields from required parameters

#### `ListVolumeInitiatorsInput`

``` purescript
newtype ListVolumeInitiatorsInput
  = ListVolumeInitiatorsInput { "VolumeARN" :: VolumeARN }
```

<p>ListVolumeInitiatorsInput</p>

##### Instances
``` purescript
Newtype ListVolumeInitiatorsInput _
Generic ListVolumeInitiatorsInput _
Show ListVolumeInitiatorsInput
Decode ListVolumeInitiatorsInput
Encode ListVolumeInitiatorsInput
```

#### `newListVolumeInitiatorsInput`

``` purescript
newListVolumeInitiatorsInput :: VolumeARN -> ListVolumeInitiatorsInput
```

Constructs ListVolumeInitiatorsInput from required parameters

#### `newListVolumeInitiatorsInput'`

``` purescript
newListVolumeInitiatorsInput' :: VolumeARN -> ({ "VolumeARN" :: VolumeARN } -> { "VolumeARN" :: VolumeARN }) -> ListVolumeInitiatorsInput
```

Constructs ListVolumeInitiatorsInput's fields from required parameters

#### `ListVolumeInitiatorsOutput`

``` purescript
newtype ListVolumeInitiatorsOutput
  = ListVolumeInitiatorsOutput { "Initiators" :: NullOrUndefined (Initiators) }
```

<p>ListVolumeInitiatorsOutput</p>

##### Instances
``` purescript
Newtype ListVolumeInitiatorsOutput _
Generic ListVolumeInitiatorsOutput _
Show ListVolumeInitiatorsOutput
Decode ListVolumeInitiatorsOutput
Encode ListVolumeInitiatorsOutput
```

#### `newListVolumeInitiatorsOutput`

``` purescript
newListVolumeInitiatorsOutput :: ListVolumeInitiatorsOutput
```

Constructs ListVolumeInitiatorsOutput from required parameters

#### `newListVolumeInitiatorsOutput'`

``` purescript
newListVolumeInitiatorsOutput' :: ({ "Initiators" :: NullOrUndefined (Initiators) } -> { "Initiators" :: NullOrUndefined (Initiators) }) -> ListVolumeInitiatorsOutput
```

Constructs ListVolumeInitiatorsOutput's fields from required parameters

#### `ListVolumeRecoveryPointsInput`

``` purescript
newtype ListVolumeRecoveryPointsInput
  = ListVolumeRecoveryPointsInput { "GatewayARN" :: GatewayARN }
```

##### Instances
``` purescript
Newtype ListVolumeRecoveryPointsInput _
Generic ListVolumeRecoveryPointsInput _
Show ListVolumeRecoveryPointsInput
Decode ListVolumeRecoveryPointsInput
Encode ListVolumeRecoveryPointsInput
```

#### `newListVolumeRecoveryPointsInput`

``` purescript
newListVolumeRecoveryPointsInput :: GatewayARN -> ListVolumeRecoveryPointsInput
```

Constructs ListVolumeRecoveryPointsInput from required parameters

#### `newListVolumeRecoveryPointsInput'`

``` purescript
newListVolumeRecoveryPointsInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> ListVolumeRecoveryPointsInput
```

Constructs ListVolumeRecoveryPointsInput's fields from required parameters

#### `ListVolumeRecoveryPointsOutput`

``` purescript
newtype ListVolumeRecoveryPointsOutput
  = ListVolumeRecoveryPointsOutput { "GatewayARN" :: NullOrUndefined (GatewayARN), "VolumeRecoveryPointInfos" :: NullOrUndefined (VolumeRecoveryPointInfos) }
```

##### Instances
``` purescript
Newtype ListVolumeRecoveryPointsOutput _
Generic ListVolumeRecoveryPointsOutput _
Show ListVolumeRecoveryPointsOutput
Decode ListVolumeRecoveryPointsOutput
Encode ListVolumeRecoveryPointsOutput
```

#### `newListVolumeRecoveryPointsOutput`

``` purescript
newListVolumeRecoveryPointsOutput :: ListVolumeRecoveryPointsOutput
```

Constructs ListVolumeRecoveryPointsOutput from required parameters

#### `newListVolumeRecoveryPointsOutput'`

``` purescript
newListVolumeRecoveryPointsOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "VolumeRecoveryPointInfos" :: NullOrUndefined (VolumeRecoveryPointInfos) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "VolumeRecoveryPointInfos" :: NullOrUndefined (VolumeRecoveryPointInfos) }) -> ListVolumeRecoveryPointsOutput
```

Constructs ListVolumeRecoveryPointsOutput's fields from required parameters

#### `ListVolumesInput`

``` purescript
newtype ListVolumesInput
  = ListVolumesInput { "GatewayARN" :: NullOrUndefined (GatewayARN), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }
```

<p>A JSON object that contains one or more of the following fields:</p> <ul> <li> <p> <a>ListVolumesInput$Limit</a> </p> </li> <li> <p> <a>ListVolumesInput$Marker</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype ListVolumesInput _
Generic ListVolumesInput _
Show ListVolumesInput
Decode ListVolumesInput
Encode ListVolumesInput
```

#### `newListVolumesInput`

``` purescript
newListVolumesInput :: ListVolumesInput
```

Constructs ListVolumesInput from required parameters

#### `newListVolumesInput'`

``` purescript
newListVolumesInput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "Marker" :: NullOrUndefined (Marker), "Limit" :: NullOrUndefined (PositiveIntObject) }) -> ListVolumesInput
```

Constructs ListVolumesInput's fields from required parameters

#### `ListVolumesOutput`

``` purescript
newtype ListVolumesOutput
  = ListVolumesOutput { "GatewayARN" :: NullOrUndefined (GatewayARN), "Marker" :: NullOrUndefined (Marker), "VolumeInfos" :: NullOrUndefined (VolumeInfos) }
```

##### Instances
``` purescript
Newtype ListVolumesOutput _
Generic ListVolumesOutput _
Show ListVolumesOutput
Decode ListVolumesOutput
Encode ListVolumesOutput
```

#### `newListVolumesOutput`

``` purescript
newListVolumesOutput :: ListVolumesOutput
```

Constructs ListVolumesOutput from required parameters

#### `newListVolumesOutput'`

``` purescript
newListVolumesOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "Marker" :: NullOrUndefined (Marker), "VolumeInfos" :: NullOrUndefined (VolumeInfos) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "Marker" :: NullOrUndefined (Marker), "VolumeInfos" :: NullOrUndefined (VolumeInfos) }) -> ListVolumesOutput
```

Constructs ListVolumesOutput's fields from required parameters

#### `LocalConsolePassword`

``` purescript
newtype LocalConsolePassword
  = LocalConsolePassword String
```

##### Instances
``` purescript
Newtype LocalConsolePassword _
Generic LocalConsolePassword _
Show LocalConsolePassword
Decode LocalConsolePassword
Encode LocalConsolePassword
```

#### `LocationARN`

``` purescript
newtype LocationARN
  = LocationARN String
```

<p>The ARN of the backend storage used for storing file data. </p>

##### Instances
``` purescript
Newtype LocationARN _
Generic LocationARN _
Show LocationARN
Decode LocationARN
Encode LocationARN
```

#### `Marker`

``` purescript
newtype Marker
  = Marker String
```

##### Instances
``` purescript
Newtype Marker _
Generic Marker _
Show Marker
Decode Marker
Encode Marker
```

#### `MediumChangerType`

``` purescript
newtype MediumChangerType
  = MediumChangerType String
```

##### Instances
``` purescript
Newtype MediumChangerType _
Generic MediumChangerType _
Show MediumChangerType
Decode MediumChangerType
Encode MediumChangerType
```

#### `MinuteOfHour`

``` purescript
newtype MinuteOfHour
  = MinuteOfHour Int
```

##### Instances
``` purescript
Newtype MinuteOfHour _
Generic MinuteOfHour _
Show MinuteOfHour
Decode MinuteOfHour
Encode MinuteOfHour
```

#### `NFSFileShareDefaults`

``` purescript
newtype NFSFileShareDefaults
  = NFSFileShareDefaults { "FileMode" :: NullOrUndefined (PermissionMode), "DirectoryMode" :: NullOrUndefined (PermissionMode), "GroupId" :: NullOrUndefined (PermissionId), "OwnerId" :: NullOrUndefined (PermissionId) }
```

<p>Describes file share default values. Files and folders stored as Amazon S3 objects in S3 buckets don't, by default, have Unix file permissions assigned to them. Upon discovery in an S3 bucket by Storage Gateway, the S3 objects that represent files and folders are assigned these default Unix permissions. This operation is only supported in the file gateway type.</p>

##### Instances
``` purescript
Newtype NFSFileShareDefaults _
Generic NFSFileShareDefaults _
Show NFSFileShareDefaults
Decode NFSFileShareDefaults
Encode NFSFileShareDefaults
```

#### `newNFSFileShareDefaults`

``` purescript
newNFSFileShareDefaults :: NFSFileShareDefaults
```

Constructs NFSFileShareDefaults from required parameters

#### `newNFSFileShareDefaults'`

``` purescript
newNFSFileShareDefaults' :: ({ "FileMode" :: NullOrUndefined (PermissionMode), "DirectoryMode" :: NullOrUndefined (PermissionMode), "GroupId" :: NullOrUndefined (PermissionId), "OwnerId" :: NullOrUndefined (PermissionId) } -> { "FileMode" :: NullOrUndefined (PermissionMode), "DirectoryMode" :: NullOrUndefined (PermissionMode), "GroupId" :: NullOrUndefined (PermissionId), "OwnerId" :: NullOrUndefined (PermissionId) }) -> NFSFileShareDefaults
```

Constructs NFSFileShareDefaults's fields from required parameters

#### `NFSFileShareInfo`

``` purescript
newtype NFSFileShareInfo
  = NFSFileShareInfo { "NFSFileShareDefaults" :: NullOrUndefined (NFSFileShareDefaults), "FileShareARN" :: NullOrUndefined (FileShareARN), "FileShareId" :: NullOrUndefined (FileShareId), "FileShareStatus" :: NullOrUndefined (FileShareStatus), "GatewayARN" :: NullOrUndefined (GatewayARN), "KMSEncrypted" :: NullOrUndefined (Boolean), "KMSKey" :: NullOrUndefined (KMSKey), "Path" :: NullOrUndefined (Path), "Role" :: NullOrUndefined (Role), "LocationARN" :: NullOrUndefined (LocationARN), "DefaultStorageClass" :: NullOrUndefined (StorageClass), "ObjectACL" :: NullOrUndefined (ObjectACL), "ClientList" :: NullOrUndefined (FileShareClientList), "Squash" :: NullOrUndefined (Squash), "ReadOnly" :: NullOrUndefined (Boolean), "GuessMIMETypeEnabled" :: NullOrUndefined (Boolean), "RequesterPays" :: NullOrUndefined (Boolean) }
```

<p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>

##### Instances
``` purescript
Newtype NFSFileShareInfo _
Generic NFSFileShareInfo _
Show NFSFileShareInfo
Decode NFSFileShareInfo
Encode NFSFileShareInfo
```

#### `newNFSFileShareInfo`

``` purescript
newNFSFileShareInfo :: NFSFileShareInfo
```

Constructs NFSFileShareInfo from required parameters

#### `newNFSFileShareInfo'`

``` purescript
newNFSFileShareInfo' :: ({ "NFSFileShareDefaults" :: NullOrUndefined (NFSFileShareDefaults), "FileShareARN" :: NullOrUndefined (FileShareARN), "FileShareId" :: NullOrUndefined (FileShareId), "FileShareStatus" :: NullOrUndefined (FileShareStatus), "GatewayARN" :: NullOrUndefined (GatewayARN), "KMSEncrypted" :: NullOrUndefined (Boolean), "KMSKey" :: NullOrUndefined (KMSKey), "Path" :: NullOrUndefined (Path), "Role" :: NullOrUndefined (Role), "LocationARN" :: NullOrUndefined (LocationARN), "DefaultStorageClass" :: NullOrUndefined (StorageClass), "ObjectACL" :: NullOrUndefined (ObjectACL), "ClientList" :: NullOrUndefined (FileShareClientList), "Squash" :: NullOrUndefined (Squash), "ReadOnly" :: NullOrUndefined (Boolean), "GuessMIMETypeEnabled" :: NullOrUndefined (Boolean), "RequesterPays" :: NullOrUndefined (Boolean) } -> { "NFSFileShareDefaults" :: NullOrUndefined (NFSFileShareDefaults), "FileShareARN" :: NullOrUndefined (FileShareARN), "FileShareId" :: NullOrUndefined (FileShareId), "FileShareStatus" :: NullOrUndefined (FileShareStatus), "GatewayARN" :: NullOrUndefined (GatewayARN), "KMSEncrypted" :: NullOrUndefined (Boolean), "KMSKey" :: NullOrUndefined (KMSKey), "Path" :: NullOrUndefined (Path), "Role" :: NullOrUndefined (Role), "LocationARN" :: NullOrUndefined (LocationARN), "DefaultStorageClass" :: NullOrUndefined (StorageClass), "ObjectACL" :: NullOrUndefined (ObjectACL), "ClientList" :: NullOrUndefined (FileShareClientList), "Squash" :: NullOrUndefined (Squash), "ReadOnly" :: NullOrUndefined (Boolean), "GuessMIMETypeEnabled" :: NullOrUndefined (Boolean), "RequesterPays" :: NullOrUndefined (Boolean) }) -> NFSFileShareInfo
```

Constructs NFSFileShareInfo's fields from required parameters

#### `NFSFileShareInfoList`

``` purescript
newtype NFSFileShareInfoList
  = NFSFileShareInfoList (Array NFSFileShareInfo)
```

##### Instances
``` purescript
Newtype NFSFileShareInfoList _
Generic NFSFileShareInfoList _
Show NFSFileShareInfoList
Decode NFSFileShareInfoList
Encode NFSFileShareInfoList
```

#### `NetworkInterface`

``` purescript
newtype NetworkInterface
  = NetworkInterface { "Ipv4Address" :: NullOrUndefined (String), "MacAddress" :: NullOrUndefined (String), "Ipv6Address" :: NullOrUndefined (String) }
```

<p>Describes a gateway's network interface.</p>

##### Instances
``` purescript
Newtype NetworkInterface _
Generic NetworkInterface _
Show NetworkInterface
Decode NetworkInterface
Encode NetworkInterface
```

#### `newNetworkInterface`

``` purescript
newNetworkInterface :: NetworkInterface
```

Constructs NetworkInterface from required parameters

#### `newNetworkInterface'`

``` purescript
newNetworkInterface' :: ({ "Ipv4Address" :: NullOrUndefined (String), "MacAddress" :: NullOrUndefined (String), "Ipv6Address" :: NullOrUndefined (String) } -> { "Ipv4Address" :: NullOrUndefined (String), "MacAddress" :: NullOrUndefined (String), "Ipv6Address" :: NullOrUndefined (String) }) -> NetworkInterface
```

Constructs NetworkInterface's fields from required parameters

#### `NetworkInterfaceId`

``` purescript
newtype NetworkInterfaceId
  = NetworkInterfaceId String
```

##### Instances
``` purescript
Newtype NetworkInterfaceId _
Generic NetworkInterfaceId _
Show NetworkInterfaceId
Decode NetworkInterfaceId
Encode NetworkInterfaceId
```

#### `NextUpdateAvailabilityDate`

``` purescript
newtype NextUpdateAvailabilityDate
  = NextUpdateAvailabilityDate String
```

##### Instances
``` purescript
Newtype NextUpdateAvailabilityDate _
Generic NextUpdateAvailabilityDate _
Show NextUpdateAvailabilityDate
Decode NextUpdateAvailabilityDate
Encode NextUpdateAvailabilityDate
```

#### `NotificationId`

``` purescript
newtype NotificationId
  = NotificationId String
```

<p>The randomly generated ID of the notification that was sent. This ID is in UUID format.</p>

##### Instances
``` purescript
Newtype NotificationId _
Generic NotificationId _
Show NotificationId
Decode NotificationId
Encode NotificationId
```

#### `NotifyWhenUploadedInput`

``` purescript
newtype NotifyWhenUploadedInput
  = NotifyWhenUploadedInput { "FileShareARN" :: FileShareARN }
```

##### Instances
``` purescript
Newtype NotifyWhenUploadedInput _
Generic NotifyWhenUploadedInput _
Show NotifyWhenUploadedInput
Decode NotifyWhenUploadedInput
Encode NotifyWhenUploadedInput
```

#### `newNotifyWhenUploadedInput`

``` purescript
newNotifyWhenUploadedInput :: FileShareARN -> NotifyWhenUploadedInput
```

Constructs NotifyWhenUploadedInput from required parameters

#### `newNotifyWhenUploadedInput'`

``` purescript
newNotifyWhenUploadedInput' :: FileShareARN -> ({ "FileShareARN" :: FileShareARN } -> { "FileShareARN" :: FileShareARN }) -> NotifyWhenUploadedInput
```

Constructs NotifyWhenUploadedInput's fields from required parameters

#### `NotifyWhenUploadedOutput`

``` purescript
newtype NotifyWhenUploadedOutput
  = NotifyWhenUploadedOutput { "FileShareARN" :: NullOrUndefined (FileShareARN), "NotificationId" :: NullOrUndefined (NotificationId) }
```

##### Instances
``` purescript
Newtype NotifyWhenUploadedOutput _
Generic NotifyWhenUploadedOutput _
Show NotifyWhenUploadedOutput
Decode NotifyWhenUploadedOutput
Encode NotifyWhenUploadedOutput
```

#### `newNotifyWhenUploadedOutput`

``` purescript
newNotifyWhenUploadedOutput :: NotifyWhenUploadedOutput
```

Constructs NotifyWhenUploadedOutput from required parameters

#### `newNotifyWhenUploadedOutput'`

``` purescript
newNotifyWhenUploadedOutput' :: ({ "FileShareARN" :: NullOrUndefined (FileShareARN), "NotificationId" :: NullOrUndefined (NotificationId) } -> { "FileShareARN" :: NullOrUndefined (FileShareARN), "NotificationId" :: NullOrUndefined (NotificationId) }) -> NotifyWhenUploadedOutput
```

Constructs NotifyWhenUploadedOutput's fields from required parameters

#### `NumTapesToCreate`

``` purescript
newtype NumTapesToCreate
  = NumTapesToCreate Int
```

##### Instances
``` purescript
Newtype NumTapesToCreate _
Generic NumTapesToCreate _
Show NumTapesToCreate
Decode NumTapesToCreate
Encode NumTapesToCreate
```

#### `ObjectACL`

``` purescript
newtype ObjectACL
  = ObjectACL String
```

<p>Sets the access control list permission for objects in the S3 bucket that a file gateway puts objects into. The default value is "private".</p>

##### Instances
``` purescript
Newtype ObjectACL _
Generic ObjectACL _
Show ObjectACL
Decode ObjectACL
Encode ObjectACL
```

#### `Path`

``` purescript
newtype Path
  = Path String
```

<p>The file share path used by the NFS client to identify the mount point. </p>

##### Instances
``` purescript
Newtype Path _
Generic Path _
Show Path
Decode Path
Encode Path
```

#### `PermissionId`

``` purescript
newtype PermissionId
  = PermissionId Number
```

##### Instances
``` purescript
Newtype PermissionId _
Generic PermissionId _
Show PermissionId
Decode PermissionId
Encode PermissionId
```

#### `PermissionMode`

``` purescript
newtype PermissionMode
  = PermissionMode String
```

##### Instances
``` purescript
Newtype PermissionMode _
Generic PermissionMode _
Show PermissionMode
Decode PermissionMode
Encode PermissionMode
```

#### `PositiveIntObject`

``` purescript
newtype PositiveIntObject
  = PositiveIntObject Int
```

##### Instances
``` purescript
Newtype PositiveIntObject _
Generic PositiveIntObject _
Show PositiveIntObject
Decode PositiveIntObject
Encode PositiveIntObject
```

#### `RecurrenceInHours`

``` purescript
newtype RecurrenceInHours
  = RecurrenceInHours Int
```

##### Instances
``` purescript
Newtype RecurrenceInHours _
Generic RecurrenceInHours _
Show RecurrenceInHours
Decode RecurrenceInHours
Encode RecurrenceInHours
```

#### `RefreshCacheInput`

``` purescript
newtype RefreshCacheInput
  = RefreshCacheInput { "FileShareARN" :: FileShareARN }
```

##### Instances
``` purescript
Newtype RefreshCacheInput _
Generic RefreshCacheInput _
Show RefreshCacheInput
Decode RefreshCacheInput
Encode RefreshCacheInput
```

#### `newRefreshCacheInput`

``` purescript
newRefreshCacheInput :: FileShareARN -> RefreshCacheInput
```

Constructs RefreshCacheInput from required parameters

#### `newRefreshCacheInput'`

``` purescript
newRefreshCacheInput' :: FileShareARN -> ({ "FileShareARN" :: FileShareARN } -> { "FileShareARN" :: FileShareARN }) -> RefreshCacheInput
```

Constructs RefreshCacheInput's fields from required parameters

#### `RefreshCacheOutput`

``` purescript
newtype RefreshCacheOutput
  = RefreshCacheOutput { "FileShareARN" :: NullOrUndefined (FileShareARN) }
```

##### Instances
``` purescript
Newtype RefreshCacheOutput _
Generic RefreshCacheOutput _
Show RefreshCacheOutput
Decode RefreshCacheOutput
Encode RefreshCacheOutput
```

#### `newRefreshCacheOutput`

``` purescript
newRefreshCacheOutput :: RefreshCacheOutput
```

Constructs RefreshCacheOutput from required parameters

#### `newRefreshCacheOutput'`

``` purescript
newRefreshCacheOutput' :: ({ "FileShareARN" :: NullOrUndefined (FileShareARN) } -> { "FileShareARN" :: NullOrUndefined (FileShareARN) }) -> RefreshCacheOutput
```

Constructs RefreshCacheOutput's fields from required parameters

#### `RegionId`

``` purescript
newtype RegionId
  = RegionId String
```

##### Instances
``` purescript
Newtype RegionId _
Generic RegionId _
Show RegionId
Decode RegionId
Encode RegionId
```

#### `RemoveTagsFromResourceInput`

``` purescript
newtype RemoveTagsFromResourceInput
  = RemoveTagsFromResourceInput { "ResourceARN" :: ResourceARN, "TagKeys" :: TagKeys }
```

<p>RemoveTagsFromResourceInput</p>

##### Instances
``` purescript
Newtype RemoveTagsFromResourceInput _
Generic RemoveTagsFromResourceInput _
Show RemoveTagsFromResourceInput
Decode RemoveTagsFromResourceInput
Encode RemoveTagsFromResourceInput
```

#### `newRemoveTagsFromResourceInput`

``` purescript
newRemoveTagsFromResourceInput :: ResourceARN -> TagKeys -> RemoveTagsFromResourceInput
```

Constructs RemoveTagsFromResourceInput from required parameters

#### `newRemoveTagsFromResourceInput'`

``` purescript
newRemoveTagsFromResourceInput' :: ResourceARN -> TagKeys -> ({ "ResourceARN" :: ResourceARN, "TagKeys" :: TagKeys } -> { "ResourceARN" :: ResourceARN, "TagKeys" :: TagKeys }) -> RemoveTagsFromResourceInput
```

Constructs RemoveTagsFromResourceInput's fields from required parameters

#### `RemoveTagsFromResourceOutput`

``` purescript
newtype RemoveTagsFromResourceOutput
  = RemoveTagsFromResourceOutput { "ResourceARN" :: NullOrUndefined (ResourceARN) }
```

<p>RemoveTagsFromResourceOutput</p>

##### Instances
``` purescript
Newtype RemoveTagsFromResourceOutput _
Generic RemoveTagsFromResourceOutput _
Show RemoveTagsFromResourceOutput
Decode RemoveTagsFromResourceOutput
Encode RemoveTagsFromResourceOutput
```

#### `newRemoveTagsFromResourceOutput`

``` purescript
newRemoveTagsFromResourceOutput :: RemoveTagsFromResourceOutput
```

Constructs RemoveTagsFromResourceOutput from required parameters

#### `newRemoveTagsFromResourceOutput'`

``` purescript
newRemoveTagsFromResourceOutput' :: ({ "ResourceARN" :: NullOrUndefined (ResourceARN) } -> { "ResourceARN" :: NullOrUndefined (ResourceARN) }) -> RemoveTagsFromResourceOutput
```

Constructs RemoveTagsFromResourceOutput's fields from required parameters

#### `ResetCacheInput`

``` purescript
newtype ResetCacheInput
  = ResetCacheInput { "GatewayARN" :: GatewayARN }
```

##### Instances
``` purescript
Newtype ResetCacheInput _
Generic ResetCacheInput _
Show ResetCacheInput
Decode ResetCacheInput
Encode ResetCacheInput
```

#### `newResetCacheInput`

``` purescript
newResetCacheInput :: GatewayARN -> ResetCacheInput
```

Constructs ResetCacheInput from required parameters

#### `newResetCacheInput'`

``` purescript
newResetCacheInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> ResetCacheInput
```

Constructs ResetCacheInput's fields from required parameters

#### `ResetCacheOutput`

``` purescript
newtype ResetCacheOutput
  = ResetCacheOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

##### Instances
``` purescript
Newtype ResetCacheOutput _
Generic ResetCacheOutput _
Show ResetCacheOutput
Decode ResetCacheOutput
Encode ResetCacheOutput
```

#### `newResetCacheOutput`

``` purescript
newResetCacheOutput :: ResetCacheOutput
```

Constructs ResetCacheOutput from required parameters

#### `newResetCacheOutput'`

``` purescript
newResetCacheOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> ResetCacheOutput
```

Constructs ResetCacheOutput's fields from required parameters

#### `ResourceARN`

``` purescript
newtype ResourceARN
  = ResourceARN String
```

##### Instances
``` purescript
Newtype ResourceARN _
Generic ResourceARN _
Show ResourceARN
Decode ResourceARN
Encode ResourceARN
```

#### `RetrieveTapeArchiveInput`

``` purescript
newtype RetrieveTapeArchiveInput
  = RetrieveTapeArchiveInput { "TapeARN" :: TapeARN, "GatewayARN" :: GatewayARN }
```

<p>RetrieveTapeArchiveInput</p>

##### Instances
``` purescript
Newtype RetrieveTapeArchiveInput _
Generic RetrieveTapeArchiveInput _
Show RetrieveTapeArchiveInput
Decode RetrieveTapeArchiveInput
Encode RetrieveTapeArchiveInput
```

#### `newRetrieveTapeArchiveInput`

``` purescript
newRetrieveTapeArchiveInput :: GatewayARN -> TapeARN -> RetrieveTapeArchiveInput
```

Constructs RetrieveTapeArchiveInput from required parameters

#### `newRetrieveTapeArchiveInput'`

``` purescript
newRetrieveTapeArchiveInput' :: GatewayARN -> TapeARN -> ({ "TapeARN" :: TapeARN, "GatewayARN" :: GatewayARN } -> { "TapeARN" :: TapeARN, "GatewayARN" :: GatewayARN }) -> RetrieveTapeArchiveInput
```

Constructs RetrieveTapeArchiveInput's fields from required parameters

#### `RetrieveTapeArchiveOutput`

``` purescript
newtype RetrieveTapeArchiveOutput
  = RetrieveTapeArchiveOutput { "TapeARN" :: NullOrUndefined (TapeARN) }
```

<p>RetrieveTapeArchiveOutput</p>

##### Instances
``` purescript
Newtype RetrieveTapeArchiveOutput _
Generic RetrieveTapeArchiveOutput _
Show RetrieveTapeArchiveOutput
Decode RetrieveTapeArchiveOutput
Encode RetrieveTapeArchiveOutput
```

#### `newRetrieveTapeArchiveOutput`

``` purescript
newRetrieveTapeArchiveOutput :: RetrieveTapeArchiveOutput
```

Constructs RetrieveTapeArchiveOutput from required parameters

#### `newRetrieveTapeArchiveOutput'`

``` purescript
newRetrieveTapeArchiveOutput' :: ({ "TapeARN" :: NullOrUndefined (TapeARN) } -> { "TapeARN" :: NullOrUndefined (TapeARN) }) -> RetrieveTapeArchiveOutput
```

Constructs RetrieveTapeArchiveOutput's fields from required parameters

#### `RetrieveTapeRecoveryPointInput`

``` purescript
newtype RetrieveTapeRecoveryPointInput
  = RetrieveTapeRecoveryPointInput { "TapeARN" :: TapeARN, "GatewayARN" :: GatewayARN }
```

<p>RetrieveTapeRecoveryPointInput</p>

##### Instances
``` purescript
Newtype RetrieveTapeRecoveryPointInput _
Generic RetrieveTapeRecoveryPointInput _
Show RetrieveTapeRecoveryPointInput
Decode RetrieveTapeRecoveryPointInput
Encode RetrieveTapeRecoveryPointInput
```

#### `newRetrieveTapeRecoveryPointInput`

``` purescript
newRetrieveTapeRecoveryPointInput :: GatewayARN -> TapeARN -> RetrieveTapeRecoveryPointInput
```

Constructs RetrieveTapeRecoveryPointInput from required parameters

#### `newRetrieveTapeRecoveryPointInput'`

``` purescript
newRetrieveTapeRecoveryPointInput' :: GatewayARN -> TapeARN -> ({ "TapeARN" :: TapeARN, "GatewayARN" :: GatewayARN } -> { "TapeARN" :: TapeARN, "GatewayARN" :: GatewayARN }) -> RetrieveTapeRecoveryPointInput
```

Constructs RetrieveTapeRecoveryPointInput's fields from required parameters

#### `RetrieveTapeRecoveryPointOutput`

``` purescript
newtype RetrieveTapeRecoveryPointOutput
  = RetrieveTapeRecoveryPointOutput { "TapeARN" :: NullOrUndefined (TapeARN) }
```

<p>RetrieveTapeRecoveryPointOutput</p>

##### Instances
``` purescript
Newtype RetrieveTapeRecoveryPointOutput _
Generic RetrieveTapeRecoveryPointOutput _
Show RetrieveTapeRecoveryPointOutput
Decode RetrieveTapeRecoveryPointOutput
Encode RetrieveTapeRecoveryPointOutput
```

#### `newRetrieveTapeRecoveryPointOutput`

``` purescript
newRetrieveTapeRecoveryPointOutput :: RetrieveTapeRecoveryPointOutput
```

Constructs RetrieveTapeRecoveryPointOutput from required parameters

#### `newRetrieveTapeRecoveryPointOutput'`

``` purescript
newRetrieveTapeRecoveryPointOutput' :: ({ "TapeARN" :: NullOrUndefined (TapeARN) } -> { "TapeARN" :: NullOrUndefined (TapeARN) }) -> RetrieveTapeRecoveryPointOutput
```

Constructs RetrieveTapeRecoveryPointOutput's fields from required parameters

#### `Role`

``` purescript
newtype Role
  = Role String
```

<p>The ARN of the IAM role that file gateway assumes when it accesses the underlying storage. </p>

##### Instances
``` purescript
Newtype Role _
Generic Role _
Show Role
Decode Role
Encode Role
```

#### `ServiceUnavailableError`

``` purescript
newtype ServiceUnavailableError
  = ServiceUnavailableError { message :: NullOrUndefined (String), error :: NullOrUndefined (StorageGatewayError) }
```

<p>An internal server error has occurred because the service is unavailable. For more information, see the error and message fields.</p>

##### Instances
``` purescript
Newtype ServiceUnavailableError _
Generic ServiceUnavailableError _
Show ServiceUnavailableError
Decode ServiceUnavailableError
Encode ServiceUnavailableError
```

#### `newServiceUnavailableError`

``` purescript
newServiceUnavailableError :: ServiceUnavailableError
```

Constructs ServiceUnavailableError from required parameters

#### `newServiceUnavailableError'`

``` purescript
newServiceUnavailableError' :: ({ message :: NullOrUndefined (String), error :: NullOrUndefined (StorageGatewayError) } -> { message :: NullOrUndefined (String), error :: NullOrUndefined (StorageGatewayError) }) -> ServiceUnavailableError
```

Constructs ServiceUnavailableError's fields from required parameters

#### `SetLocalConsolePasswordInput`

``` purescript
newtype SetLocalConsolePasswordInput
  = SetLocalConsolePasswordInput { "GatewayARN" :: GatewayARN, "LocalConsolePassword" :: LocalConsolePassword }
```

<p>SetLocalConsolePasswordInput</p>

##### Instances
``` purescript
Newtype SetLocalConsolePasswordInput _
Generic SetLocalConsolePasswordInput _
Show SetLocalConsolePasswordInput
Decode SetLocalConsolePasswordInput
Encode SetLocalConsolePasswordInput
```

#### `newSetLocalConsolePasswordInput`

``` purescript
newSetLocalConsolePasswordInput :: GatewayARN -> LocalConsolePassword -> SetLocalConsolePasswordInput
```

Constructs SetLocalConsolePasswordInput from required parameters

#### `newSetLocalConsolePasswordInput'`

``` purescript
newSetLocalConsolePasswordInput' :: GatewayARN -> LocalConsolePassword -> ({ "GatewayARN" :: GatewayARN, "LocalConsolePassword" :: LocalConsolePassword } -> { "GatewayARN" :: GatewayARN, "LocalConsolePassword" :: LocalConsolePassword }) -> SetLocalConsolePasswordInput
```

Constructs SetLocalConsolePasswordInput's fields from required parameters

#### `SetLocalConsolePasswordOutput`

``` purescript
newtype SetLocalConsolePasswordOutput
  = SetLocalConsolePasswordOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

##### Instances
``` purescript
Newtype SetLocalConsolePasswordOutput _
Generic SetLocalConsolePasswordOutput _
Show SetLocalConsolePasswordOutput
Decode SetLocalConsolePasswordOutput
Encode SetLocalConsolePasswordOutput
```

#### `newSetLocalConsolePasswordOutput`

``` purescript
newSetLocalConsolePasswordOutput :: SetLocalConsolePasswordOutput
```

Constructs SetLocalConsolePasswordOutput from required parameters

#### `newSetLocalConsolePasswordOutput'`

``` purescript
newSetLocalConsolePasswordOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> SetLocalConsolePasswordOutput
```

Constructs SetLocalConsolePasswordOutput's fields from required parameters

#### `ShutdownGatewayInput`

``` purescript
newtype ShutdownGatewayInput
  = ShutdownGatewayInput { "GatewayARN" :: GatewayARN }
```

<p>A JSON object containing the of the gateway to shut down.</p>

##### Instances
``` purescript
Newtype ShutdownGatewayInput _
Generic ShutdownGatewayInput _
Show ShutdownGatewayInput
Decode ShutdownGatewayInput
Encode ShutdownGatewayInput
```

#### `newShutdownGatewayInput`

``` purescript
newShutdownGatewayInput :: GatewayARN -> ShutdownGatewayInput
```

Constructs ShutdownGatewayInput from required parameters

#### `newShutdownGatewayInput'`

``` purescript
newShutdownGatewayInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> ShutdownGatewayInput
```

Constructs ShutdownGatewayInput's fields from required parameters

#### `ShutdownGatewayOutput`

``` purescript
newtype ShutdownGatewayOutput
  = ShutdownGatewayOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

<p>A JSON object containing the of the gateway that was shut down.</p>

##### Instances
``` purescript
Newtype ShutdownGatewayOutput _
Generic ShutdownGatewayOutput _
Show ShutdownGatewayOutput
Decode ShutdownGatewayOutput
Encode ShutdownGatewayOutput
```

#### `newShutdownGatewayOutput`

``` purescript
newShutdownGatewayOutput :: ShutdownGatewayOutput
```

Constructs ShutdownGatewayOutput from required parameters

#### `newShutdownGatewayOutput'`

``` purescript
newShutdownGatewayOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> ShutdownGatewayOutput
```

Constructs ShutdownGatewayOutput's fields from required parameters

#### `SnapshotDescription`

``` purescript
newtype SnapshotDescription
  = SnapshotDescription String
```

##### Instances
``` purescript
Newtype SnapshotDescription _
Generic SnapshotDescription _
Show SnapshotDescription
Decode SnapshotDescription
Encode SnapshotDescription
```

#### `SnapshotId`

``` purescript
newtype SnapshotId
  = SnapshotId String
```

##### Instances
``` purescript
Newtype SnapshotId _
Generic SnapshotId _
Show SnapshotId
Decode SnapshotId
Encode SnapshotId
```

#### `Squash`

``` purescript
newtype Squash
  = Squash String
```

<p>The user mapped to anonymous user. Valid options are the following: </p> <ul> <li> <p>"RootSquash" - Only root is mapped to anonymous user.</p> </li> <li> <p>"NoSquash" - No one is mapped to anonymous user</p> </li> <li> <p>"AllSquash" - Everyone is mapped to anonymous user.</p> </li> </ul>

##### Instances
``` purescript
Newtype Squash _
Generic Squash _
Show Squash
Decode Squash
Encode Squash
```

#### `StartGatewayInput`

``` purescript
newtype StartGatewayInput
  = StartGatewayInput { "GatewayARN" :: GatewayARN }
```

<p>A JSON object containing the of the gateway to start.</p>

##### Instances
``` purescript
Newtype StartGatewayInput _
Generic StartGatewayInput _
Show StartGatewayInput
Decode StartGatewayInput
Encode StartGatewayInput
```

#### `newStartGatewayInput`

``` purescript
newStartGatewayInput :: GatewayARN -> StartGatewayInput
```

Constructs StartGatewayInput from required parameters

#### `newStartGatewayInput'`

``` purescript
newStartGatewayInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> StartGatewayInput
```

Constructs StartGatewayInput's fields from required parameters

#### `StartGatewayOutput`

``` purescript
newtype StartGatewayOutput
  = StartGatewayOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

<p>A JSON object containing the of the gateway that was restarted.</p>

##### Instances
``` purescript
Newtype StartGatewayOutput _
Generic StartGatewayOutput _
Show StartGatewayOutput
Decode StartGatewayOutput
Encode StartGatewayOutput
```

#### `newStartGatewayOutput`

``` purescript
newStartGatewayOutput :: StartGatewayOutput
```

Constructs StartGatewayOutput from required parameters

#### `newStartGatewayOutput'`

``` purescript
newStartGatewayOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> StartGatewayOutput
```

Constructs StartGatewayOutput's fields from required parameters

#### `StorageClass`

``` purescript
newtype StorageClass
  = StorageClass String
```

<p/>

##### Instances
``` purescript
Newtype StorageClass _
Generic StorageClass _
Show StorageClass
Decode StorageClass
Encode StorageClass
```

#### `StorageGatewayError`

``` purescript
newtype StorageGatewayError
  = StorageGatewayError { errorCode :: NullOrUndefined (ErrorCode), errorDetails :: NullOrUndefined (ErrorDetails') }
```

<p>Provides additional information about an error that was returned by the service as an or. See the <code>errorCode</code> and <code>errorDetails</code> members for more information about the error.</p>

##### Instances
``` purescript
Newtype StorageGatewayError _
Generic StorageGatewayError _
Show StorageGatewayError
Decode StorageGatewayError
Encode StorageGatewayError
```

#### `newStorageGatewayError`

``` purescript
newStorageGatewayError :: StorageGatewayError
```

Constructs StorageGatewayError from required parameters

#### `newStorageGatewayError'`

``` purescript
newStorageGatewayError' :: ({ errorCode :: NullOrUndefined (ErrorCode), errorDetails :: NullOrUndefined (ErrorDetails') } -> { errorCode :: NullOrUndefined (ErrorCode), errorDetails :: NullOrUndefined (ErrorDetails') }) -> StorageGatewayError
```

Constructs StorageGatewayError's fields from required parameters

#### `StorediSCSIVolume`

``` purescript
newtype StorediSCSIVolume
  = StorediSCSIVolume { "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeId" :: NullOrUndefined (VolumeId), "VolumeType" :: NullOrUndefined (VolumeType), "VolumeStatus" :: NullOrUndefined (VolumeStatus), "VolumeSizeInBytes" :: NullOrUndefined (Number), "VolumeProgress" :: NullOrUndefined (DoubleObject), "VolumeDiskId" :: NullOrUndefined (DiskId), "SourceSnapshotId" :: NullOrUndefined (SnapshotId), "PreservedExistingData" :: NullOrUndefined (Boolean), "VolumeiSCSIAttributes" :: NullOrUndefined (VolumeiSCSIAttributes), "CreatedDate" :: NullOrUndefined (CreatedDate), "VolumeUsedInBytes" :: NullOrUndefined (VolumeUsedInBytes) }
```

<p>Describes an iSCSI stored volume.</p>

##### Instances
``` purescript
Newtype StorediSCSIVolume _
Generic StorediSCSIVolume _
Show StorediSCSIVolume
Decode StorediSCSIVolume
Encode StorediSCSIVolume
```

#### `newStorediSCSIVolume`

``` purescript
newStorediSCSIVolume :: StorediSCSIVolume
```

Constructs StorediSCSIVolume from required parameters

#### `newStorediSCSIVolume'`

``` purescript
newStorediSCSIVolume' :: ({ "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeId" :: NullOrUndefined (VolumeId), "VolumeType" :: NullOrUndefined (VolumeType), "VolumeStatus" :: NullOrUndefined (VolumeStatus), "VolumeSizeInBytes" :: NullOrUndefined (Number), "VolumeProgress" :: NullOrUndefined (DoubleObject), "VolumeDiskId" :: NullOrUndefined (DiskId), "SourceSnapshotId" :: NullOrUndefined (SnapshotId), "PreservedExistingData" :: NullOrUndefined (Boolean), "VolumeiSCSIAttributes" :: NullOrUndefined (VolumeiSCSIAttributes), "CreatedDate" :: NullOrUndefined (CreatedDate), "VolumeUsedInBytes" :: NullOrUndefined (VolumeUsedInBytes) } -> { "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeId" :: NullOrUndefined (VolumeId), "VolumeType" :: NullOrUndefined (VolumeType), "VolumeStatus" :: NullOrUndefined (VolumeStatus), "VolumeSizeInBytes" :: NullOrUndefined (Number), "VolumeProgress" :: NullOrUndefined (DoubleObject), "VolumeDiskId" :: NullOrUndefined (DiskId), "SourceSnapshotId" :: NullOrUndefined (SnapshotId), "PreservedExistingData" :: NullOrUndefined (Boolean), "VolumeiSCSIAttributes" :: NullOrUndefined (VolumeiSCSIAttributes), "CreatedDate" :: NullOrUndefined (CreatedDate), "VolumeUsedInBytes" :: NullOrUndefined (VolumeUsedInBytes) }) -> StorediSCSIVolume
```

Constructs StorediSCSIVolume's fields from required parameters

#### `StorediSCSIVolumes`

``` purescript
newtype StorediSCSIVolumes
  = StorediSCSIVolumes (Array StorediSCSIVolume)
```

##### Instances
``` purescript
Newtype StorediSCSIVolumes _
Generic StorediSCSIVolumes _
Show StorediSCSIVolumes
Decode StorediSCSIVolumes
Encode StorediSCSIVolumes
```

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: TagKey, "Value" :: TagValue }
```

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: TagKey -> TagValue -> Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: TagKey -> TagValue -> ({ "Key" :: TagKey, "Value" :: TagValue } -> { "Key" :: TagKey, "Value" :: TagValue }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeys`

``` purescript
newtype TagKeys
  = TagKeys (Array TagKey)
```

##### Instances
``` purescript
Newtype TagKeys _
Generic TagKeys _
Show TagKeys
Decode TagKeys
Encode TagKeys
```

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `Tags`

``` purescript
newtype Tags
  = Tags (Array Tag)
```

##### Instances
``` purescript
Newtype Tags _
Generic Tags _
Show Tags
Decode Tags
Encode Tags
```

#### `Tape`

``` purescript
newtype Tape
  = Tape { "TapeARN" :: NullOrUndefined (TapeARN), "TapeBarcode" :: NullOrUndefined (TapeBarcode), "TapeCreatedDate" :: NullOrUndefined (Time), "TapeSizeInBytes" :: NullOrUndefined (TapeSize), "TapeStatus" :: NullOrUndefined (TapeStatus), "VTLDevice" :: NullOrUndefined (VTLDeviceARN), "Progress" :: NullOrUndefined (DoubleObject), "TapeUsedInBytes" :: NullOrUndefined (TapeUsage) }
```

<p>Describes a virtual tape object.</p>

##### Instances
``` purescript
Newtype Tape _
Generic Tape _
Show Tape
Decode Tape
Encode Tape
```

#### `newTape`

``` purescript
newTape :: Tape
```

Constructs Tape from required parameters

#### `newTape'`

``` purescript
newTape' :: ({ "TapeARN" :: NullOrUndefined (TapeARN), "TapeBarcode" :: NullOrUndefined (TapeBarcode), "TapeCreatedDate" :: NullOrUndefined (Time), "TapeSizeInBytes" :: NullOrUndefined (TapeSize), "TapeStatus" :: NullOrUndefined (TapeStatus), "VTLDevice" :: NullOrUndefined (VTLDeviceARN), "Progress" :: NullOrUndefined (DoubleObject), "TapeUsedInBytes" :: NullOrUndefined (TapeUsage) } -> { "TapeARN" :: NullOrUndefined (TapeARN), "TapeBarcode" :: NullOrUndefined (TapeBarcode), "TapeCreatedDate" :: NullOrUndefined (Time), "TapeSizeInBytes" :: NullOrUndefined (TapeSize), "TapeStatus" :: NullOrUndefined (TapeStatus), "VTLDevice" :: NullOrUndefined (VTLDeviceARN), "Progress" :: NullOrUndefined (DoubleObject), "TapeUsedInBytes" :: NullOrUndefined (TapeUsage) }) -> Tape
```

Constructs Tape's fields from required parameters

#### `TapeARN`

``` purescript
newtype TapeARN
  = TapeARN String
```

##### Instances
``` purescript
Newtype TapeARN _
Generic TapeARN _
Show TapeARN
Decode TapeARN
Encode TapeARN
```

#### `TapeARNs`

``` purescript
newtype TapeARNs
  = TapeARNs (Array TapeARN)
```

<p>The Amazon Resource Name (ARN) of each of the tapes you want to list. If you don't specify a tape ARN, the response lists all tapes in both your VTL and VTS.</p>

##### Instances
``` purescript
Newtype TapeARNs _
Generic TapeARNs _
Show TapeARNs
Decode TapeARNs
Encode TapeARNs
```

#### `TapeArchive`

``` purescript
newtype TapeArchive
  = TapeArchive { "TapeARN" :: NullOrUndefined (TapeARN), "TapeBarcode" :: NullOrUndefined (TapeBarcode), "TapeCreatedDate" :: NullOrUndefined (Time), "TapeSizeInBytes" :: NullOrUndefined (TapeSize), "CompletionTime" :: NullOrUndefined (Time), "RetrievedTo" :: NullOrUndefined (GatewayARN), "TapeStatus" :: NullOrUndefined (TapeArchiveStatus), "TapeUsedInBytes" :: NullOrUndefined (TapeUsage) }
```

<p>Represents a virtual tape that is archived in the virtual tape shelf (VTS).</p>

##### Instances
``` purescript
Newtype TapeArchive _
Generic TapeArchive _
Show TapeArchive
Decode TapeArchive
Encode TapeArchive
```

#### `newTapeArchive`

``` purescript
newTapeArchive :: TapeArchive
```

Constructs TapeArchive from required parameters

#### `newTapeArchive'`

``` purescript
newTapeArchive' :: ({ "TapeARN" :: NullOrUndefined (TapeARN), "TapeBarcode" :: NullOrUndefined (TapeBarcode), "TapeCreatedDate" :: NullOrUndefined (Time), "TapeSizeInBytes" :: NullOrUndefined (TapeSize), "CompletionTime" :: NullOrUndefined (Time), "RetrievedTo" :: NullOrUndefined (GatewayARN), "TapeStatus" :: NullOrUndefined (TapeArchiveStatus), "TapeUsedInBytes" :: NullOrUndefined (TapeUsage) } -> { "TapeARN" :: NullOrUndefined (TapeARN), "TapeBarcode" :: NullOrUndefined (TapeBarcode), "TapeCreatedDate" :: NullOrUndefined (Time), "TapeSizeInBytes" :: NullOrUndefined (TapeSize), "CompletionTime" :: NullOrUndefined (Time), "RetrievedTo" :: NullOrUndefined (GatewayARN), "TapeStatus" :: NullOrUndefined (TapeArchiveStatus), "TapeUsedInBytes" :: NullOrUndefined (TapeUsage) }) -> TapeArchive
```

Constructs TapeArchive's fields from required parameters

#### `TapeArchiveStatus`

``` purescript
newtype TapeArchiveStatus
  = TapeArchiveStatus String
```

##### Instances
``` purescript
Newtype TapeArchiveStatus _
Generic TapeArchiveStatus _
Show TapeArchiveStatus
Decode TapeArchiveStatus
Encode TapeArchiveStatus
```

#### `TapeArchives`

``` purescript
newtype TapeArchives
  = TapeArchives (Array TapeArchive)
```

##### Instances
``` purescript
Newtype TapeArchives _
Generic TapeArchives _
Show TapeArchives
Decode TapeArchives
Encode TapeArchives
```

#### `TapeBarcode`

``` purescript
newtype TapeBarcode
  = TapeBarcode String
```

##### Instances
``` purescript
Newtype TapeBarcode _
Generic TapeBarcode _
Show TapeBarcode
Decode TapeBarcode
Encode TapeBarcode
```

#### `TapeBarcodePrefix`

``` purescript
newtype TapeBarcodePrefix
  = TapeBarcodePrefix String
```

##### Instances
``` purescript
Newtype TapeBarcodePrefix _
Generic TapeBarcodePrefix _
Show TapeBarcodePrefix
Decode TapeBarcodePrefix
Encode TapeBarcodePrefix
```

#### `TapeDriveType`

``` purescript
newtype TapeDriveType
  = TapeDriveType String
```

##### Instances
``` purescript
Newtype TapeDriveType _
Generic TapeDriveType _
Show TapeDriveType
Decode TapeDriveType
Encode TapeDriveType
```

#### `TapeInfo`

``` purescript
newtype TapeInfo
  = TapeInfo { "TapeARN" :: NullOrUndefined (TapeARN), "TapeBarcode" :: NullOrUndefined (TapeBarcode), "TapeSizeInBytes" :: NullOrUndefined (TapeSize), "TapeStatus" :: NullOrUndefined (TapeStatus), "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

<p>Describes a virtual tape.</p>

##### Instances
``` purescript
Newtype TapeInfo _
Generic TapeInfo _
Show TapeInfo
Decode TapeInfo
Encode TapeInfo
```

#### `newTapeInfo`

``` purescript
newTapeInfo :: TapeInfo
```

Constructs TapeInfo from required parameters

#### `newTapeInfo'`

``` purescript
newTapeInfo' :: ({ "TapeARN" :: NullOrUndefined (TapeARN), "TapeBarcode" :: NullOrUndefined (TapeBarcode), "TapeSizeInBytes" :: NullOrUndefined (TapeSize), "TapeStatus" :: NullOrUndefined (TapeStatus), "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "TapeARN" :: NullOrUndefined (TapeARN), "TapeBarcode" :: NullOrUndefined (TapeBarcode), "TapeSizeInBytes" :: NullOrUndefined (TapeSize), "TapeStatus" :: NullOrUndefined (TapeStatus), "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> TapeInfo
```

Constructs TapeInfo's fields from required parameters

#### `TapeInfos`

``` purescript
newtype TapeInfos
  = TapeInfos (Array TapeInfo)
```

<p>An array of <a>TapeInfo</a> objects, where each object describes an a single tape. If there not tapes in the tape library or VTS, then the <code>TapeInfos</code> is an empty array.</p>

##### Instances
``` purescript
Newtype TapeInfos _
Generic TapeInfos _
Show TapeInfos
Decode TapeInfos
Encode TapeInfos
```

#### `TapeRecoveryPointInfo`

``` purescript
newtype TapeRecoveryPointInfo
  = TapeRecoveryPointInfo { "TapeARN" :: NullOrUndefined (TapeARN), "TapeRecoveryPointTime" :: NullOrUndefined (Time), "TapeSizeInBytes" :: NullOrUndefined (TapeSize), "TapeStatus" :: NullOrUndefined (TapeRecoveryPointStatus) }
```

<p>Describes a recovery point.</p>

##### Instances
``` purescript
Newtype TapeRecoveryPointInfo _
Generic TapeRecoveryPointInfo _
Show TapeRecoveryPointInfo
Decode TapeRecoveryPointInfo
Encode TapeRecoveryPointInfo
```

#### `newTapeRecoveryPointInfo`

``` purescript
newTapeRecoveryPointInfo :: TapeRecoveryPointInfo
```

Constructs TapeRecoveryPointInfo from required parameters

#### `newTapeRecoveryPointInfo'`

``` purescript
newTapeRecoveryPointInfo' :: ({ "TapeARN" :: NullOrUndefined (TapeARN), "TapeRecoveryPointTime" :: NullOrUndefined (Time), "TapeSizeInBytes" :: NullOrUndefined (TapeSize), "TapeStatus" :: NullOrUndefined (TapeRecoveryPointStatus) } -> { "TapeARN" :: NullOrUndefined (TapeARN), "TapeRecoveryPointTime" :: NullOrUndefined (Time), "TapeSizeInBytes" :: NullOrUndefined (TapeSize), "TapeStatus" :: NullOrUndefined (TapeRecoveryPointStatus) }) -> TapeRecoveryPointInfo
```

Constructs TapeRecoveryPointInfo's fields from required parameters

#### `TapeRecoveryPointInfos`

``` purescript
newtype TapeRecoveryPointInfos
  = TapeRecoveryPointInfos (Array TapeRecoveryPointInfo)
```

##### Instances
``` purescript
Newtype TapeRecoveryPointInfos _
Generic TapeRecoveryPointInfos _
Show TapeRecoveryPointInfos
Decode TapeRecoveryPointInfos
Encode TapeRecoveryPointInfos
```

#### `TapeRecoveryPointStatus`

``` purescript
newtype TapeRecoveryPointStatus
  = TapeRecoveryPointStatus String
```

##### Instances
``` purescript
Newtype TapeRecoveryPointStatus _
Generic TapeRecoveryPointStatus _
Show TapeRecoveryPointStatus
Decode TapeRecoveryPointStatus
Encode TapeRecoveryPointStatus
```

#### `TapeSize`

``` purescript
newtype TapeSize
  = TapeSize Number
```

##### Instances
``` purescript
Newtype TapeSize _
Generic TapeSize _
Show TapeSize
Decode TapeSize
Encode TapeSize
```

#### `TapeStatus`

``` purescript
newtype TapeStatus
  = TapeStatus String
```

##### Instances
``` purescript
Newtype TapeStatus _
Generic TapeStatus _
Show TapeStatus
Decode TapeStatus
Encode TapeStatus
```

#### `TapeUsage`

``` purescript
newtype TapeUsage
  = TapeUsage Number
```

##### Instances
``` purescript
Newtype TapeUsage _
Generic TapeUsage _
Show TapeUsage
Decode TapeUsage
Encode TapeUsage
```

#### `Tapes`

``` purescript
newtype Tapes
  = Tapes (Array Tape)
```

##### Instances
``` purescript
Newtype Tapes _
Generic Tapes _
Show Tapes
Decode Tapes
Encode Tapes
```

#### `TargetARN`

``` purescript
newtype TargetARN
  = TargetARN String
```

##### Instances
``` purescript
Newtype TargetARN _
Generic TargetARN _
Show TargetARN
Decode TargetARN
Encode TargetARN
```

#### `TargetName`

``` purescript
newtype TargetName
  = TargetName String
```

##### Instances
``` purescript
Newtype TargetName _
Generic TargetName _
Show TargetName
Decode TargetName
Encode TargetName
```

#### `Time`

``` purescript
newtype Time
  = Time Timestamp
```

##### Instances
``` purescript
Newtype Time _
Generic Time _
Show Time
Decode Time
Encode Time
```

#### `UpdateBandwidthRateLimitInput`

``` purescript
newtype UpdateBandwidthRateLimitInput
  = UpdateBandwidthRateLimitInput { "GatewayARN" :: GatewayARN, "AverageUploadRateLimitInBitsPerSec" :: NullOrUndefined (BandwidthUploadRateLimit), "AverageDownloadRateLimitInBitsPerSec" :: NullOrUndefined (BandwidthDownloadRateLimit) }
```

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateBandwidthRateLimitInput$AverageDownloadRateLimitInBitsPerSec</a> </p> </li> <li> <p> <a>UpdateBandwidthRateLimitInput$AverageUploadRateLimitInBitsPerSec</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype UpdateBandwidthRateLimitInput _
Generic UpdateBandwidthRateLimitInput _
Show UpdateBandwidthRateLimitInput
Decode UpdateBandwidthRateLimitInput
Encode UpdateBandwidthRateLimitInput
```

#### `newUpdateBandwidthRateLimitInput`

``` purescript
newUpdateBandwidthRateLimitInput :: GatewayARN -> UpdateBandwidthRateLimitInput
```

Constructs UpdateBandwidthRateLimitInput from required parameters

#### `newUpdateBandwidthRateLimitInput'`

``` purescript
newUpdateBandwidthRateLimitInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN, "AverageUploadRateLimitInBitsPerSec" :: NullOrUndefined (BandwidthUploadRateLimit), "AverageDownloadRateLimitInBitsPerSec" :: NullOrUndefined (BandwidthDownloadRateLimit) } -> { "GatewayARN" :: GatewayARN, "AverageUploadRateLimitInBitsPerSec" :: NullOrUndefined (BandwidthUploadRateLimit), "AverageDownloadRateLimitInBitsPerSec" :: NullOrUndefined (BandwidthDownloadRateLimit) }) -> UpdateBandwidthRateLimitInput
```

Constructs UpdateBandwidthRateLimitInput's fields from required parameters

#### `UpdateBandwidthRateLimitOutput`

``` purescript
newtype UpdateBandwidthRateLimitOutput
  = UpdateBandwidthRateLimitOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

<p>A JSON object containing the of the gateway whose throttle information was updated.</p>

##### Instances
``` purescript
Newtype UpdateBandwidthRateLimitOutput _
Generic UpdateBandwidthRateLimitOutput _
Show UpdateBandwidthRateLimitOutput
Decode UpdateBandwidthRateLimitOutput
Encode UpdateBandwidthRateLimitOutput
```

#### `newUpdateBandwidthRateLimitOutput`

``` purescript
newUpdateBandwidthRateLimitOutput :: UpdateBandwidthRateLimitOutput
```

Constructs UpdateBandwidthRateLimitOutput from required parameters

#### `newUpdateBandwidthRateLimitOutput'`

``` purescript
newUpdateBandwidthRateLimitOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> UpdateBandwidthRateLimitOutput
```

Constructs UpdateBandwidthRateLimitOutput's fields from required parameters

#### `UpdateChapCredentialsInput`

``` purescript
newtype UpdateChapCredentialsInput
  = UpdateChapCredentialsInput { "TargetARN" :: TargetARN, "SecretToAuthenticateInitiator" :: ChapSecret, "InitiatorName" :: IqnName, "SecretToAuthenticateTarget" :: NullOrUndefined (ChapSecret) }
```

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateChapCredentialsInput$InitiatorName</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$SecretToAuthenticateInitiator</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$SecretToAuthenticateTarget</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$TargetARN</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype UpdateChapCredentialsInput _
Generic UpdateChapCredentialsInput _
Show UpdateChapCredentialsInput
Decode UpdateChapCredentialsInput
Encode UpdateChapCredentialsInput
```

#### `newUpdateChapCredentialsInput`

``` purescript
newUpdateChapCredentialsInput :: IqnName -> ChapSecret -> TargetARN -> UpdateChapCredentialsInput
```

Constructs UpdateChapCredentialsInput from required parameters

#### `newUpdateChapCredentialsInput'`

``` purescript
newUpdateChapCredentialsInput' :: IqnName -> ChapSecret -> TargetARN -> ({ "TargetARN" :: TargetARN, "SecretToAuthenticateInitiator" :: ChapSecret, "InitiatorName" :: IqnName, "SecretToAuthenticateTarget" :: NullOrUndefined (ChapSecret) } -> { "TargetARN" :: TargetARN, "SecretToAuthenticateInitiator" :: ChapSecret, "InitiatorName" :: IqnName, "SecretToAuthenticateTarget" :: NullOrUndefined (ChapSecret) }) -> UpdateChapCredentialsInput
```

Constructs UpdateChapCredentialsInput's fields from required parameters

#### `UpdateChapCredentialsOutput`

``` purescript
newtype UpdateChapCredentialsOutput
  = UpdateChapCredentialsOutput { "TargetARN" :: NullOrUndefined (TargetARN), "InitiatorName" :: NullOrUndefined (IqnName) }
```

<p>A JSON object containing the following fields:</p>

##### Instances
``` purescript
Newtype UpdateChapCredentialsOutput _
Generic UpdateChapCredentialsOutput _
Show UpdateChapCredentialsOutput
Decode UpdateChapCredentialsOutput
Encode UpdateChapCredentialsOutput
```

#### `newUpdateChapCredentialsOutput`

``` purescript
newUpdateChapCredentialsOutput :: UpdateChapCredentialsOutput
```

Constructs UpdateChapCredentialsOutput from required parameters

#### `newUpdateChapCredentialsOutput'`

``` purescript
newUpdateChapCredentialsOutput' :: ({ "TargetARN" :: NullOrUndefined (TargetARN), "InitiatorName" :: NullOrUndefined (IqnName) } -> { "TargetARN" :: NullOrUndefined (TargetARN), "InitiatorName" :: NullOrUndefined (IqnName) }) -> UpdateChapCredentialsOutput
```

Constructs UpdateChapCredentialsOutput's fields from required parameters

#### `UpdateGatewayInformationInput`

``` purescript
newtype UpdateGatewayInformationInput
  = UpdateGatewayInformationInput { "GatewayARN" :: GatewayARN, "GatewayName" :: NullOrUndefined (GatewayName), "GatewayTimezone" :: NullOrUndefined (GatewayTimezone) }
```

##### Instances
``` purescript
Newtype UpdateGatewayInformationInput _
Generic UpdateGatewayInformationInput _
Show UpdateGatewayInformationInput
Decode UpdateGatewayInformationInput
Encode UpdateGatewayInformationInput
```

#### `newUpdateGatewayInformationInput`

``` purescript
newUpdateGatewayInformationInput :: GatewayARN -> UpdateGatewayInformationInput
```

Constructs UpdateGatewayInformationInput from required parameters

#### `newUpdateGatewayInformationInput'`

``` purescript
newUpdateGatewayInformationInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN, "GatewayName" :: NullOrUndefined (GatewayName), "GatewayTimezone" :: NullOrUndefined (GatewayTimezone) } -> { "GatewayARN" :: GatewayARN, "GatewayName" :: NullOrUndefined (GatewayName), "GatewayTimezone" :: NullOrUndefined (GatewayTimezone) }) -> UpdateGatewayInformationInput
```

Constructs UpdateGatewayInformationInput's fields from required parameters

#### `UpdateGatewayInformationOutput`

``` purescript
newtype UpdateGatewayInformationOutput
  = UpdateGatewayInformationOutput { "GatewayARN" :: NullOrUndefined (GatewayARN), "GatewayName" :: NullOrUndefined (String) }
```

<p>A JSON object containing the ARN of the gateway that was updated.</p>

##### Instances
``` purescript
Newtype UpdateGatewayInformationOutput _
Generic UpdateGatewayInformationOutput _
Show UpdateGatewayInformationOutput
Decode UpdateGatewayInformationOutput
Encode UpdateGatewayInformationOutput
```

#### `newUpdateGatewayInformationOutput`

``` purescript
newUpdateGatewayInformationOutput :: UpdateGatewayInformationOutput
```

Constructs UpdateGatewayInformationOutput from required parameters

#### `newUpdateGatewayInformationOutput'`

``` purescript
newUpdateGatewayInformationOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN), "GatewayName" :: NullOrUndefined (String) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN), "GatewayName" :: NullOrUndefined (String) }) -> UpdateGatewayInformationOutput
```

Constructs UpdateGatewayInformationOutput's fields from required parameters

#### `UpdateGatewaySoftwareNowInput`

``` purescript
newtype UpdateGatewaySoftwareNowInput
  = UpdateGatewaySoftwareNowInput { "GatewayARN" :: GatewayARN }
```

<p>A JSON object containing the of the gateway to update.</p>

##### Instances
``` purescript
Newtype UpdateGatewaySoftwareNowInput _
Generic UpdateGatewaySoftwareNowInput _
Show UpdateGatewaySoftwareNowInput
Decode UpdateGatewaySoftwareNowInput
Encode UpdateGatewaySoftwareNowInput
```

#### `newUpdateGatewaySoftwareNowInput`

``` purescript
newUpdateGatewaySoftwareNowInput :: GatewayARN -> UpdateGatewaySoftwareNowInput
```

Constructs UpdateGatewaySoftwareNowInput from required parameters

#### `newUpdateGatewaySoftwareNowInput'`

``` purescript
newUpdateGatewaySoftwareNowInput' :: GatewayARN -> ({ "GatewayARN" :: GatewayARN } -> { "GatewayARN" :: GatewayARN }) -> UpdateGatewaySoftwareNowInput
```

Constructs UpdateGatewaySoftwareNowInput's fields from required parameters

#### `UpdateGatewaySoftwareNowOutput`

``` purescript
newtype UpdateGatewaySoftwareNowOutput
  = UpdateGatewaySoftwareNowOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

<p>A JSON object containing the of the gateway that was updated.</p>

##### Instances
``` purescript
Newtype UpdateGatewaySoftwareNowOutput _
Generic UpdateGatewaySoftwareNowOutput _
Show UpdateGatewaySoftwareNowOutput
Decode UpdateGatewaySoftwareNowOutput
Encode UpdateGatewaySoftwareNowOutput
```

#### `newUpdateGatewaySoftwareNowOutput`

``` purescript
newUpdateGatewaySoftwareNowOutput :: UpdateGatewaySoftwareNowOutput
```

Constructs UpdateGatewaySoftwareNowOutput from required parameters

#### `newUpdateGatewaySoftwareNowOutput'`

``` purescript
newUpdateGatewaySoftwareNowOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> UpdateGatewaySoftwareNowOutput
```

Constructs UpdateGatewaySoftwareNowOutput's fields from required parameters

#### `UpdateMaintenanceStartTimeInput`

``` purescript
newtype UpdateMaintenanceStartTimeInput
  = UpdateMaintenanceStartTimeInput { "GatewayARN" :: GatewayARN, "HourOfDay" :: HourOfDay, "MinuteOfHour" :: MinuteOfHour, "DayOfWeek" :: DayOfWeek }
```

<p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>UpdateMaintenanceStartTimeInput$DayOfWeek</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$HourOfDay</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$MinuteOfHour</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype UpdateMaintenanceStartTimeInput _
Generic UpdateMaintenanceStartTimeInput _
Show UpdateMaintenanceStartTimeInput
Decode UpdateMaintenanceStartTimeInput
Encode UpdateMaintenanceStartTimeInput
```

#### `newUpdateMaintenanceStartTimeInput`

``` purescript
newUpdateMaintenanceStartTimeInput :: DayOfWeek -> GatewayARN -> HourOfDay -> MinuteOfHour -> UpdateMaintenanceStartTimeInput
```

Constructs UpdateMaintenanceStartTimeInput from required parameters

#### `newUpdateMaintenanceStartTimeInput'`

``` purescript
newUpdateMaintenanceStartTimeInput' :: DayOfWeek -> GatewayARN -> HourOfDay -> MinuteOfHour -> ({ "GatewayARN" :: GatewayARN, "HourOfDay" :: HourOfDay, "MinuteOfHour" :: MinuteOfHour, "DayOfWeek" :: DayOfWeek } -> { "GatewayARN" :: GatewayARN, "HourOfDay" :: HourOfDay, "MinuteOfHour" :: MinuteOfHour, "DayOfWeek" :: DayOfWeek }) -> UpdateMaintenanceStartTimeInput
```

Constructs UpdateMaintenanceStartTimeInput's fields from required parameters

#### `UpdateMaintenanceStartTimeOutput`

``` purescript
newtype UpdateMaintenanceStartTimeOutput
  = UpdateMaintenanceStartTimeOutput { "GatewayARN" :: NullOrUndefined (GatewayARN) }
```

<p>A JSON object containing the of the gateway whose maintenance start time is updated.</p>

##### Instances
``` purescript
Newtype UpdateMaintenanceStartTimeOutput _
Generic UpdateMaintenanceStartTimeOutput _
Show UpdateMaintenanceStartTimeOutput
Decode UpdateMaintenanceStartTimeOutput
Encode UpdateMaintenanceStartTimeOutput
```

#### `newUpdateMaintenanceStartTimeOutput`

``` purescript
newUpdateMaintenanceStartTimeOutput :: UpdateMaintenanceStartTimeOutput
```

Constructs UpdateMaintenanceStartTimeOutput from required parameters

#### `newUpdateMaintenanceStartTimeOutput'`

``` purescript
newUpdateMaintenanceStartTimeOutput' :: ({ "GatewayARN" :: NullOrUndefined (GatewayARN) } -> { "GatewayARN" :: NullOrUndefined (GatewayARN) }) -> UpdateMaintenanceStartTimeOutput
```

Constructs UpdateMaintenanceStartTimeOutput's fields from required parameters

#### `UpdateNFSFileShareInput`

``` purescript
newtype UpdateNFSFileShareInput
  = UpdateNFSFileShareInput { "FileShareARN" :: FileShareARN, "KMSEncrypted" :: NullOrUndefined (Boolean), "KMSKey" :: NullOrUndefined (KMSKey), "NFSFileShareDefaults" :: NullOrUndefined (NFSFileShareDefaults), "DefaultStorageClass" :: NullOrUndefined (StorageClass), "ObjectACL" :: NullOrUndefined (ObjectACL), "ClientList" :: NullOrUndefined (FileShareClientList), "Squash" :: NullOrUndefined (Squash), "ReadOnly" :: NullOrUndefined (Boolean), "GuessMIMETypeEnabled" :: NullOrUndefined (Boolean), "RequesterPays" :: NullOrUndefined (Boolean) }
```

<p>UpdateNFSFileShareInput</p>

##### Instances
``` purescript
Newtype UpdateNFSFileShareInput _
Generic UpdateNFSFileShareInput _
Show UpdateNFSFileShareInput
Decode UpdateNFSFileShareInput
Encode UpdateNFSFileShareInput
```

#### `newUpdateNFSFileShareInput`

``` purescript
newUpdateNFSFileShareInput :: FileShareARN -> UpdateNFSFileShareInput
```

Constructs UpdateNFSFileShareInput from required parameters

#### `newUpdateNFSFileShareInput'`

``` purescript
newUpdateNFSFileShareInput' :: FileShareARN -> ({ "FileShareARN" :: FileShareARN, "KMSEncrypted" :: NullOrUndefined (Boolean), "KMSKey" :: NullOrUndefined (KMSKey), "NFSFileShareDefaults" :: NullOrUndefined (NFSFileShareDefaults), "DefaultStorageClass" :: NullOrUndefined (StorageClass), "ObjectACL" :: NullOrUndefined (ObjectACL), "ClientList" :: NullOrUndefined (FileShareClientList), "Squash" :: NullOrUndefined (Squash), "ReadOnly" :: NullOrUndefined (Boolean), "GuessMIMETypeEnabled" :: NullOrUndefined (Boolean), "RequesterPays" :: NullOrUndefined (Boolean) } -> { "FileShareARN" :: FileShareARN, "KMSEncrypted" :: NullOrUndefined (Boolean), "KMSKey" :: NullOrUndefined (KMSKey), "NFSFileShareDefaults" :: NullOrUndefined (NFSFileShareDefaults), "DefaultStorageClass" :: NullOrUndefined (StorageClass), "ObjectACL" :: NullOrUndefined (ObjectACL), "ClientList" :: NullOrUndefined (FileShareClientList), "Squash" :: NullOrUndefined (Squash), "ReadOnly" :: NullOrUndefined (Boolean), "GuessMIMETypeEnabled" :: NullOrUndefined (Boolean), "RequesterPays" :: NullOrUndefined (Boolean) }) -> UpdateNFSFileShareInput
```

Constructs UpdateNFSFileShareInput's fields from required parameters

#### `UpdateNFSFileShareOutput`

``` purescript
newtype UpdateNFSFileShareOutput
  = UpdateNFSFileShareOutput { "FileShareARN" :: NullOrUndefined (FileShareARN) }
```

<p>UpdateNFSFileShareOutput</p>

##### Instances
``` purescript
Newtype UpdateNFSFileShareOutput _
Generic UpdateNFSFileShareOutput _
Show UpdateNFSFileShareOutput
Decode UpdateNFSFileShareOutput
Encode UpdateNFSFileShareOutput
```

#### `newUpdateNFSFileShareOutput`

``` purescript
newUpdateNFSFileShareOutput :: UpdateNFSFileShareOutput
```

Constructs UpdateNFSFileShareOutput from required parameters

#### `newUpdateNFSFileShareOutput'`

``` purescript
newUpdateNFSFileShareOutput' :: ({ "FileShareARN" :: NullOrUndefined (FileShareARN) } -> { "FileShareARN" :: NullOrUndefined (FileShareARN) }) -> UpdateNFSFileShareOutput
```

Constructs UpdateNFSFileShareOutput's fields from required parameters

#### `UpdateSnapshotScheduleInput`

``` purescript
newtype UpdateSnapshotScheduleInput
  = UpdateSnapshotScheduleInput { "VolumeARN" :: VolumeARN, "StartAt" :: HourOfDay, "RecurrenceInHours" :: RecurrenceInHours, "Description" :: NullOrUndefined (Description) }
```

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateSnapshotScheduleInput$Description</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$RecurrenceInHours</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$StartAt</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$VolumeARN</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype UpdateSnapshotScheduleInput _
Generic UpdateSnapshotScheduleInput _
Show UpdateSnapshotScheduleInput
Decode UpdateSnapshotScheduleInput
Encode UpdateSnapshotScheduleInput
```

#### `newUpdateSnapshotScheduleInput`

``` purescript
newUpdateSnapshotScheduleInput :: RecurrenceInHours -> HourOfDay -> VolumeARN -> UpdateSnapshotScheduleInput
```

Constructs UpdateSnapshotScheduleInput from required parameters

#### `newUpdateSnapshotScheduleInput'`

``` purescript
newUpdateSnapshotScheduleInput' :: RecurrenceInHours -> HourOfDay -> VolumeARN -> ({ "VolumeARN" :: VolumeARN, "StartAt" :: HourOfDay, "RecurrenceInHours" :: RecurrenceInHours, "Description" :: NullOrUndefined (Description) } -> { "VolumeARN" :: VolumeARN, "StartAt" :: HourOfDay, "RecurrenceInHours" :: RecurrenceInHours, "Description" :: NullOrUndefined (Description) }) -> UpdateSnapshotScheduleInput
```

Constructs UpdateSnapshotScheduleInput's fields from required parameters

#### `UpdateSnapshotScheduleOutput`

``` purescript
newtype UpdateSnapshotScheduleOutput
  = UpdateSnapshotScheduleOutput { "VolumeARN" :: NullOrUndefined (VolumeARN) }
```

<p>A JSON object containing the of the updated storage volume.</p>

##### Instances
``` purescript
Newtype UpdateSnapshotScheduleOutput _
Generic UpdateSnapshotScheduleOutput _
Show UpdateSnapshotScheduleOutput
Decode UpdateSnapshotScheduleOutput
Encode UpdateSnapshotScheduleOutput
```

#### `newUpdateSnapshotScheduleOutput`

``` purescript
newUpdateSnapshotScheduleOutput :: UpdateSnapshotScheduleOutput
```

Constructs UpdateSnapshotScheduleOutput from required parameters

#### `newUpdateSnapshotScheduleOutput'`

``` purescript
newUpdateSnapshotScheduleOutput' :: ({ "VolumeARN" :: NullOrUndefined (VolumeARN) } -> { "VolumeARN" :: NullOrUndefined (VolumeARN) }) -> UpdateSnapshotScheduleOutput
```

Constructs UpdateSnapshotScheduleOutput's fields from required parameters

#### `UpdateVTLDeviceTypeInput`

``` purescript
newtype UpdateVTLDeviceTypeInput
  = UpdateVTLDeviceTypeInput { "VTLDeviceARN" :: VTLDeviceARN, "DeviceType" :: DeviceType }
```

##### Instances
``` purescript
Newtype UpdateVTLDeviceTypeInput _
Generic UpdateVTLDeviceTypeInput _
Show UpdateVTLDeviceTypeInput
Decode UpdateVTLDeviceTypeInput
Encode UpdateVTLDeviceTypeInput
```

#### `newUpdateVTLDeviceTypeInput`

``` purescript
newUpdateVTLDeviceTypeInput :: DeviceType -> VTLDeviceARN -> UpdateVTLDeviceTypeInput
```

Constructs UpdateVTLDeviceTypeInput from required parameters

#### `newUpdateVTLDeviceTypeInput'`

``` purescript
newUpdateVTLDeviceTypeInput' :: DeviceType -> VTLDeviceARN -> ({ "VTLDeviceARN" :: VTLDeviceARN, "DeviceType" :: DeviceType } -> { "VTLDeviceARN" :: VTLDeviceARN, "DeviceType" :: DeviceType }) -> UpdateVTLDeviceTypeInput
```

Constructs UpdateVTLDeviceTypeInput's fields from required parameters

#### `UpdateVTLDeviceTypeOutput`

``` purescript
newtype UpdateVTLDeviceTypeOutput
  = UpdateVTLDeviceTypeOutput { "VTLDeviceARN" :: NullOrUndefined (VTLDeviceARN) }
```

<p>UpdateVTLDeviceTypeOutput</p>

##### Instances
``` purescript
Newtype UpdateVTLDeviceTypeOutput _
Generic UpdateVTLDeviceTypeOutput _
Show UpdateVTLDeviceTypeOutput
Decode UpdateVTLDeviceTypeOutput
Encode UpdateVTLDeviceTypeOutput
```

#### `newUpdateVTLDeviceTypeOutput`

``` purescript
newUpdateVTLDeviceTypeOutput :: UpdateVTLDeviceTypeOutput
```

Constructs UpdateVTLDeviceTypeOutput from required parameters

#### `newUpdateVTLDeviceTypeOutput'`

``` purescript
newUpdateVTLDeviceTypeOutput' :: ({ "VTLDeviceARN" :: NullOrUndefined (VTLDeviceARN) } -> { "VTLDeviceARN" :: NullOrUndefined (VTLDeviceARN) }) -> UpdateVTLDeviceTypeOutput
```

Constructs UpdateVTLDeviceTypeOutput's fields from required parameters

#### `VTLDevice`

``` purescript
newtype VTLDevice
  = VTLDevice { "VTLDeviceARN" :: NullOrUndefined (VTLDeviceARN), "VTLDeviceType" :: NullOrUndefined (VTLDeviceType), "VTLDeviceVendor" :: NullOrUndefined (VTLDeviceVendor), "VTLDeviceProductIdentifier" :: NullOrUndefined (VTLDeviceProductIdentifier), "DeviceiSCSIAttributes" :: NullOrUndefined (DeviceiSCSIAttributes) }
```

<p>Represents a device object associated with a tape gateway.</p>

##### Instances
``` purescript
Newtype VTLDevice _
Generic VTLDevice _
Show VTLDevice
Decode VTLDevice
Encode VTLDevice
```

#### `newVTLDevice`

``` purescript
newVTLDevice :: VTLDevice
```

Constructs VTLDevice from required parameters

#### `newVTLDevice'`

``` purescript
newVTLDevice' :: ({ "VTLDeviceARN" :: NullOrUndefined (VTLDeviceARN), "VTLDeviceType" :: NullOrUndefined (VTLDeviceType), "VTLDeviceVendor" :: NullOrUndefined (VTLDeviceVendor), "VTLDeviceProductIdentifier" :: NullOrUndefined (VTLDeviceProductIdentifier), "DeviceiSCSIAttributes" :: NullOrUndefined (DeviceiSCSIAttributes) } -> { "VTLDeviceARN" :: NullOrUndefined (VTLDeviceARN), "VTLDeviceType" :: NullOrUndefined (VTLDeviceType), "VTLDeviceVendor" :: NullOrUndefined (VTLDeviceVendor), "VTLDeviceProductIdentifier" :: NullOrUndefined (VTLDeviceProductIdentifier), "DeviceiSCSIAttributes" :: NullOrUndefined (DeviceiSCSIAttributes) }) -> VTLDevice
```

Constructs VTLDevice's fields from required parameters

#### `VTLDeviceARN`

``` purescript
newtype VTLDeviceARN
  = VTLDeviceARN String
```

##### Instances
``` purescript
Newtype VTLDeviceARN _
Generic VTLDeviceARN _
Show VTLDeviceARN
Decode VTLDeviceARN
Encode VTLDeviceARN
```

#### `VTLDeviceARNs`

``` purescript
newtype VTLDeviceARNs
  = VTLDeviceARNs (Array VTLDeviceARN)
```

##### Instances
``` purescript
Newtype VTLDeviceARNs _
Generic VTLDeviceARNs _
Show VTLDeviceARNs
Decode VTLDeviceARNs
Encode VTLDeviceARNs
```

#### `VTLDeviceProductIdentifier`

``` purescript
newtype VTLDeviceProductIdentifier
  = VTLDeviceProductIdentifier String
```

##### Instances
``` purescript
Newtype VTLDeviceProductIdentifier _
Generic VTLDeviceProductIdentifier _
Show VTLDeviceProductIdentifier
Decode VTLDeviceProductIdentifier
Encode VTLDeviceProductIdentifier
```

#### `VTLDeviceType`

``` purescript
newtype VTLDeviceType
  = VTLDeviceType String
```

##### Instances
``` purescript
Newtype VTLDeviceType _
Generic VTLDeviceType _
Show VTLDeviceType
Decode VTLDeviceType
Encode VTLDeviceType
```

#### `VTLDeviceVendor`

``` purescript
newtype VTLDeviceVendor
  = VTLDeviceVendor String
```

##### Instances
``` purescript
Newtype VTLDeviceVendor _
Generic VTLDeviceVendor _
Show VTLDeviceVendor
Decode VTLDeviceVendor
Encode VTLDeviceVendor
```

#### `VTLDevices`

``` purescript
newtype VTLDevices
  = VTLDevices (Array VTLDevice)
```

##### Instances
``` purescript
Newtype VTLDevices _
Generic VTLDevices _
Show VTLDevices
Decode VTLDevices
Encode VTLDevices
```

#### `VolumeARN`

``` purescript
newtype VolumeARN
  = VolumeARN String
```

##### Instances
``` purescript
Newtype VolumeARN _
Generic VolumeARN _
Show VolumeARN
Decode VolumeARN
Encode VolumeARN
```

#### `VolumeARNs`

``` purescript
newtype VolumeARNs
  = VolumeARNs (Array VolumeARN)
```

##### Instances
``` purescript
Newtype VolumeARNs _
Generic VolumeARNs _
Show VolumeARNs
Decode VolumeARNs
Encode VolumeARNs
```

#### `VolumeId`

``` purescript
newtype VolumeId
  = VolumeId String
```

##### Instances
``` purescript
Newtype VolumeId _
Generic VolumeId _
Show VolumeId
Decode VolumeId
Encode VolumeId
```

#### `VolumeInfo`

``` purescript
newtype VolumeInfo
  = VolumeInfo { "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeId" :: NullOrUndefined (VolumeId), "GatewayARN" :: NullOrUndefined (GatewayARN), "GatewayId" :: NullOrUndefined (GatewayId), "VolumeType" :: NullOrUndefined (VolumeType), "VolumeSizeInBytes" :: NullOrUndefined (Number) }
```

<p>Describes a storage volume object.</p>

##### Instances
``` purescript
Newtype VolumeInfo _
Generic VolumeInfo _
Show VolumeInfo
Decode VolumeInfo
Encode VolumeInfo
```

#### `newVolumeInfo`

``` purescript
newVolumeInfo :: VolumeInfo
```

Constructs VolumeInfo from required parameters

#### `newVolumeInfo'`

``` purescript
newVolumeInfo' :: ({ "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeId" :: NullOrUndefined (VolumeId), "GatewayARN" :: NullOrUndefined (GatewayARN), "GatewayId" :: NullOrUndefined (GatewayId), "VolumeType" :: NullOrUndefined (VolumeType), "VolumeSizeInBytes" :: NullOrUndefined (Number) } -> { "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeId" :: NullOrUndefined (VolumeId), "GatewayARN" :: NullOrUndefined (GatewayARN), "GatewayId" :: NullOrUndefined (GatewayId), "VolumeType" :: NullOrUndefined (VolumeType), "VolumeSizeInBytes" :: NullOrUndefined (Number) }) -> VolumeInfo
```

Constructs VolumeInfo's fields from required parameters

#### `VolumeInfos`

``` purescript
newtype VolumeInfos
  = VolumeInfos (Array VolumeInfo)
```

##### Instances
``` purescript
Newtype VolumeInfos _
Generic VolumeInfos _
Show VolumeInfos
Decode VolumeInfos
Encode VolumeInfos
```

#### `VolumeRecoveryPointInfo`

``` purescript
newtype VolumeRecoveryPointInfo
  = VolumeRecoveryPointInfo { "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeSizeInBytes" :: NullOrUndefined (Number), "VolumeUsageInBytes" :: NullOrUndefined (Number), "VolumeRecoveryPointTime" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype VolumeRecoveryPointInfo _
Generic VolumeRecoveryPointInfo _
Show VolumeRecoveryPointInfo
Decode VolumeRecoveryPointInfo
Encode VolumeRecoveryPointInfo
```

#### `newVolumeRecoveryPointInfo`

``` purescript
newVolumeRecoveryPointInfo :: VolumeRecoveryPointInfo
```

Constructs VolumeRecoveryPointInfo from required parameters

#### `newVolumeRecoveryPointInfo'`

``` purescript
newVolumeRecoveryPointInfo' :: ({ "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeSizeInBytes" :: NullOrUndefined (Number), "VolumeUsageInBytes" :: NullOrUndefined (Number), "VolumeRecoveryPointTime" :: NullOrUndefined (String) } -> { "VolumeARN" :: NullOrUndefined (VolumeARN), "VolumeSizeInBytes" :: NullOrUndefined (Number), "VolumeUsageInBytes" :: NullOrUndefined (Number), "VolumeRecoveryPointTime" :: NullOrUndefined (String) }) -> VolumeRecoveryPointInfo
```

Constructs VolumeRecoveryPointInfo's fields from required parameters

#### `VolumeRecoveryPointInfos`

``` purescript
newtype VolumeRecoveryPointInfos
  = VolumeRecoveryPointInfos (Array VolumeRecoveryPointInfo)
```

##### Instances
``` purescript
Newtype VolumeRecoveryPointInfos _
Generic VolumeRecoveryPointInfos _
Show VolumeRecoveryPointInfos
Decode VolumeRecoveryPointInfos
Encode VolumeRecoveryPointInfos
```

#### `VolumeStatus`

``` purescript
newtype VolumeStatus
  = VolumeStatus String
```

##### Instances
``` purescript
Newtype VolumeStatus _
Generic VolumeStatus _
Show VolumeStatus
Decode VolumeStatus
Encode VolumeStatus
```

#### `VolumeType`

``` purescript
newtype VolumeType
  = VolumeType String
```

##### Instances
``` purescript
Newtype VolumeType _
Generic VolumeType _
Show VolumeType
Decode VolumeType
Encode VolumeType
```

#### `VolumeUsedInBytes`

``` purescript
newtype VolumeUsedInBytes
  = VolumeUsedInBytes Number
```

##### Instances
``` purescript
Newtype VolumeUsedInBytes _
Generic VolumeUsedInBytes _
Show VolumeUsedInBytes
Decode VolumeUsedInBytes
Encode VolumeUsedInBytes
```

#### `VolumeiSCSIAttributes`

``` purescript
newtype VolumeiSCSIAttributes
  = VolumeiSCSIAttributes { "TargetARN" :: NullOrUndefined (TargetARN), "NetworkInterfaceId" :: NullOrUndefined (NetworkInterfaceId), "NetworkInterfacePort" :: NullOrUndefined (Int), "LunNumber" :: NullOrUndefined (PositiveIntObject), "ChapEnabled" :: NullOrUndefined (Boolean) }
```

<p>Lists iSCSI information about a volume.</p>

##### Instances
``` purescript
Newtype VolumeiSCSIAttributes _
Generic VolumeiSCSIAttributes _
Show VolumeiSCSIAttributes
Decode VolumeiSCSIAttributes
Encode VolumeiSCSIAttributes
```

#### `newVolumeiSCSIAttributes`

``` purescript
newVolumeiSCSIAttributes :: VolumeiSCSIAttributes
```

Constructs VolumeiSCSIAttributes from required parameters

#### `newVolumeiSCSIAttributes'`

``` purescript
newVolumeiSCSIAttributes' :: ({ "TargetARN" :: NullOrUndefined (TargetARN), "NetworkInterfaceId" :: NullOrUndefined (NetworkInterfaceId), "NetworkInterfacePort" :: NullOrUndefined (Int), "LunNumber" :: NullOrUndefined (PositiveIntObject), "ChapEnabled" :: NullOrUndefined (Boolean) } -> { "TargetARN" :: NullOrUndefined (TargetARN), "NetworkInterfaceId" :: NullOrUndefined (NetworkInterfaceId), "NetworkInterfacePort" :: NullOrUndefined (Int), "LunNumber" :: NullOrUndefined (PositiveIntObject), "ChapEnabled" :: NullOrUndefined (Boolean) }) -> VolumeiSCSIAttributes
```

Constructs VolumeiSCSIAttributes's fields from required parameters

#### `ErrorDetails'`

``` purescript
newtype ErrorDetails'
  = ErrorDetails' (StrMap String)
```

##### Instances
``` purescript
Newtype ErrorDetails' _
Generic ErrorDetails' _
Show ErrorDetails'
Decode ErrorDetails'
Encode ErrorDetails'
```


