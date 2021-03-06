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
require '2020-05-01/generated/azure_mgmt_signalr/module_definition'
require 'ms_rest_azure'

module Azure::Signalr::Mgmt::V2020_05_01
  autoload :Operations,                                         '2020-05-01/generated/azure_mgmt_signalr/operations.rb'
  autoload :SignalR,                                            '2020-05-01/generated/azure_mgmt_signalr/signal_r.rb'
  autoload :SignalRPrivateEndpointConnections,                  '2020-05-01/generated/azure_mgmt_signalr/signal_rprivate_endpoint_connections.rb'
  autoload :SignalRPrivateLinkResources,                        '2020-05-01/generated/azure_mgmt_signalr/signal_rprivate_link_resources.rb'
  autoload :Usages,                                             '2020-05-01/generated/azure_mgmt_signalr/usages.rb'
  autoload :SignalRManagementClient,                            '2020-05-01/generated/azure_mgmt_signalr/signal_rmanagement_client.rb'

  module Models
    autoload :SignalRKeys,                                        '2020-05-01/generated/azure_mgmt_signalr/models/signal_rkeys.rb'
    autoload :OperationDisplay,                                   '2020-05-01/generated/azure_mgmt_signalr/models/operation_display.rb'
    autoload :MetricSpecification,                                '2020-05-01/generated/azure_mgmt_signalr/models/metric_specification.rb'
    autoload :SignalRResourceList,                                '2020-05-01/generated/azure_mgmt_signalr/models/signal_rresource_list.rb'
    autoload :ServiceSpecification,                               '2020-05-01/generated/azure_mgmt_signalr/models/service_specification.rb'
    autoload :SignalRUsageList,                                   '2020-05-01/generated/azure_mgmt_signalr/models/signal_rusage_list.rb'
    autoload :Operation,                                          '2020-05-01/generated/azure_mgmt_signalr/models/operation.rb'
    autoload :Resource,                                           '2020-05-01/generated/azure_mgmt_signalr/models/resource.rb'
    autoload :ErrorResponseBody,                                  '2020-05-01/generated/azure_mgmt_signalr/models/error_response_body.rb'
    autoload :SignalRFeature,                                     '2020-05-01/generated/azure_mgmt_signalr/models/signal_rfeature.rb'
    autoload :NameAvailabilityParameters,                         '2020-05-01/generated/azure_mgmt_signalr/models/name_availability_parameters.rb'
    autoload :SignalRCorsSettings,                                '2020-05-01/generated/azure_mgmt_signalr/models/signal_rcors_settings.rb'
    autoload :ResourceSku,                                        '2020-05-01/generated/azure_mgmt_signalr/models/resource_sku.rb'
    autoload :UpstreamTemplate,                                   '2020-05-01/generated/azure_mgmt_signalr/models/upstream_template.rb'
    autoload :PrivateLinkServiceConnectionState,                  '2020-05-01/generated/azure_mgmt_signalr/models/private_link_service_connection_state.rb'
    autoload :ServerlessUpstreamSettings,                         '2020-05-01/generated/azure_mgmt_signalr/models/serverless_upstream_settings.rb'
    autoload :LogSpecification,                                   '2020-05-01/generated/azure_mgmt_signalr/models/log_specification.rb'
    autoload :NetworkACL,                                         '2020-05-01/generated/azure_mgmt_signalr/models/network_acl.rb'
    autoload :OperationList,                                      '2020-05-01/generated/azure_mgmt_signalr/models/operation_list.rb'
    autoload :SignalRUsage,                                       '2020-05-01/generated/azure_mgmt_signalr/models/signal_rusage.rb'
    autoload :NameAvailability,                                   '2020-05-01/generated/azure_mgmt_signalr/models/name_availability.rb'
    autoload :SignalRNetworkACLs,                                 '2020-05-01/generated/azure_mgmt_signalr/models/signal_rnetwork_acls.rb'
    autoload :Dimension,                                          '2020-05-01/generated/azure_mgmt_signalr/models/dimension.rb'
    autoload :SignalRCreateOrUpdateProperties,                    '2020-05-01/generated/azure_mgmt_signalr/models/signal_rcreate_or_update_properties.rb'
    autoload :ErrorResponse,                                      '2020-05-01/generated/azure_mgmt_signalr/models/error_response.rb'
    autoload :SignalRUsageName,                                   '2020-05-01/generated/azure_mgmt_signalr/models/signal_rusage_name.rb'
    autoload :OperationProperties,                                '2020-05-01/generated/azure_mgmt_signalr/models/operation_properties.rb'
    autoload :RegenerateKeyParameters,                            '2020-05-01/generated/azure_mgmt_signalr/models/regenerate_key_parameters.rb'
    autoload :PrivateEndpoint,                                    '2020-05-01/generated/azure_mgmt_signalr/models/private_endpoint.rb'
    autoload :PrivateLinkResourceList,                            '2020-05-01/generated/azure_mgmt_signalr/models/private_link_resource_list.rb'
    autoload :PrivateEndpointConnection,                          '2020-05-01/generated/azure_mgmt_signalr/models/private_endpoint_connection.rb'
    autoload :TrackedResource,                                    '2020-05-01/generated/azure_mgmt_signalr/models/tracked_resource.rb'
    autoload :SignalRResource,                                    '2020-05-01/generated/azure_mgmt_signalr/models/signal_rresource.rb'
    autoload :PrivateEndpointACL,                                 '2020-05-01/generated/azure_mgmt_signalr/models/private_endpoint_acl.rb'
    autoload :ProxyResource,                                      '2020-05-01/generated/azure_mgmt_signalr/models/proxy_resource.rb'
    autoload :PrivateLinkResource,                                '2020-05-01/generated/azure_mgmt_signalr/models/private_link_resource.rb'
    autoload :SignalRSkuTier,                                     '2020-05-01/generated/azure_mgmt_signalr/models/signal_rsku_tier.rb'
    autoload :ProvisioningState,                                  '2020-05-01/generated/azure_mgmt_signalr/models/provisioning_state.rb'
    autoload :PrivateLinkServiceConnectionStatus,                 '2020-05-01/generated/azure_mgmt_signalr/models/private_link_service_connection_status.rb'
    autoload :ServiceKind,                                        '2020-05-01/generated/azure_mgmt_signalr/models/service_kind.rb'
    autoload :FeatureFlags,                                       '2020-05-01/generated/azure_mgmt_signalr/models/feature_flags.rb'
    autoload :ACLAction,                                          '2020-05-01/generated/azure_mgmt_signalr/models/aclaction.rb'
    autoload :SignalRRequestType,                                 '2020-05-01/generated/azure_mgmt_signalr/models/signal_rrequest_type.rb'
    autoload :KeyType,                                            '2020-05-01/generated/azure_mgmt_signalr/models/key_type.rb'
  end
end
