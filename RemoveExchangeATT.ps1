﻿get-aduser -filter {msExchMailboxGuid -like "*"} | set-aduser -clear msExchMailboxGuid,msexchhomeservername,legacyexchangedn,mail,mailnickname,msexchmailboxsecuritydescriptor,msexchpoliciesincluded,msexchrecipientdisplaytype,msexchrecipienttypedetails,msexchumdtmfmap,msexchuseraccountcontrol,msexchversion,mail,HomeMDB,HomeMTA,legacyExchangeDN,msExchMailboxAuditEnable,msExchAddressBookFlags,msExchArchiveQuota,msExchArchiveWarnQuota,msExchBypassAudit,msExchDumpsterQuota,msExchDumpsterWarningQuota,msExchHomeServerName,msExchMailboxAuditEnable,msExchMailboxAuditLogAgeLimit,msExchMailboxGuid,msExchMDBRulesQuota,msExchModerationFlags,msExchPoliciesIncluded,msExchProvisioningFlags,msExchRBACPolicyLink,msExchRecipientDisplayType,msExchRecipientTypeDetails,msExchTransportRecipientSettingsFlags,msExchUMDtmfMap,msExchUMEnabledFlags2,msExchUserAccountControl,msExchVersion,showInAddressBook,mailNickname