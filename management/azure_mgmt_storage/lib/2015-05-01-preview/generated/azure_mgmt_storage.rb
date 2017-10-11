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
require '2015-05-01-preview/generated/azure_mgmt_storage/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Storage::Api_2015_05_01_preview
  autoload :StorageAccounts,                                    '2015-05-01-preview/generated/azure_mgmt_storage/storage_accounts.rb'
  autoload :UsageOperations,                                    '2015-05-01-preview/generated/azure_mgmt_storage/usage_operations.rb'
  autoload :StorageManagementClient,                            '2015-05-01-preview/generated/azure_mgmt_storage/storage_management_client.rb'

  module Models
    autoload :StorageAccountListResult,                           '2015-05-01-preview/generated/azure_mgmt_storage/models/storage_account_list_result.rb'
    autoload :StorageAccountCheckNameAvailabilityParameters,      '2015-05-01-preview/generated/azure_mgmt_storage/models/storage_account_check_name_availability_parameters.rb'
    autoload :CheckNameAvailabilityResult,                        '2015-05-01-preview/generated/azure_mgmt_storage/models/check_name_availability_result.rb'
    autoload :Resource,                                           '2015-05-01-preview/generated/azure_mgmt_storage/models/resource.rb'
    autoload :CustomDomain,                                       '2015-05-01-preview/generated/azure_mgmt_storage/models/custom_domain.rb'
    autoload :StorageAccountRegenerateKeyParameters,              '2015-05-01-preview/generated/azure_mgmt_storage/models/storage_account_regenerate_key_parameters.rb'
    autoload :StorageAccountKeys,                                 '2015-05-01-preview/generated/azure_mgmt_storage/models/storage_account_keys.rb'
    autoload :UsageName,                                          '2015-05-01-preview/generated/azure_mgmt_storage/models/usage_name.rb'
    autoload :SubResource,                                        '2015-05-01-preview/generated/azure_mgmt_storage/models/sub_resource.rb'
    autoload :Usage,                                              '2015-05-01-preview/generated/azure_mgmt_storage/models/usage.rb'
    autoload :Endpoints,                                          '2015-05-01-preview/generated/azure_mgmt_storage/models/endpoints.rb'
    autoload :UsageListResult,                                    '2015-05-01-preview/generated/azure_mgmt_storage/models/usage_list_result.rb'
    autoload :StorageAccountCreateParameters,                     '2015-05-01-preview/generated/azure_mgmt_storage/models/storage_account_create_parameters.rb'
    autoload :StorageAccount,                                     '2015-05-01-preview/generated/azure_mgmt_storage/models/storage_account.rb'
    autoload :StorageAccountUpdateParameters,                     '2015-05-01-preview/generated/azure_mgmt_storage/models/storage_account_update_parameters.rb'
    autoload :Reason,                                             '2015-05-01-preview/generated/azure_mgmt_storage/models/reason.rb'
    autoload :AccountType,                                        '2015-05-01-preview/generated/azure_mgmt_storage/models/account_type.rb'
    autoload :ProvisioningState,                                  '2015-05-01-preview/generated/azure_mgmt_storage/models/provisioning_state.rb'
    autoload :AccountStatus,                                      '2015-05-01-preview/generated/azure_mgmt_storage/models/account_status.rb'
    autoload :KeyName,                                            '2015-05-01-preview/generated/azure_mgmt_storage/models/key_name.rb'
    autoload :UsageUnit,                                          '2015-05-01-preview/generated/azure_mgmt_storage/models/usage_unit.rb'
  end
end
