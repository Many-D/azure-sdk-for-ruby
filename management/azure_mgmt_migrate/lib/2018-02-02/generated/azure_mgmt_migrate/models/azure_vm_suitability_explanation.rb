# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Migrate::Mgmt::V2018_02_02
  module Models
    #
    # Defines values for AzureVmSuitabilityExplanation
    #
    module AzureVmSuitabilityExplanation
      Unknown = "Unknown"
      NotApplicable = "NotApplicable"
      GuestOperatingSystemArchitectureNotSupported = "GuestOperatingSystemArchitectureNotSupported"
      GuestOperatingSystemNotSupported = "GuestOperatingSystemNotSupported"
      BootTypeNotSupported = "BootTypeNotSupported"
      MoreDisksThanSupported = "MoreDisksThanSupported"
      NoSuitableVmSizeFound = "NoSuitableVmSizeFound"
      OneOrMoreDisksNotSuitable = "OneOrMoreDisksNotSuitable"
      OneOrMoreAdaptersNotSuitable = "OneOrMoreAdaptersNotSuitable"
      InternalErrorOccuredDuringComputeEvaluation = "InternalErrorOccuredDuringComputeEvaluation"
      InternalErrorOccuredDuringStorageEvaluation = "InternalErrorOccuredDuringStorageEvaluation"
      InternalErrorOccuredDuringNetworkEvaluation = "InternalErrorOccuredDuringNetworkEvaluation"
      NoVmSizeSupportsStoragePerformance = "NoVmSizeSupportsStoragePerformance"
      NoVmSizeSupportsNetworkPerformance = "NoVmSizeSupportsNetworkPerformance"
      NoVmSizeForSelectedPricingTier = "NoVmSizeForSelectedPricingTier"
      NoVmSizeForSelectedAzureLocation = "NoVmSizeForSelectedAzureLocation"
      CheckRedHatLinuxVersion = "CheckRedHatLinuxVersion"
      CheckOpenSuseLinuxVersion = "CheckOpenSuseLinuxVersion"
      CheckWindowsServer2008R2Version = "CheckWindowsServer2008R2Version"
      CheckCentOsVersion = "CheckCentOsVersion"
      CheckDebianLinuxVersion = "CheckDebianLinuxVersion"
      CheckSuseLinuxVersion = "CheckSuseLinuxVersion"
      CheckOracleLinuxVersion = "CheckOracleLinuxVersion"
      CheckUbuntuLinuxVersion = "CheckUbuntuLinuxVersion"
      CheckCoreOsLinuxVersion = "CheckCoreOsLinuxVersion"
      WindowsServerVersionConditionallySupported = "WindowsServerVersionConditionallySupported"
      NoGuestOperatingSystemConditionallySupported = "NoGuestOperatingSystemConditionallySupported"
      WindowsClientVersionsConditionallySupported = "WindowsClientVersionsConditionallySupported"
      BootTypeUnknown = "BootTypeUnknown"
      GuestOperatingSystemUnknown = "GuestOperatingSystemUnknown"
      WindowsServerVersionsSupportedWithCaveat = "WindowsServerVersionsSupportedWithCaveat"
      WindowsOSNoLongerUnderMSSupport = "WindowsOSNoLongerUnderMSSupport"
      EndorsedWithConditionsLinuxDistributions = "EndorsedWithConditionsLinuxDistributions"
      UnendorsedLinuxDistributions = "UnendorsedLinuxDistributions"
      NoVmSizeForStandardPricingTier = "NoVmSizeForStandardPricingTier"
      NoVmSizeForBasicPricingTier = "NoVmSizeForBasicPricingTier"
    end
  end
end