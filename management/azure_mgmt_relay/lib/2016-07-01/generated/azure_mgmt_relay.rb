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
require '2016-07-01/generated/azure_mgmt_relay/module_definition'
require 'ms_rest_azure'

module Azure::Relay::Mgmt::V2016_07_01
  autoload :Operations,                                         '2016-07-01/generated/azure_mgmt_relay/operations.rb'
  autoload :Namespaces,                                         '2016-07-01/generated/azure_mgmt_relay/namespaces.rb'
  autoload :HybridConnections,                                  '2016-07-01/generated/azure_mgmt_relay/hybrid_connections.rb'
  autoload :WCFRelays,                                          '2016-07-01/generated/azure_mgmt_relay/wcfrelays.rb'
  autoload :RelayManagementClient,                              '2016-07-01/generated/azure_mgmt_relay/relay_management_client.rb'

  module Models
    autoload :AuthorizationRuleListResult,                        '2016-07-01/generated/azure_mgmt_relay/models/authorization_rule_list_result.rb'
    autoload :RelayNamespaceListResult,                           '2016-07-01/generated/azure_mgmt_relay/models/relay_namespace_list_result.rb'
    autoload :Resource,                                           '2016-07-01/generated/azure_mgmt_relay/models/resource.rb'
    autoload :OperationDisplay,                                   '2016-07-01/generated/azure_mgmt_relay/models/operation_display.rb'
    autoload :HybridConnectionListResult,                         '2016-07-01/generated/azure_mgmt_relay/models/hybrid_connection_list_result.rb'
    autoload :RelayNamespaceUpdateParameter,                      '2016-07-01/generated/azure_mgmt_relay/models/relay_namespace_update_parameter.rb'
    autoload :WcfRelaysListResult,                                '2016-07-01/generated/azure_mgmt_relay/models/wcf_relays_list_result.rb'
    autoload :AuthorizationRuleKeys,                              '2016-07-01/generated/azure_mgmt_relay/models/authorization_rule_keys.rb'
    autoload :Operation,                                          '2016-07-01/generated/azure_mgmt_relay/models/operation.rb'
    autoload :RegenerateKeysParameters,                           '2016-07-01/generated/azure_mgmt_relay/models/regenerate_keys_parameters.rb'
    autoload :OperationListResult,                                '2016-07-01/generated/azure_mgmt_relay/models/operation_list_result.rb'
    autoload :ErrorResponse,                                      '2016-07-01/generated/azure_mgmt_relay/models/error_response.rb'
    autoload :CheckNameAvailability,                              '2016-07-01/generated/azure_mgmt_relay/models/check_name_availability.rb'
    autoload :Sku,                                                '2016-07-01/generated/azure_mgmt_relay/models/sku.rb'
    autoload :CheckNameAvailabilityResult,                        '2016-07-01/generated/azure_mgmt_relay/models/check_name_availability_result.rb'
    autoload :TrackedResource,                                    '2016-07-01/generated/azure_mgmt_relay/models/tracked_resource.rb'
    autoload :HybridConnection,                                   '2016-07-01/generated/azure_mgmt_relay/models/hybrid_connection.rb'
    autoload :WcfRelay,                                           '2016-07-01/generated/azure_mgmt_relay/models/wcf_relay.rb'
    autoload :RelayNamespace,                                     '2016-07-01/generated/azure_mgmt_relay/models/relay_namespace.rb'
    autoload :AuthorizationRule,                                  '2016-07-01/generated/azure_mgmt_relay/models/authorization_rule.rb'
    autoload :Relaytype,                                          '2016-07-01/generated/azure_mgmt_relay/models/relaytype.rb'
    autoload :AccessRights,                                       '2016-07-01/generated/azure_mgmt_relay/models/access_rights.rb'
    autoload :PolicyKey,                                          '2016-07-01/generated/azure_mgmt_relay/models/policy_key.rb'
    autoload :UnavailableReason,                                  '2016-07-01/generated/azure_mgmt_relay/models/unavailable_reason.rb'
  end
end
