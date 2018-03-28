
module AWS.StorageGateway.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.StorageGateway as StorageGateway
import AWS.StorageGateway.Types as StorageGatewayTypes


-- | <p>Activates the gateway you previously deployed on your host. In the activation process, you specify information such as the region you want to use for storing snapshots or tapes, the time zone for scheduled snapshots the gateway snapshot schedule window, an activation key, and a name for your gateway. The activation process also associates your gateway with your account; for more information, see <a>UpdateGatewayInformation</a>.</p> <note> <p>You must turn on the gateway VM before you can activate your gateway.</p> </note>
activateGateway :: forall eff. StorageGateway.Service -> StorageGatewayTypes.ActivateGatewayInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.ActivateGatewayOutput
activateGateway (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "activateGateway"


-- | <p>Configures one or more gateway local disks as cache for a gateway. This operation is only supported in the cached volume, tape and file gateway type (see <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html">Storage Gateway Concepts</a>).</p> <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add cache, and one or more disk IDs that you want to configure as cache.</p>
addCache :: forall eff. StorageGateway.Service -> StorageGatewayTypes.AddCacheInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.AddCacheOutput
addCache (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addCache"


-- | <p>Adds one or more tags to the specified resource. You use tags to add metadata to resources, which you can use to categorize these resources. For example, you can categorize resources by purpose, owner, environment, or team. Each tag consists of a key and a value, which you define. You can add tags to the following AWS Storage Gateway resources:</p> <ul> <li> <p>Storage gateways of all types</p> </li> </ul> <ul> <li> <p>Storage Volumes</p> </li> </ul> <ul> <li> <p>Virtual Tapes</p> </li> </ul> <p>You can create a maximum of 10 tags for each resource. Virtual tapes and storage volumes that are recovered to a new gateway maintain their tags.</p>
addTagsToResource :: forall eff. StorageGateway.Service -> StorageGatewayTypes.AddTagsToResourceInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.AddTagsToResourceOutput
addTagsToResource (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addTagsToResource"


-- | <p>Configures one or more gateway local disks as upload buffer for a specified gateway. This operation is supported for the stored volume, cached volume and tape gateway types.</p> <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add upload buffer, and one or more disk IDs that you want to configure as upload buffer.</p>
addUploadBuffer :: forall eff. StorageGateway.Service -> StorageGatewayTypes.AddUploadBufferInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.AddUploadBufferOutput
addUploadBuffer (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addUploadBuffer"


-- | <p>Configures one or more gateway local disks as working storage for a gateway. This operation is only supported in the stored volume gateway type. This operation is deprecated in cached volume API version 20120630. Use <a>AddUploadBuffer</a> instead.</p> <note> <p>Working storage is also referred to as upload buffer. You can also use the <a>AddUploadBuffer</a> operation to add upload buffer to a stored volume gateway.</p> </note> <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add working storage, and one or more disk IDs that you want to configure as working storage.</p>
addWorkingStorage :: forall eff. StorageGateway.Service -> StorageGatewayTypes.AddWorkingStorageInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.AddWorkingStorageOutput
addWorkingStorage (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addWorkingStorage"


-- | <p>Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving process is initiated. This operation is only supported in the tape gateway type.</p>
cancelArchival :: forall eff. StorageGateway.Service -> StorageGatewayTypes.CancelArchivalInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.CancelArchivalOutput
cancelArchival (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelArchival"


-- | <p>Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a gateway after the retrieval process is initiated. The virtual tape is returned to the VTS. This operation is only supported in the tape gateway type.</p>
cancelRetrieval :: forall eff. StorageGateway.Service -> StorageGatewayTypes.CancelRetrievalInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.CancelRetrievalOutput
cancelRetrieval (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelRetrieval"


-- | <p>Creates a cached volume on a specified cached volume gateway. This operation is only supported in the cached volume gateway type.</p> <note> <p>Cache storage must be allocated to the gateway before you can create a cached volume. Use the <a>AddCache</a> operation to add cache storage to a gateway. </p> </note> <p>In the request, you must specify the gateway, size of the volume in bytes, the iSCSI target name, an IP address on which to expose the target, and a unique client token. In response, the gateway creates the volume and returns information about it. This information includes the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that initiators can use to connect to the volume target.</p> <p>Optionally, you can provide the ARN for an existing volume as the <code>SourceVolumeARN</code> for this cached volume, which creates an exact copy of the existing volume’s latest recovery point. The <code>VolumeSizeInBytes</code> value must be equal to or larger than the size of the copied volume, in bytes.</p>
createCachediSCSIVolume :: forall eff. StorageGateway.Service -> StorageGatewayTypes.CreateCachediSCSIVolumeInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.CreateCachediSCSIVolumeOutput
createCachediSCSIVolume (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createCachediSCSIVolume"


-- | <p>Creates a file share on an existing file gateway. In Storage Gateway, a file share is a file system mount point backed by Amazon S3 cloud storage. Storage Gateway exposes file shares using a Network File System (NFS) interface. This operation is only supported in the file gateway type.</p> <important> <p>File gateway requires AWS Security Token Service (AWS STS) to be activated to enable you create a file share. Make sure AWS STS is activated in the region you are creating your file gateway in. If AWS STS is not activated in the region, activate it. For information about how to activate AWS STS, see Activating and Deactivating AWS STS in an AWS Region in the AWS Identity and Access Management User Guide. </p> <p>File gateway does not support creating hard or symbolic links on a file share.</p> </important>
createNFSFileShare :: forall eff. StorageGateway.Service -> StorageGatewayTypes.CreateNFSFileShareInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.CreateNFSFileShareOutput
createNFSFileShare (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createNFSFileShare"


-- | <p>Initiates a snapshot of a volume.</p> <p>AWS Storage Gateway provides the ability to back up point-in-time snapshots of your data to Amazon Simple Storage (S3) for durable off-site recovery, as well as import the data to an Amazon Elastic Block Store (EBS) volume in Amazon Elastic Compute Cloud (EC2). You can take snapshots of your gateway volume on a scheduled or ad-hoc basis. This API enables you to take ad-hoc snapshot. For more information, see <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#SchedulingSnapshot">Editing a Snapshot Schedule</a>.</p> <p>In the CreateSnapshot request you identify the volume by providing its Amazon Resource Name (ARN). You must also provide description for the snapshot. When AWS Storage Gateway takes the snapshot of specified volume, the snapshot and description appears in the AWS Storage Gateway Console. In response, AWS Storage Gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot. This operation is only supported in stored and cached volume gateway type.</p> <note> <p>To list or delete a snapshot, you must use the Amazon EC2 API. For more information, see DescribeSnapshots or DeleteSnapshot in the <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Operations.html">EC2 API reference</a>.</p> </note> <important> <p>Volume and snapshot IDs are changing to a longer length ID format. For more information, see the important note on the <a href="http://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html">Welcome</a> page.</p> </important>
createSnapshot :: forall eff. StorageGateway.Service -> StorageGatewayTypes.CreateSnapshotInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.CreateSnapshotOutput
createSnapshot (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSnapshot"


-- | <p>Initiates a snapshot of a gateway from a volume recovery point. This operation is only supported in the cached volume gateway type.</p> <p>A volume recovery point is a point in time at which all data of the volume is consistent and from which you can create a snapshot. To get a list of volume recovery point for cached volume gateway, use <a>ListVolumeRecoveryPoints</a>.</p> <p>In the <code>CreateSnapshotFromVolumeRecoveryPoint</code> request, you identify the volume by providing its Amazon Resource Name (ARN). You must also provide a description for the snapshot. When the gateway takes a snapshot of the specified volume, the snapshot and its description appear in the AWS Storage Gateway console. In response, the gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot.</p> <note> <p>To list or delete a snapshot, you must use the Amazon EC2 API. For more information, in <i>Amazon Elastic Compute Cloud API Reference</i>.</p> </note>
createSnapshotFromVolumeRecoveryPoint :: forall eff. StorageGateway.Service -> StorageGatewayTypes.CreateSnapshotFromVolumeRecoveryPointInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.CreateSnapshotFromVolumeRecoveryPointOutput
createSnapshotFromVolumeRecoveryPoint (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSnapshotFromVolumeRecoveryPoint"


-- | <p>Creates a volume on a specified gateway. This operation is only supported in the stored volume gateway type.</p> <p>The size of the volume to create is inferred from the disk size. You can choose to preserve existing data on the disk, create volume from an existing snapshot, or create an empty volume. If you choose to create an empty gateway volume, then any existing data on the disk is erased.</p> <p>In the request you must specify the gateway and the disk information on which you are creating the volume. In response, the gateway creates the volume and returns volume information such as the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that initiators can use to connect to the volume target.</p>
createStorediSCSIVolume :: forall eff. StorageGateway.Service -> StorageGatewayTypes.CreateStorediSCSIVolumeInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.CreateStorediSCSIVolumeOutput
createStorediSCSIVolume (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createStorediSCSIVolume"


-- | <p>Creates a virtual tape by using your own barcode. You write data to the virtual tape and then archive the tape. A barcode is unique and can not be reused if it has already been used on a tape . This applies to barcodes used on deleted tapes. This operation is only supported in the tape gateway type.</p> <note> <p>Cache storage must be allocated to the gateway before you can create a virtual tape. Use the <a>AddCache</a> operation to add cache storage to a gateway.</p> </note>
createTapeWithBarcode :: forall eff. StorageGateway.Service -> StorageGatewayTypes.CreateTapeWithBarcodeInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.CreateTapeWithBarcodeOutput
createTapeWithBarcode (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createTapeWithBarcode"


-- | <p>Creates one or more virtual tapes. You write data to the virtual tapes and then archive the tapes. This operation is only supported in the tape gateway type.</p> <note> <p>Cache storage must be allocated to the gateway before you can create virtual tapes. Use the <a>AddCache</a> operation to add cache storage to a gateway. </p> </note>
createTapes :: forall eff. StorageGateway.Service -> StorageGatewayTypes.CreateTapesInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.CreateTapesOutput
createTapes (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createTapes"


-- | <p>Deletes the bandwidth rate limits of a gateway. You can delete either the upload and download bandwidth rate limit, or you can delete both. If you delete only one of the limits, the other limit remains unchanged. To specify which gateway to work with, use the Amazon Resource Name (ARN) of the gateway in your request.</p>
deleteBandwidthRateLimit :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DeleteBandwidthRateLimitInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DeleteBandwidthRateLimitOutput
deleteBandwidthRateLimit (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteBandwidthRateLimit"


-- | <p>Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair.</p>
deleteChapCredentials :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DeleteChapCredentialsInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DeleteChapCredentialsOutput
deleteChapCredentials (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteChapCredentials"


-- | <p>Deletes a file share from a file gateway. This operation is only supported in the file gateway type.</p>
deleteFileShare :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DeleteFileShareInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DeleteFileShareOutput
deleteFileShare (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteFileShare"


-- | <p>Deletes a gateway. To specify which gateway to delete, use the Amazon Resource Name (ARN) of the gateway in your request. The operation deletes the gateway; however, it does not delete the gateway virtual machine (VM) from your host computer.</p> <p>After you delete a gateway, you cannot reactivate it. Completed snapshots of the gateway volumes are not deleted upon deleting the gateway, however, pending snapshots will not complete. After you delete a gateway, your next step is to remove it from your environment.</p> <important> <p>You no longer pay software charges after the gateway is deleted; however, your existing Amazon EBS snapshots persist and you will continue to be billed for these snapshots. You can choose to remove all remaining Amazon EBS snapshots by canceling your Amazon EC2 subscription.  If you prefer not to cancel your Amazon EC2 subscription, you can delete your snapshots using the Amazon EC2 console. For more information, see the <a href="http://aws.amazon.com/storagegateway"> AWS Storage Gateway Detail Page</a>. </p> </important>
deleteGateway :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DeleteGatewayInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DeleteGatewayOutput
deleteGateway (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteGateway"


-- | <p>Deletes a snapshot of a volume.</p> <p>You can take snapshots of your gateway volumes on a scheduled or ad hoc basis. This API action enables you to delete a snapshot schedule for a volume. For more information, see <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html">Working with Snapshots</a>. In the <code>DeleteSnapshotSchedule</code> request, you identify the volume by providing its Amazon Resource Name (ARN). This operation is only supported in stored and cached volume gateway types.</p> <note> <p>To list or delete a snapshot, you must use the Amazon EC2 API. in <i>Amazon Elastic Compute Cloud API Reference</i>.</p> </note>
deleteSnapshotSchedule :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DeleteSnapshotScheduleInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DeleteSnapshotScheduleOutput
deleteSnapshotSchedule (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSnapshotSchedule"


-- | <p>Deletes the specified virtual tape. This operation is only supported in the tape gateway type.</p>
deleteTape :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DeleteTapeInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DeleteTapeOutput
deleteTape (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteTape"


-- | <p>Deletes the specified virtual tape from the virtual tape shelf (VTS). This operation is only supported in the tape gateway type.</p>
deleteTapeArchive :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DeleteTapeArchiveInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DeleteTapeArchiveOutput
deleteTapeArchive (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteTapeArchive"


-- | <p>Deletes the specified storage volume that you previously created using the <a>CreateCachediSCSIVolume</a> or <a>CreateStorediSCSIVolume</a> API. This operation is only supported in the cached volume and stored volume types. For stored volume gateways, the local disk that was configured as the storage volume is not deleted. You can reuse the local disk to create another storage volume. </p> <p>Before you delete a volume, make sure there are no iSCSI connections to the volume you are deleting. You should also make sure there is no snapshot in progress. You can use the Amazon Elastic Compute Cloud (Amazon EC2) API to query snapshots on the volume you are deleting and check the snapshot status. For more information, go to <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API Reference</i>.</p> <p>In the request, you must provide the Amazon Resource Name (ARN) of the storage volume you want to delete.</p>
deleteVolume :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DeleteVolumeInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DeleteVolumeOutput
deleteVolume (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteVolume"


-- | <p>Returns the bandwidth rate limits of a gateway. By default, these limits are not set, which means no bandwidth rate limiting is in effect.</p> <p>This operation only returns a value for a bandwidth rate limit only if the limit is set. If no limits are set for the gateway, then this operation returns only the gateway ARN in the response body. To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.</p>
describeBandwidthRateLimit :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeBandwidthRateLimitInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeBandwidthRateLimitOutput
describeBandwidthRateLimit (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeBandwidthRateLimit"


-- | <p>Returns information about the cache of a gateway. This operation is only supported in the cached volume, tape and file gateway types.</p> <p>The response includes disk IDs that are configured as cache, and it includes the amount of cache allocated and used.</p>
describeCache :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeCacheInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeCacheOutput
describeCache (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeCache"


-- | <p>Returns a description of the gateway volumes specified in the request. This operation is only supported in the cached volume gateway types.</p> <p>The list of gateway volumes in the request must be from one gateway. In the response Amazon Storage Gateway returns volume information sorted by volume Amazon Resource Name (ARN).</p>
describeCachediSCSIVolumes :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeCachediSCSIVolumesInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeCachediSCSIVolumesOutput
describeCachediSCSIVolumes (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeCachediSCSIVolumes"


-- | <p>Returns an array of Challenge-Handshake Authentication Protocol (CHAP) credentials information for a specified iSCSI target, one for each target-initiator pair.</p>
describeChapCredentials :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeChapCredentialsInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeChapCredentialsOutput
describeChapCredentials (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeChapCredentials"


-- | <p>Returns metadata about a gateway such as its name, network interfaces, configured time zone, and the state (whether the gateway is running or not). To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.</p>
describeGatewayInformation :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeGatewayInformationInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeGatewayInformationOutput
describeGatewayInformation (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeGatewayInformation"


-- | <p>Returns your gateway's weekly maintenance start time including the day and time of the week. Note that values are in terms of the gateway's time zone.</p>
describeMaintenanceStartTime :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeMaintenanceStartTimeInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeMaintenanceStartTimeOutput
describeMaintenanceStartTime (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeMaintenanceStartTime"


-- | <p>Gets a description for one or more file shares from a file gateway. This operation is only supported in the file gateway type.</p>
describeNFSFileShares :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeNFSFileSharesInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeNFSFileSharesOutput
describeNFSFileShares (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeNFSFileShares"


-- | <p>Describes the snapshot schedule for the specified gateway volume. The snapshot schedule information includes intervals at which snapshots are automatically initiated on the volume. This operation is only supported in the cached volume and stored volume types.</p>
describeSnapshotSchedule :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeSnapshotScheduleInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeSnapshotScheduleOutput
describeSnapshotSchedule (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSnapshotSchedule"


-- | <p>Returns the description of the gateway volumes specified in the request. The list of gateway volumes in the request must be from one gateway. In the response Amazon Storage Gateway returns volume information sorted by volume ARNs. This operation is only supported in stored volume gateway type.</p>
describeStorediSCSIVolumes :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeStorediSCSIVolumesInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeStorediSCSIVolumesOutput
describeStorediSCSIVolumes (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeStorediSCSIVolumes"


-- | <p>Returns a description of specified virtual tapes in the virtual tape shelf (VTS). This operation is only supported in the tape gateway type.</p> <p>If a specific <code>TapeARN</code> is not specified, AWS Storage Gateway returns a description of all virtual tapes found in the VTS associated with your account.</p>
describeTapeArchives :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeTapeArchivesInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeTapeArchivesOutput
describeTapeArchives (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeTapeArchives"


-- | <p>Returns a list of virtual tape recovery points that are available for the specified tape gateway.</p> <p>A recovery point is a point-in-time view of a virtual tape at which all the data on the virtual tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway. This operation is only supported in the tape gateway type.</p>
describeTapeRecoveryPoints :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeTapeRecoveryPointsInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeTapeRecoveryPointsOutput
describeTapeRecoveryPoints (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeTapeRecoveryPoints"


-- | <p>Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes. If a <code>TapeARN</code> is not specified, returns a description of all virtual tapes associated with the specified gateway. This operation is only supported in the tape gateway type.</p>
describeTapes :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeTapesInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeTapesOutput
describeTapes (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeTapes"


-- | <p>Returns information about the upload buffer of a gateway. This operation is supported for the stored volume, cached volume and tape gateway types.</p> <p>The response includes disk IDs that are configured as upload buffer space, and it includes the amount of upload buffer space allocated and used.</p>
describeUploadBuffer :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeUploadBufferInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeUploadBufferOutput
describeUploadBuffer (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeUploadBuffer"


-- | <p>Returns a description of virtual tape library (VTL) devices for the specified tape gateway. In the response, AWS Storage Gateway returns VTL device information.</p> <p>This operation is only supported in the tape gateway type.</p>
describeVTLDevices :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeVTLDevicesInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeVTLDevicesOutput
describeVTLDevices (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVTLDevices"


-- | <p>Returns information about the working storage of a gateway. This operation is only supported in the stored volumes gateway type. This operation is deprecated in cached volumes API version (20120630). Use DescribeUploadBuffer instead.</p> <note> <p>Working storage is also referred to as upload buffer. You can also use the DescribeUploadBuffer operation to add upload buffer to a stored volume gateway.</p> </note> <p>The response includes disk IDs that are configured as working storage, and it includes the amount of working storage allocated and used.</p>
describeWorkingStorage :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DescribeWorkingStorageInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DescribeWorkingStorageOutput
describeWorkingStorage (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeWorkingStorage"


-- | <p>Disables a tape gateway when the gateway is no longer functioning. For example, if your gateway VM is damaged, you can disable the gateway so you can recover virtual tapes.</p> <p>Use this operation for a tape gateway that is not reachable or not functioning. This operation is only supported in the tape gateway type.</p> <important> <p>Once a gateway is disabled it cannot be enabled.</p> </important>
disableGateway :: forall eff. StorageGateway.Service -> StorageGatewayTypes.DisableGatewayInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.DisableGatewayOutput
disableGateway (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disableGateway"


-- | <p>Gets a list of the file shares for a specific file gateway, or the list of file shares that belong to the calling user account. This operation is only supported in the file gateway type.</p>
listFileShares :: forall eff. StorageGateway.Service -> StorageGatewayTypes.ListFileSharesInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.ListFileSharesOutput
listFileShares (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listFileShares"


-- | <p>Lists gateways owned by an AWS account in a region specified in the request. The returned list is ordered by gateway Amazon Resource Name (ARN).</p> <p>By default, the operation returns a maximum of 100 gateways. This operation supports pagination that allows you to optionally reduce the number of gateways returned in a response.</p> <p>If you have more gateways than are returned in a response (that is, the response returns only a truncated list of your gateways), the response contains a marker that you can specify in your next request to fetch the next page of gateways.</p>
listGateways :: forall eff. StorageGateway.Service -> StorageGatewayTypes.ListGatewaysInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.ListGatewaysOutput
listGateways (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listGateways"


-- | <p>Returns a list of the gateway's local disks. To specify which gateway to describe, you use the Amazon Resource Name (ARN) of the gateway in the body of the request.</p> <p>The request returns a list of all disks, specifying which are configured as working storage, cache storage, or stored volume or not configured at all. The response includes a <code>DiskStatus</code> field. This field can have a value of present (the disk is available to use), missing (the disk is no longer connected to the gateway), or mismatch (the disk node is occupied by a disk that has incorrect metadata or the disk content is corrupted).</p>
listLocalDisks :: forall eff. StorageGateway.Service -> StorageGatewayTypes.ListLocalDisksInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.ListLocalDisksOutput
listLocalDisks (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listLocalDisks"


-- | <p>Lists the tags that have been added to the specified resource. This operation is only supported in the cached volume, stored volume and tape gateway type.</p>
listTagsForResource :: forall eff. StorageGateway.Service -> StorageGatewayTypes.ListTagsForResourceInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.ListTagsForResourceOutput
listTagsForResource (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTagsForResource"


-- | <p>Lists virtual tapes in your virtual tape library (VTL) and your virtual tape shelf (VTS). You specify the tapes to list by specifying one or more tape Amazon Resource Names (ARNs). If you don't specify a tape ARN, the operation lists all virtual tapes in both your VTL and VTS.</p> <p>This operation supports pagination. By default, the operation returns a maximum of up to 100 tapes. You can optionally specify the <code>Limit</code> parameter in the body to limit the number of tapes in the response. If the number of tapes returned in the response is truncated, the response includes a <code>Marker</code> element that you can use in your subsequent request to retrieve the next set of tapes. This operation is only supported in the tape gateway type.</p>
listTapes :: forall eff. StorageGateway.Service -> StorageGatewayTypes.ListTapesInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.ListTapesOutput
listTapes (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTapes"


-- | <p>Lists iSCSI initiators that are connected to a volume. You can use this operation to determine whether a volume is being used or not. This operation is only supported in the cached volume and stored volume gateway types.</p>
listVolumeInitiators :: forall eff. StorageGateway.Service -> StorageGatewayTypes.ListVolumeInitiatorsInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.ListVolumeInitiatorsOutput
listVolumeInitiators (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listVolumeInitiators"


-- | <p>Lists the recovery points for a specified gateway. This operation is only supported in the cached volume gateway type.</p> <p>Each cache volume has one recovery point. A volume recovery point is a point in time at which all data of the volume is consistent and from which you can create a snapshot or clone a new cached volume from a source volume. To create a snapshot from a volume recovery point use the <a>CreateSnapshotFromVolumeRecoveryPoint</a> operation.</p>
listVolumeRecoveryPoints :: forall eff. StorageGateway.Service -> StorageGatewayTypes.ListVolumeRecoveryPointsInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.ListVolumeRecoveryPointsOutput
listVolumeRecoveryPoints (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listVolumeRecoveryPoints"


-- | <p>Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN. The response includes only the volume ARNs. If you want additional volume information, use the <a>DescribeStorediSCSIVolumes</a> or the <a>DescribeCachediSCSIVolumes</a> API.</p> <p>The operation supports pagination. By default, the operation returns a maximum of up to 100 volumes. You can optionally specify the <code>Limit</code> field in the body to limit the number of volumes in the response. If the number of volumes returned in the response is truncated, the response includes a Marker field. You can use this Marker value in your subsequent request to retrieve the next set of volumes. This operation is only supported in the cached volume and stored volume gateway types.</p>
listVolumes :: forall eff. StorageGateway.Service -> StorageGatewayTypes.ListVolumesInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.ListVolumesOutput
listVolumes (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listVolumes"


-- | <p>Sends you notification through CloudWatch Events when all files written to your NFS file share have been uploaded to Amazon S3.</p> <p>AWS Storage Gateway can send a notification through Amazon CloudWatch Events when all files written to your file share up to that point in time have been uploaded to Amazon S3. These files include files written to the NFS file share up to the time that you make a request for notification. When the upload is done, Storage Gateway sends you notification through an Amazon CloudWatch Event. You can configure CloudWatch Events to send the notification through event targets such as Amazon SNS or AWS Lambda function. This operation is only supported in the file gateway type.</p> <p>For more information, see Getting File Upload Notification in the Storage Gateway User Guide (https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-upload-notification). </p>
notifyWhenUploaded :: forall eff. StorageGateway.Service -> StorageGatewayTypes.NotifyWhenUploadedInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.NotifyWhenUploadedOutput
notifyWhenUploaded (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "notifyWhenUploaded"


-- | <p>Refreshes the cache for the specified file share. This operation finds objects in the Amazon S3 bucket that were added, removed or replaced since the gateway last listed the bucket's contents and cached the results. This operation is only supported in the file gateway type.</p>
refreshCache :: forall eff. StorageGateway.Service -> StorageGatewayTypes.RefreshCacheInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.RefreshCacheOutput
refreshCache (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "refreshCache"


-- | <p>Removes one or more tags from the specified resource. This operation is only supported in the cached volume, stored volume and tape gateway types.</p>
removeTagsFromResource :: forall eff. StorageGateway.Service -> StorageGatewayTypes.RemoveTagsFromResourceInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.RemoveTagsFromResourceOutput
removeTagsFromResource (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removeTagsFromResource"


-- | <p>Resets all cache disks that have encountered a error and makes the disks available for reconfiguration as cache storage. If your cache disk encounters a error, the gateway prevents read and write operations on virtual tapes in the gateway. For example, an error can occur when a disk is corrupted or removed from the gateway. When a cache is reset, the gateway loses its cache storage. At this point you can reconfigure the disks as cache disks. This operation is only supported in the cached volume and tape types.</p> <important> <p>If the cache disk you are resetting contains data that has not been uploaded to Amazon S3 yet, that data can be lost. After you reset cache disks, there will be no configured cache disks left in the gateway, so you must configure at least one new cache disk for your gateway to function properly.</p> </important>
resetCache :: forall eff. StorageGateway.Service -> StorageGatewayTypes.ResetCacheInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.ResetCacheOutput
resetCache (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "resetCache"


-- | <p>Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a tape gateway. Virtual tapes archived in the VTS are not associated with any gateway. However after a tape is retrieved, it is associated with a gateway, even though it is also listed in the VTS, that is, archive. This operation is only supported in the tape gateway type.</p> <p>Once a tape is successfully retrieved to a gateway, it cannot be retrieved again to another gateway. You must archive the tape again before you can retrieve it to another gateway. This operation is only supported in the tape gateway type.</p>
retrieveTapeArchive :: forall eff. StorageGateway.Service -> StorageGatewayTypes.RetrieveTapeArchiveInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.RetrieveTapeArchiveOutput
retrieveTapeArchive (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "retrieveTapeArchive"


-- | <p>Retrieves the recovery point for the specified virtual tape. This operation is only supported in the tape gateway type.</p> <p>A recovery point is a point in time view of a virtual tape at which all the data on the tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway.</p> <note> <p>The virtual tape can be retrieved to only one gateway. The retrieved tape is read-only. The virtual tape can be retrieved to only a tape gateway. There is no charge for retrieving recovery points.</p> </note>
retrieveTapeRecoveryPoint :: forall eff. StorageGateway.Service -> StorageGatewayTypes.RetrieveTapeRecoveryPointInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.RetrieveTapeRecoveryPointOutput
retrieveTapeRecoveryPoint (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "retrieveTapeRecoveryPoint"


-- | <p>Sets the password for your VM local console. When you log in to the local console for the first time, you log in to the VM with the default credentials. We recommend that you set a new password. You don't need to know the default password to set a new password.</p>
setLocalConsolePassword :: forall eff. StorageGateway.Service -> StorageGatewayTypes.SetLocalConsolePasswordInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.SetLocalConsolePasswordOutput
setLocalConsolePassword (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setLocalConsolePassword"


-- | <p>Shuts down a gateway. To specify which gateway to shut down, use the Amazon Resource Name (ARN) of the gateway in the body of your request.</p> <p>The operation shuts down the gateway service component running in the gateway's virtual machine (VM) and not the host VM.</p> <note> <p>If you want to shut down the VM, it is recommended that you first shut down the gateway component in the VM to avoid unpredictable conditions.</p> </note> <p>After the gateway is shutdown, you cannot call any other API except <a>StartGateway</a>, <a>DescribeGatewayInformation</a>, and <a>ListGateways</a>. For more information, see <a>ActivateGateway</a>. Your applications cannot read from or write to the gateway's storage volumes, and there are no snapshots taken.</p> <note> <p>When you make a shutdown request, you will get a <code>200 OK</code> success response immediately. However, it might take some time for the gateway to shut down. You can call the <a>DescribeGatewayInformation</a> API to check the status. For more information, see <a>ActivateGateway</a>.</p> </note> <p>If do not intend to use the gateway again, you must delete the gateway (using <a>DeleteGateway</a>) to no longer pay software charges associated with the gateway.</p>
shutdownGateway :: forall eff. StorageGateway.Service -> StorageGatewayTypes.ShutdownGatewayInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.ShutdownGatewayOutput
shutdownGateway (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "shutdownGateway"


-- | <p>Starts a gateway that you previously shut down (see <a>ShutdownGateway</a>). After the gateway starts, you can then make other API calls, your applications can read from or write to the gateway's storage volumes and you will be able to take snapshot backups.</p> <note> <p>When you make a request, you will get a 200 OK success response immediately. However, it might take some time for the gateway to be ready. You should call <a>DescribeGatewayInformation</a> and check the status before making any additional API calls. For more information, see <a>ActivateGateway</a>.</p> </note> <p>To specify which gateway to start, use the Amazon Resource Name (ARN) of the gateway in your request.</p>
startGateway :: forall eff. StorageGateway.Service -> StorageGatewayTypes.StartGatewayInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.StartGatewayOutput
startGateway (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startGateway"


-- | <p>Updates the bandwidth rate limits of a gateway. You can update both the upload and download bandwidth rate limit or specify only one of the two. If you don't set a bandwidth rate limit, the existing rate limit remains.</p> <p>By default, a gateway's bandwidth rate limits are not set. If you don't set any limit, the gateway does not have any limitations on its bandwidth usage and could potentially use the maximum available bandwidth.</p> <p>To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in your request.</p>
updateBandwidthRateLimit :: forall eff. StorageGateway.Service -> StorageGatewayTypes.UpdateBandwidthRateLimitInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.UpdateBandwidthRateLimitOutput
updateBandwidthRateLimit (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateBandwidthRateLimit"


-- | <p>Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target. By default, a gateway does not have CHAP enabled; however, for added security, you might use it.</p> <important> <p>When you update CHAP credentials, all existing connections on the target are closed and initiators must reconnect with the new credentials.</p> </important>
updateChapCredentials :: forall eff. StorageGateway.Service -> StorageGatewayTypes.UpdateChapCredentialsInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.UpdateChapCredentialsOutput
updateChapCredentials (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateChapCredentials"


-- | <p>Updates a gateway's metadata, which includes the gateway's name and time zone. To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in your request.</p> <note> <p>For Gateways activated after September 2, 2015, the gateway's ARN contains the gateway ID rather than the gateway name. However, changing the name of the gateway has no effect on the gateway's ARN.</p> </note>
updateGatewayInformation :: forall eff. StorageGateway.Service -> StorageGatewayTypes.UpdateGatewayInformationInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.UpdateGatewayInformationOutput
updateGatewayInformation (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateGatewayInformation"


-- | <p>Updates the gateway virtual machine (VM) software. The request immediately triggers the software update.</p> <note> <p>When you make this request, you get a <code>200 OK</code> success response immediately. However, it might take some time for the update to complete. You can call <a>DescribeGatewayInformation</a> to verify the gateway is in the <code>STATE_RUNNING</code> state.</p> </note> <important> <p>A software update forces a system restart of your gateway. You can minimize the chance of any disruption to your applications by increasing your iSCSI Initiators' timeouts. For more information about increasing iSCSI Initiator timeouts for Windows and Linux, see <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings">Customizing Your Windows iSCSI Settings</a> and <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings">Customizing Your Linux iSCSI Settings</a>, respectively.</p> </important>
updateGatewaySoftwareNow :: forall eff. StorageGateway.Service -> StorageGatewayTypes.UpdateGatewaySoftwareNowInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.UpdateGatewaySoftwareNowOutput
updateGatewaySoftwareNow (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateGatewaySoftwareNow"


-- | <p>Updates a gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone.</p>
updateMaintenanceStartTime :: forall eff. StorageGateway.Service -> StorageGatewayTypes.UpdateMaintenanceStartTimeInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.UpdateMaintenanceStartTimeOutput
updateMaintenanceStartTime (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateMaintenanceStartTime"


-- | <p>Updates a file share. This operation is only supported in the file gateway type.</p> <note> <p>To leave a file share field unchanged, set the corresponding input field to null.</p> </note> <p>Updates the following file share setting:</p> <ul> <li> <p>Default storage class for your S3 bucket</p> </li> <li> <p>Metadata defaults for your S3 bucket</p> </li> <li> <p>Allowed NFS clients for your file share</p> </li> <li> <p>Squash settings</p> </li> <li> <p>Write status of your file share</p> </li> </ul> <note> <p>To leave a file share field unchanged, set the corresponding input field to null. This operation is only supported in file gateways.</p> </note>
updateNFSFileShare :: forall eff. StorageGateway.Service -> StorageGatewayTypes.UpdateNFSFileShareInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.UpdateNFSFileShareOutput
updateNFSFileShare (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateNFSFileShare"


-- | <p>Updates a snapshot schedule configured for a gateway volume. This operation is only supported in the cached volume and stored volume gateway types.</p> <p>The default snapshot schedule for volume is once every 24 hours, starting at the creation time of the volume. You can use this API to change the snapshot schedule configured for the volume.</p> <p>In the request you must identify the gateway volume whose snapshot schedule you want to update, and the schedule information, including when you want the snapshot to begin on a day and the frequency (in hours) of snapshots.</p>
updateSnapshotSchedule :: forall eff. StorageGateway.Service -> StorageGatewayTypes.UpdateSnapshotScheduleInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.UpdateSnapshotScheduleOutput
updateSnapshotSchedule (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateSnapshotSchedule"


-- | <p>Updates the type of medium changer in a tape gateway. When you activate a tape gateway, you select a medium changer type for the tape gateway. This operation enables you to select a different type of medium changer after a tape gateway is activated. This operation is only supported in the tape gateway type.</p>
updateVTLDeviceType :: forall eff. StorageGateway.Service -> StorageGatewayTypes.UpdateVTLDeviceTypeInput -> Aff (exception :: EXCEPTION | eff) StorageGatewayTypes.UpdateVTLDeviceTypeOutput
updateVTLDeviceType (StorageGateway.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateVTLDeviceType"
