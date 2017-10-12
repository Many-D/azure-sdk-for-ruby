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
require '2017-07-14/generated/azure_mgmt_analysis_services/module_definition'
require 'ms_rest_azure'

module Azure::AnalysisServices::Mgmt::V2017_07_14
  autoload :Servers,                                            '2017-07-14/generated/azure_mgmt_analysis_services/servers.rb'
  autoload :AnalysisServicesManagementClient,                   '2017-07-14/generated/azure_mgmt_analysis_services/analysis_services_management_client.rb'

  module Models
    autoload :AnalysisServicesServerUpdateParameters,             '2017-07-14/generated/azure_mgmt_analysis_services/models/analysis_services_server_update_parameters.rb'
    autoload :GatewayListStatusLive,                              '2017-07-14/generated/azure_mgmt_analysis_services/models/gateway_list_status_live.rb'
    autoload :Resource,                                           '2017-07-14/generated/azure_mgmt_analysis_services/models/resource.rb'
    autoload :GatewayError,                                       '2017-07-14/generated/azure_mgmt_analysis_services/models/gateway_error.rb'
    autoload :AnalysisServicesServers,                            '2017-07-14/generated/azure_mgmt_analysis_services/models/analysis_services_servers.rb'
    autoload :GatewayListStatusError,                             '2017-07-14/generated/azure_mgmt_analysis_services/models/gateway_list_status_error.rb'
    autoload :GatewayDetails,                                     '2017-07-14/generated/azure_mgmt_analysis_services/models/gateway_details.rb'
    autoload :SkuEnumerationForNewResourceResult,                 '2017-07-14/generated/azure_mgmt_analysis_services/models/sku_enumeration_for_new_resource_result.rb'
    autoload :ServerAdministrators,                               '2017-07-14/generated/azure_mgmt_analysis_services/models/server_administrators.rb'
    autoload :SkuDetailsForExistingResource,                      '2017-07-14/generated/azure_mgmt_analysis_services/models/sku_details_for_existing_resource.rb'
    autoload :ResourceSku,                                        '2017-07-14/generated/azure_mgmt_analysis_services/models/resource_sku.rb'
    autoload :SkuEnumerationForExistingResourceResult,            '2017-07-14/generated/azure_mgmt_analysis_services/models/sku_enumeration_for_existing_resource_result.rb'
    autoload :AnalysisServicesServer,                             '2017-07-14/generated/azure_mgmt_analysis_services/models/analysis_services_server.rb'
    autoload :SkuTier,                                            '2017-07-14/generated/azure_mgmt_analysis_services/models/sku_tier.rb'
    autoload :State,                                              '2017-07-14/generated/azure_mgmt_analysis_services/models/state.rb'
    autoload :ProvisioningState,                                  '2017-07-14/generated/azure_mgmt_analysis_services/models/provisioning_state.rb'
    autoload :Status,                                             '2017-07-14/generated/azure_mgmt_analysis_services/models/status.rb'
  end
end
