# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2015-03-01-preview/generated/azure_mgmt_hdinsight/module_definition'
require 'ms_rest_azure'

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  autoload :Clusters,                                           '2015-03-01-preview/generated/azure_mgmt_hdinsight/clusters.rb'
  autoload :Applications,                                       '2015-03-01-preview/generated/azure_mgmt_hdinsight/applications.rb'
  autoload :Locations,                                          '2015-03-01-preview/generated/azure_mgmt_hdinsight/locations.rb'
  autoload :Configurations,                                     '2015-03-01-preview/generated/azure_mgmt_hdinsight/configurations.rb'
  autoload :ExtensionOperations,                                '2015-03-01-preview/generated/azure_mgmt_hdinsight/extension_operations.rb'
  autoload :ScriptActions,                                      '2015-03-01-preview/generated/azure_mgmt_hdinsight/script_actions.rb'
  autoload :ScriptExecutionHistory,                             '2015-03-01-preview/generated/azure_mgmt_hdinsight/script_execution_history.rb'
  autoload :Operations,                                         '2015-03-01-preview/generated/azure_mgmt_hdinsight/operations.rb'
  autoload :HDInsightManagementClient,                          '2015-03-01-preview/generated/azure_mgmt_hdinsight/hdinsight_management_client.rb'

  module Models
    autoload :ClusterDiskEncryptionParameters,                    '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_disk_encryption_parameters.rb'
    autoload :UpdateGatewaySettingsParameters,                    '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/update_gateway_settings_parameters.rb'
    autoload :SecurityProfile,                                    '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/security_profile.rb'
    autoload :GatewaySettings,                                    '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/gateway_settings.rb'
    autoload :AutoscaleSchedule,                                  '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/autoscale_schedule.rb'
    autoload :OperationResource,                                  '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/operation_resource.rb'
    autoload :AutoscaleRecurrence,                                '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/autoscale_recurrence.rb'
    autoload :Resource,                                           '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/resource.rb'
    autoload :HardwareProfile,                                    '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/hardware_profile.rb'
    autoload :Autoscale,                                          '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/autoscale.rb'
    autoload :DataDisksGroups,                                    '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/data_disks_groups.rb'
    autoload :VirtualNetworkProfile,                              '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/virtual_network_profile.rb'
    autoload :SshProfile,                                         '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/ssh_profile.rb'
    autoload :OperationListResult,                                '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/operation_list_result.rb'
    autoload :OsProfile,                                          '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/os_profile.rb'
    autoload :Operation,                                          '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/operation.rb'
    autoload :Role,                                               '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/role.rb'
    autoload :ErrorResponse,                                      '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/error_response.rb'
    autoload :StorageAccount,                                     '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/storage_account.rb'
    autoload :ApplicationGetHttpsEndpoint,                        '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/application_get_https_endpoint.rb'
    autoload :DiskEncryptionProperties,                           '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/disk_encryption_properties.rb'
    autoload :ApplicationGetEndpoint,                             '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/application_get_endpoint.rb'
    autoload :ClusterIdentityUserAssignedIdentitiesValue,         '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_identity_user_assigned_identities_value.rb'
    autoload :ApplicationProperties,                              '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/application_properties.rb'
    autoload :ClusterCreateParametersExtended,                    '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_create_parameters_extended.rb'
    autoload :OperationDisplay,                                   '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/operation_display.rb'
    autoload :QuotaInfo,                                          '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/quota_info.rb'
    autoload :ApplicationListResult,                              '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/application_list_result.rb'
    autoload :ConnectivityEndpoint,                               '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/connectivity_endpoint.rb'
    autoload :VersionSpec,                                        '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/version_spec.rb'
    autoload :VersionsCapability,                                 '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/versions_capability.rb'
    autoload :ExecuteScriptActionParameters,                      '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/execute_script_action_parameters.rb'
    autoload :RegionsCapability,                                  '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/regions_capability.rb'
    autoload :ScriptActionExecutionSummary,                       '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/script_action_execution_summary.rb'
    autoload :VmSizesCapability,                                  '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/vm_sizes_capability.rb'
    autoload :ClusterListRuntimeScriptActionDetailResult,         '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_list_runtime_script_action_detail_result.rb'
    autoload :VmSizeCompatibilityFilter,                          '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/vm_size_compatibility_filter.rb'
    autoload :ClusterResizeParameters,                            '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_resize_parameters.rb'
    autoload :RegionalQuotaCapability,                            '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/regional_quota_capability.rb'
    autoload :AutoscaleTimeAndCapacity,                           '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/autoscale_time_and_capacity.rb'
    autoload :QuotaCapability,                                    '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/quota_capability.rb'
    autoload :SshPublicKey,                                       '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/ssh_public_key.rb'
    autoload :CapabilitiesResult,                                 '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/capabilities_result.rb'
    autoload :ScriptAction,                                       '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/script_action.rb'
    autoload :LocalizedName,                                      '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/localized_name.rb'
    autoload :StorageProfile,                                     '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/storage_profile.rb'
    autoload :Usage,                                              '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/usage.rb'
    autoload :ClusterIdentity,                                    '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_identity.rb'
    autoload :UsagesListResult,                                   '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/usages_list_result.rb'
    autoload :Errors,                                             '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/errors.rb'
    autoload :VmSizeCompatibilityFilterV2,                        '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/vm_size_compatibility_filter_v2.rb'
    autoload :RuntimeScriptAction,                                '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/runtime_script_action.rb'
    autoload :BillingMeters,                                      '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/billing_meters.rb'
    autoload :ScriptActionsList,                                  '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/script_actions_list.rb'
    autoload :ClusterListResult,                                  '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_list_result.rb'
    autoload :DiskBillingMeters,                                  '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/disk_billing_meters.rb'
    autoload :AutoscaleCapacity,                                  '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/autoscale_capacity.rb'
    autoload :BillingResources,                                   '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/billing_resources.rb'
    autoload :ComputeProfile,                                     '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/compute_profile.rb'
    autoload :BillingResponseListResult,                          '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/billing_response_list_result.rb'
    autoload :ClusterPatchParameters,                             '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_patch_parameters.rb'
    autoload :ClusterConfigurations,                              '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_configurations.rb'
    autoload :ClusterListPersistedScriptActionsResult,            '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_list_persisted_script_actions_result.rb'
    autoload :Extension,                                          '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/extension.rb'
    autoload :LinuxOperatingSystemProfile,                        '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/linux_operating_system_profile.rb'
    autoload :ClusterMonitoringResponse,                          '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_monitoring_response.rb'
    autoload :ClusterGetProperties,                               '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_get_properties.rb'
    autoload :ClusterMonitoringRequest,                           '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_monitoring_request.rb'
    autoload :ClusterCreateProperties,                            '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_create_properties.rb'
    autoload :ScriptActionExecutionHistoryList,                   '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/script_action_execution_history_list.rb'
    autoload :ClusterDefinition,                                  '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster_definition.rb'
    autoload :ScriptActionPersistedGetResponseSpec,               '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/script_action_persisted_get_response_spec.rb'
    autoload :RuntimeScriptActionDetail,                          '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/runtime_script_action_detail.rb'
    autoload :TrackedResource,                                    '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/tracked_resource.rb'
    autoload :Cluster,                                            '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/cluster.rb'
    autoload :ProxyResource,                                      '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/proxy_resource.rb'
    autoload :Application,                                        '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/application.rb'
    autoload :DirectoryType,                                      '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/directory_type.rb'
    autoload :DaysOfWeek,                                         '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/days_of_week.rb'
    autoload :OSType,                                             '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/ostype.rb'
    autoload :Tier,                                               '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/tier.rb'
    autoload :JsonWebKeyEncryptionAlgorithm,                      '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/json_web_key_encryption_algorithm.rb'
    autoload :ResourceIdentityType,                               '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/resource_identity_type.rb'
    autoload :HDInsightClusterProvisioningState,                  '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/hdinsight_cluster_provisioning_state.rb'
    autoload :AsyncOperationState,                                '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/async_operation_state.rb'
    autoload :FilterMode,                                         '2015-03-01-preview/generated/azure_mgmt_hdinsight/models/filter_mode.rb'
  end
end