# List of sample alert suppression rules

| **Sample** | **ASC Rule** |
| ----------- | ----------- |
| [AzSec_KeyVaultAccess_Rule](/Rules/AzSec_KeyVaultAccess_Rule.json) | Unsual appplication accessed a Key Vault |
| [AzSec_EICAR_Testing_Rule](/Rules/AzSec_EICAR_Testing_Rule.json) | Antimalware Action Taken |
| [AzSec_Anonymous_Storage_Blob_Rule](/Rules/AzSec_Anonymous_Storage_Blob_Rule.json) | Anonymous access to a storage account |
| [AzSec_PowerShell_Encoded_Rule](/Rules/AzSec_PowerShell_Encoded_Rule.json) | Suspicious PowerShell Activity Detected |
| [AzSec_SmartScreen_Rule](/Rules/AzSec_SmartScreen_Rule.json) | Website is tagged as malicious in threat intelligence feed | 
| [AzSec_Trusted_Ip_Rule](/Rules/AzSec_Trusted_Ip_Rule.json) | Traffic detected from IP addresses recommended for blocking |

# List of alert type 

> The table is subject to change

| **AlertType** | **ASC Rule** |
| ------------- | ------------ |
| VM.Windows_KnownCredentialAccessTools | Suspicious process executed |
| Login_BF_ValidUserFailed | Suspicious authentication activity (Windows) |
| VM_TimerServiceDisabled | Attempt to stop apt-daily-upgrade.timer service detected |
| Storage.Blob_GeoAnomaly | Access from an unusual location to a storage account |
| VM.Windows_SubvertingAccessibilityBinary | Sticky keys attack detected |
| VM.Windows_RandomProcessName | Random process name detected |
| SQL.DB_DataCenterAnomaly | Logon from an unusual Azure Data Center |
| VM_KnownHostEnumerationArtifacts | Suspicious enumeration of host configuration |
| VM_AdaptiveApplicationControlWindowsViolationAudited | Adaptive application control policy violation was audited (Windows) |
| VM_AdaptiveApplicationControlLinuxViolationAudited | Adaptive application control policy violation was audited (Linux) |
| Storage.Blob_DataExfiltration.AmountOfDataAnomaly | Unusual amount of data extracted from a storage account |
| Network_TrafficFromUnrecommendedIP | Traffic detected from IP addresses recommended for blocking |
| ARM_UnusedAppPowershellPersistence | Suspicious management session using Azure portal detected |
| VM_ThreatIntelSuspectLogon | A logon from a malicious IP has been detected |
| DNS_RandomizedDomain | Suspicious random domain name |
| Storage.Files_GeoAnomaly | Access from an unusual location to a storage account (File Service) |
| Storage.Blob_GeoAnomaly | Access from an unusual location to a storage account (Blob Service) |
| AKS_PrivilegedContainer | Privileged container detected |
| SQL.DB_PotentialSqlInjection | Potential SQL Injection |
| VM_SystemLogRemoval | Possible Log Tampering Activity Detected |
| VM_SuspiciousLKMRemoved | A kernel module was removed |
| Storage.Blob_DeletionAnomaly | Unusual deletion in a storage account |
| VM_ExposedDocker | Exposed Docker daemon detected |
| AdaptiveApplicationControl_Windows_EXE_Audited | EXE application control policy violation was audited (Windows) |
| AdaptiveApplicationControl_Linux_EXE_Audited | EXE application control policy violation was audited (Linux) |
| SCUBA_AUDITLOGCLEARED | An event log was cleared |
| SCUBA_LOGCLEARED | An event log was cleared |
| AdaptiveApplicationControl_Windows_ScriptMSI_Audited | MSI/Script application control policy violation was audited |
| SCUBA_OBFUSCATEDCMDLINE | Detected obfuscated command line |
| AKS_HighPrivilegesRole | New high privileges role detected |
| PrincipalAnomaly | Logon by an unfamiliar principal |
| Suspicious PowerShell command line | Suspicious PowerShell command line |
| VM_CryptoCoinMinerArtifacts | Process associated with digital currency mining detected |
| VM_SuspectDownloadArtifacts | Detected suspicious file download |
| KV_AppAnomaly | Unusual application accessed a Key Vault |
| KV_OperationPatternAnomaly | Unusual operation pattern in a Key Vault |
| AKS_KubeSystemContainer | New container in the kube-system namespace detected |
| SCUBA_RULE_Removal_of_system_log_files | Possible Log Tampering Activity Detected |
| SCUBA_SOUNDER | Detected suspicious network activity |
| BlobStorageIdmlApplicationAnomaly | Unusual application accessed a storage account |
| Storage.Blob_AccessInspectionAnomaly | Unusual access inspection in a storage account |
| VM_SuspectExecutablePath | Executable found running from a suspicious location |
| SSH_BF_Failed | Failed SSH brute force attack |
| AntimalwareActionFailed | Antimalware Action Failed |
| VM_ReconnaissanceArtifactsBurst | Burst of multiple reconnaissance commands could indicate initial activity after compromise |
| VM_CommonBot | Behavior similar to common Linux bots detected | 
| VM_NewSudoerAccount | A new user was added to the sudoers group |
| Network_CommunicationWithC2 | Network communication with a malicious machine detected	 |