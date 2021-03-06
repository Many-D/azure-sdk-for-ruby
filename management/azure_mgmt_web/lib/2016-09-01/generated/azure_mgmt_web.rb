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
require '2016-09-01/generated/azure_mgmt_web/module_definition'
require 'ms_rest_azure'

module Azure::Web::Mgmt::V2016_09_01
  autoload :AppServiceEnvironments,                             '2016-09-01/generated/azure_mgmt_web/app_service_environments.rb'
  autoload :AppServicePlans,                                    '2016-09-01/generated/azure_mgmt_web/app_service_plans.rb'
  autoload :WebSiteManagementClient,                            '2016-09-01/generated/azure_mgmt_web/web_site_management_client.rb'

  module Models
    autoload :HostingEnvironmentProfile,                          '2016-09-01/generated/azure_mgmt_web/models/hosting_environment_profile.rb'
    autoload :VirtualIPMapping,                                   '2016-09-01/generated/azure_mgmt_web/models/virtual_ipmapping.rb'
    autoload :IpSecurityRestriction,                              '2016-09-01/generated/azure_mgmt_web/models/ip_security_restriction.rb'
    autoload :VirtualNetworkProfile,                              '2016-09-01/generated/azure_mgmt_web/models/virtual_network_profile.rb'
    autoload :ApiDefinitionInfo,                                  '2016-09-01/generated/azure_mgmt_web/models/api_definition_info.rb'
    autoload :StampCapacity,                                      '2016-09-01/generated/azure_mgmt_web/models/stamp_capacity.rb'
    autoload :CorsSettings,                                       '2016-09-01/generated/azure_mgmt_web/models/cors_settings.rb'
    autoload :NameValuePair,                                      '2016-09-01/generated/azure_mgmt_web/models/name_value_pair.rb'
    autoload :AutoHealCustomAction,                               '2016-09-01/generated/azure_mgmt_web/models/auto_heal_custom_action.rb'
    autoload :AppServiceEnvironmentCollection,                    '2016-09-01/generated/azure_mgmt_web/models/app_service_environment_collection.rb'
    autoload :AutoHealActions,                                    '2016-09-01/generated/azure_mgmt_web/models/auto_heal_actions.rb'
    autoload :HostingEnvironmentDiagnostics,                      '2016-09-01/generated/azure_mgmt_web/models/hosting_environment_diagnostics.rb'
    autoload :SlowRequestsBasedTrigger,                           '2016-09-01/generated/azure_mgmt_web/models/slow_requests_based_trigger.rb'
    autoload :SlotSwapStatus,                                     '2016-09-01/generated/azure_mgmt_web/models/slot_swap_status.rb'
    autoload :SkuCapacity,                                        '2016-09-01/generated/azure_mgmt_web/models/sku_capacity.rb'
    autoload :CloningInfo,                                        '2016-09-01/generated/azure_mgmt_web/models/cloning_info.rb'
    autoload :SkuDescription,                                     '2016-09-01/generated/azure_mgmt_web/models/sku_description.rb'
    autoload :AddressResponse,                                    '2016-09-01/generated/azure_mgmt_web/models/address_response.rb'
    autoload :SkuInfoCollection,                                  '2016-09-01/generated/azure_mgmt_web/models/sku_info_collection.rb'
    autoload :WorkerPool,                                         '2016-09-01/generated/azure_mgmt_web/models/worker_pool.rb'
    autoload :NetworkAccessControlEntry,                          '2016-09-01/generated/azure_mgmt_web/models/network_access_control_entry.rb'
    autoload :ResourceCollection,                                 '2016-09-01/generated/azure_mgmt_web/models/resource_collection.rb'
    autoload :WorkerPoolCollection,                               '2016-09-01/generated/azure_mgmt_web/models/worker_pool_collection.rb'
    autoload :HybridConnectionCollection,                         '2016-09-01/generated/azure_mgmt_web/models/hybrid_connection_collection.rb'
    autoload :Resource,                                           '2016-09-01/generated/azure_mgmt_web/models/resource.rb'
    autoload :ErrorEntity,                                        '2016-09-01/generated/azure_mgmt_web/models/error_entity.rb'
    autoload :ResourceMetricProperty,                             '2016-09-01/generated/azure_mgmt_web/models/resource_metric_property.rb'
    autoload :SnapshotRecoveryTarget,                             '2016-09-01/generated/azure_mgmt_web/models/snapshot_recovery_target.rb'
    autoload :MetricAvailabilily,                                 '2016-09-01/generated/azure_mgmt_web/models/metric_availabilily.rb'
    autoload :ResourceMetricAvailability,                         '2016-09-01/generated/azure_mgmt_web/models/resource_metric_availability.rb'
    autoload :ResourceMetric,                                     '2016-09-01/generated/azure_mgmt_web/models/resource_metric.rb'
    autoload :CsmUsageQuotaCollection,                            '2016-09-01/generated/azure_mgmt_web/models/csm_usage_quota_collection.rb'
    autoload :StatusCodesBasedTrigger,                            '2016-09-01/generated/azure_mgmt_web/models/status_codes_based_trigger.rb'
    autoload :LocalizableString,                                  '2016-09-01/generated/azure_mgmt_web/models/localizable_string.rb'
    autoload :RequestsBasedTrigger,                               '2016-09-01/generated/azure_mgmt_web/models/requests_based_trigger.rb'
    autoload :ResourceMetricCollection,                           '2016-09-01/generated/azure_mgmt_web/models/resource_metric_collection.rb'
    autoload :AutoHealTriggers,                                   '2016-09-01/generated/azure_mgmt_web/models/auto_heal_triggers.rb'
    autoload :ManagedServiceIdentity,                             '2016-09-01/generated/azure_mgmt_web/models/managed_service_identity.rb'
    autoload :AutoHealRules,                                      '2016-09-01/generated/azure_mgmt_web/models/auto_heal_rules.rb'
    autoload :SkuInfo,                                            '2016-09-01/generated/azure_mgmt_web/models/sku_info.rb'
    autoload :SiteLimits,                                         '2016-09-01/generated/azure_mgmt_web/models/site_limits.rb'
    autoload :UsageCollection,                                    '2016-09-01/generated/azure_mgmt_web/models/usage_collection.rb'
    autoload :RampUpRule,                                         '2016-09-01/generated/azure_mgmt_web/models/ramp_up_rule.rb'
    autoload :AppServicePlanCollection,                           '2016-09-01/generated/azure_mgmt_web/models/app_service_plan_collection.rb'
    autoload :Experiments,                                        '2016-09-01/generated/azure_mgmt_web/models/experiments.rb'
    autoload :ResourceMetricName,                                 '2016-09-01/generated/azure_mgmt_web/models/resource_metric_name.rb'
    autoload :VirtualDirectory,                                   '2016-09-01/generated/azure_mgmt_web/models/virtual_directory.rb'
    autoload :ResourceMetricDefinitionCollection,                 '2016-09-01/generated/azure_mgmt_web/models/resource_metric_definition_collection.rb'
    autoload :VirtualApplication,                                 '2016-09-01/generated/azure_mgmt_web/models/virtual_application.rb'
    autoload :Capability,                                         '2016-09-01/generated/azure_mgmt_web/models/capability.rb'
    autoload :HandlerMapping,                                     '2016-09-01/generated/azure_mgmt_web/models/handler_mapping.rb'
    autoload :Operation,                                          '2016-09-01/generated/azure_mgmt_web/models/operation.rb'
    autoload :SiteMachineKey,                                     '2016-09-01/generated/azure_mgmt_web/models/site_machine_key.rb'
    autoload :CsmUsageQuota,                                      '2016-09-01/generated/azure_mgmt_web/models/csm_usage_quota.rb'
    autoload :ConnStringInfo,                                     '2016-09-01/generated/azure_mgmt_web/models/conn_string_info.rb'
    autoload :StampCapacityCollection,                            '2016-09-01/generated/azure_mgmt_web/models/stamp_capacity_collection.rb'
    autoload :SiteConfig,                                         '2016-09-01/generated/azure_mgmt_web/models/site_config.rb'
    autoload :ProxyOnlyResource,                                  '2016-09-01/generated/azure_mgmt_web/models/proxy_only_resource.rb'
    autoload :HostNameSslState,                                   '2016-09-01/generated/azure_mgmt_web/models/host_name_ssl_state.rb'
    autoload :WebAppCollection,                                   '2016-09-01/generated/azure_mgmt_web/models/web_app_collection.rb'
    autoload :ResourceMetricValue,                                '2016-09-01/generated/azure_mgmt_web/models/resource_metric_value.rb'
    autoload :AppServiceEnvironmentResource,                      '2016-09-01/generated/azure_mgmt_web/models/app_service_environment_resource.rb'
    autoload :AppServiceEnvironmentPatchResource,                 '2016-09-01/generated/azure_mgmt_web/models/app_service_environment_patch_resource.rb'
    autoload :MetricDefinition,                                   '2016-09-01/generated/azure_mgmt_web/models/metric_definition.rb'
    autoload :Usage,                                              '2016-09-01/generated/azure_mgmt_web/models/usage.rb'
    autoload :WorkerPoolResource,                                 '2016-09-01/generated/azure_mgmt_web/models/worker_pool_resource.rb'
    autoload :VnetRoute,                                          '2016-09-01/generated/azure_mgmt_web/models/vnet_route.rb'
    autoload :VnetInfo,                                           '2016-09-01/generated/azure_mgmt_web/models/vnet_info.rb'
    autoload :VnetGateway,                                        '2016-09-01/generated/azure_mgmt_web/models/vnet_gateway.rb'
    autoload :User,                                               '2016-09-01/generated/azure_mgmt_web/models/user.rb'
    autoload :SnapshotRecoveryRequest,                            '2016-09-01/generated/azure_mgmt_web/models/snapshot_recovery_request.rb'
    autoload :ResourceMetricDefinition,                           '2016-09-01/generated/azure_mgmt_web/models/resource_metric_definition.rb'
    autoload :PushSettings,                                       '2016-09-01/generated/azure_mgmt_web/models/push_settings.rb'
    autoload :Identifier,                                         '2016-09-01/generated/azure_mgmt_web/models/identifier.rb'
    autoload :HybridConnectionKey,                                '2016-09-01/generated/azure_mgmt_web/models/hybrid_connection_key.rb'
    autoload :HybridConnection,                                   '2016-09-01/generated/azure_mgmt_web/models/hybrid_connection.rb'
    autoload :Site,                                               '2016-09-01/generated/azure_mgmt_web/models/site.rb'
    autoload :AppServicePlan,                                     '2016-09-01/generated/azure_mgmt_web/models/app_service_plan.rb'
    autoload :AppServicePlanPatchResource,                        '2016-09-01/generated/azure_mgmt_web/models/app_service_plan_patch_resource.rb'
    autoload :HybridConnectionLimits,                             '2016-09-01/generated/azure_mgmt_web/models/hybrid_connection_limits.rb'
    autoload :ProvisioningState,                                  '2016-09-01/generated/azure_mgmt_web/models/provisioning_state.rb'
    autoload :HostingEnvironmentStatus,                           '2016-09-01/generated/azure_mgmt_web/models/hosting_environment_status.rb'
    autoload :InternalLoadBalancingMode,                          '2016-09-01/generated/azure_mgmt_web/models/internal_load_balancing_mode.rb'
    autoload :ComputeModeOptions,                                 '2016-09-01/generated/azure_mgmt_web/models/compute_mode_options.rb'
    autoload :WorkerSizeOptions,                                  '2016-09-01/generated/azure_mgmt_web/models/worker_size_options.rb'
    autoload :AccessControlEntryAction,                           '2016-09-01/generated/azure_mgmt_web/models/access_control_entry_action.rb'
    autoload :RouteType,                                          '2016-09-01/generated/azure_mgmt_web/models/route_type.rb'
    autoload :ManagedServiceIdentityType,                         '2016-09-01/generated/azure_mgmt_web/models/managed_service_identity_type.rb'
    autoload :AutoHealActionType,                                 '2016-09-01/generated/azure_mgmt_web/models/auto_heal_action_type.rb'
    autoload :ConnectionStringType,                               '2016-09-01/generated/azure_mgmt_web/models/connection_string_type.rb'
    autoload :ScmType,                                            '2016-09-01/generated/azure_mgmt_web/models/scm_type.rb'
    autoload :ManagedPipelineMode,                                '2016-09-01/generated/azure_mgmt_web/models/managed_pipeline_mode.rb'
    autoload :SiteLoadBalancing,                                  '2016-09-01/generated/azure_mgmt_web/models/site_load_balancing.rb'
    autoload :SupportedTlsVersions,                               '2016-09-01/generated/azure_mgmt_web/models/supported_tls_versions.rb'
    autoload :SslState,                                           '2016-09-01/generated/azure_mgmt_web/models/ssl_state.rb'
    autoload :HostType,                                           '2016-09-01/generated/azure_mgmt_web/models/host_type.rb'
    autoload :UsageState,                                         '2016-09-01/generated/azure_mgmt_web/models/usage_state.rb'
    autoload :SiteAvailabilityState,                              '2016-09-01/generated/azure_mgmt_web/models/site_availability_state.rb'
    autoload :StatusOptions,                                      '2016-09-01/generated/azure_mgmt_web/models/status_options.rb'
    autoload :OperationStatus,                                    '2016-09-01/generated/azure_mgmt_web/models/operation_status.rb'
  end
end
