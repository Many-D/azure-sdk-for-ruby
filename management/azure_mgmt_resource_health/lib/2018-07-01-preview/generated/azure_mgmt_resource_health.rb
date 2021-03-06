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
require '2018-07-01-preview/generated/azure_mgmt_resource_health/module_definition'
require 'ms_rest_azure'

module Azure::ResourceHealth::Mgmt::V2018_08_01_preview
  autoload :Metadata,                                           '2018-07-01-preview/generated/azure_mgmt_resource_health/metadata.rb'
  autoload :EventsOperations,                                   '2018-07-01-preview/generated/azure_mgmt_resource_health/events_operations.rb'
  autoload :ImpactedResources,                                  '2018-07-01-preview/generated/azure_mgmt_resource_health/impacted_resources.rb'
  autoload :AvailabilityStatuses,                               '2018-07-01-preview/generated/azure_mgmt_resource_health/availability_statuses.rb'
  autoload :Operations,                                         '2018-07-01-preview/generated/azure_mgmt_resource_health/operations.rb'
  autoload :ResourceHealthClient,                               '2018-07-01-preview/generated/azure_mgmt_resource_health/resource_health_client.rb'

  module Models
    autoload :ServiceImpactingEventIncidentProperties,            '2018-07-01-preview/generated/azure_mgmt_resource_health/models/service_impacting_event_incident_properties.rb'
    autoload :EventPropertiesArticle,                             '2018-07-01-preview/generated/azure_mgmt_resource_health/models/event_properties_article.rb'
    autoload :ServiceImpactingEvent,                              '2018-07-01-preview/generated/azure_mgmt_resource_health/models/service_impacting_event.rb'
    autoload :Link,                                               '2018-07-01-preview/generated/azure_mgmt_resource_health/models/link.rb'
    autoload :AvailabilityStatusProperties,                       '2018-07-01-preview/generated/azure_mgmt_resource_health/models/availability_status_properties.rb'
    autoload :ImpactedServiceRegion,                              '2018-07-01-preview/generated/azure_mgmt_resource_health/models/impacted_service_region.rb'
    autoload :AvailabilityStatus,                                 '2018-07-01-preview/generated/azure_mgmt_resource_health/models/availability_status.rb'
    autoload :EventPropertiesRecommendedActionsActionsItem,       '2018-07-01-preview/generated/azure_mgmt_resource_health/models/event_properties_recommended_actions_actions_item.rb'
    autoload :AvailabilityStatusListResult,                       '2018-07-01-preview/generated/azure_mgmt_resource_health/models/availability_status_list_result.rb'
    autoload :Faq,                                                '2018-07-01-preview/generated/azure_mgmt_resource_health/models/faq.rb'
    autoload :OperationDisplay,                                   '2018-07-01-preview/generated/azure_mgmt_resource_health/models/operation_display.rb'
    autoload :Events,                                             '2018-07-01-preview/generated/azure_mgmt_resource_health/models/events.rb'
    autoload :Operation,                                          '2018-07-01-preview/generated/azure_mgmt_resource_health/models/operation.rb'
    autoload :ImpactedResourceListResult,                         '2018-07-01-preview/generated/azure_mgmt_resource_health/models/impacted_resource_list_result.rb'
    autoload :OperationListResult,                                '2018-07-01-preview/generated/azure_mgmt_resource_health/models/operation_list_result.rb'
    autoload :RecommendedAction,                                  '2018-07-01-preview/generated/azure_mgmt_resource_health/models/recommended_action.rb'
    autoload :ErrorResponse,                                      '2018-07-01-preview/generated/azure_mgmt_resource_health/models/error_response.rb'
    autoload :LinkDisplayText,                                    '2018-07-01-preview/generated/azure_mgmt_resource_health/models/link_display_text.rb'
    autoload :MetadataSupportedValueDetail,                       '2018-07-01-preview/generated/azure_mgmt_resource_health/models/metadata_supported_value_detail.rb'
    autoload :Impact,                                             '2018-07-01-preview/generated/azure_mgmt_resource_health/models/impact.rb'
    autoload :Update,                                             '2018-07-01-preview/generated/azure_mgmt_resource_health/models/update.rb'
    autoload :ServiceImpactingEventStatus,                        '2018-07-01-preview/generated/azure_mgmt_resource_health/models/service_impacting_event_status.rb'
    autoload :MetadataEntityListResult,                           '2018-07-01-preview/generated/azure_mgmt_resource_health/models/metadata_entity_list_result.rb'
    autoload :AvailabilityStatusPropertiesRecentlyResolved,       '2018-07-01-preview/generated/azure_mgmt_resource_health/models/availability_status_properties_recently_resolved.rb'
    autoload :EventPropertiesRecommendedActions,                  '2018-07-01-preview/generated/azure_mgmt_resource_health/models/event_properties_recommended_actions.rb'
    autoload :Resource,                                           '2018-07-01-preview/generated/azure_mgmt_resource_health/models/resource.rb'
    autoload :Event,                                              '2018-07-01-preview/generated/azure_mgmt_resource_health/models/event.rb'
    autoload :ImpactedResourceStatus,                             '2018-07-01-preview/generated/azure_mgmt_resource_health/models/impacted_resource_status.rb'
    autoload :MetadataEntity,                                     '2018-07-01-preview/generated/azure_mgmt_resource_health/models/metadata_entity.rb'
    autoload :ProxyResource,                                      '2018-07-01-preview/generated/azure_mgmt_resource_health/models/proxy_resource.rb'
    autoload :TrackedResource,                                    '2018-07-01-preview/generated/azure_mgmt_resource_health/models/tracked_resource.rb'
    autoload :AzureEntityResource,                                '2018-07-01-preview/generated/azure_mgmt_resource_health/models/azure_entity_resource.rb'
    autoload :EventTypeValues,                                    '2018-07-01-preview/generated/azure_mgmt_resource_health/models/event_type_values.rb'
    autoload :EventSourceValues,                                  '2018-07-01-preview/generated/azure_mgmt_resource_health/models/event_source_values.rb'
    autoload :EventStatusValues,                                  '2018-07-01-preview/generated/azure_mgmt_resource_health/models/event_status_values.rb'
    autoload :LevelValues,                                        '2018-07-01-preview/generated/azure_mgmt_resource_health/models/level_values.rb'
    autoload :EventLevelValues,                                   '2018-07-01-preview/generated/azure_mgmt_resource_health/models/event_level_values.rb'
    autoload :LinkTypeValues,                                     '2018-07-01-preview/generated/azure_mgmt_resource_health/models/link_type_values.rb'
    autoload :AvailabilityStateValues,                            '2018-07-01-preview/generated/azure_mgmt_resource_health/models/availability_state_values.rb'
    autoload :ReasonTypeValues,                                   '2018-07-01-preview/generated/azure_mgmt_resource_health/models/reason_type_values.rb'
    autoload :ReasonChronicityTypes,                              '2018-07-01-preview/generated/azure_mgmt_resource_health/models/reason_chronicity_types.rb'
    autoload :Scenario,                                           '2018-07-01-preview/generated/azure_mgmt_resource_health/models/scenario.rb'
  end
end
