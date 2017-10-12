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
require '2016-11-01/generated/azure_mgmt_datalake_store/module_definition'
require 'ms_rest_azure'

module Azure::DataLakeStore::Mgmt::V2016_11_01
  autoload :FirewallRules,                                      '2016-11-01/generated/azure_mgmt_datalake_store/firewall_rules.rb'
  autoload :TrustedIdProviders,                                 '2016-11-01/generated/azure_mgmt_datalake_store/trusted_id_providers.rb'
  autoload :Account,                                            '2016-11-01/generated/azure_mgmt_datalake_store/account.rb'
  autoload :DataLakeStoreAccountManagementClient,               '2016-11-01/generated/azure_mgmt_datalake_store/data_lake_store_account_management_client.rb'

  module Models
    autoload :UpdateKeyVaultMetaInfo,                             '2016-11-01/generated/azure_mgmt_datalake_store/models/update_key_vault_meta_info.rb'
    autoload :UpdateFirewallRuleParameters,                       '2016-11-01/generated/azure_mgmt_datalake_store/models/update_firewall_rule_parameters.rb'
    autoload :UpdateEncryptionConfig,                             '2016-11-01/generated/azure_mgmt_datalake_store/models/update_encryption_config.rb'
    autoload :UpdateTrustedIdProviderParameters,                  '2016-11-01/generated/azure_mgmt_datalake_store/models/update_trusted_id_provider_parameters.rb'
    autoload :DataLakeStoreAccountUpdateParameters,               '2016-11-01/generated/azure_mgmt_datalake_store/models/data_lake_store_account_update_parameters.rb'
    autoload :DataLakeStoreTrustedIdProviderListResult,           '2016-11-01/generated/azure_mgmt_datalake_store/models/data_lake_store_trusted_id_provider_list_result.rb'
    autoload :DataLakeStoreFirewallRuleListResult,                '2016-11-01/generated/azure_mgmt_datalake_store/models/data_lake_store_firewall_rule_list_result.rb'
    autoload :EncryptionIdentity,                                 '2016-11-01/generated/azure_mgmt_datalake_store/models/encryption_identity.rb'
    autoload :EncryptionConfig,                                   '2016-11-01/generated/azure_mgmt_datalake_store/models/encryption_config.rb'
    autoload :SubResource,                                        '2016-11-01/generated/azure_mgmt_datalake_store/models/sub_resource.rb'
    autoload :Resource,                                           '2016-11-01/generated/azure_mgmt_datalake_store/models/resource.rb'
    autoload :KeyVaultMetaInfo,                                   '2016-11-01/generated/azure_mgmt_datalake_store/models/key_vault_meta_info.rb'
    autoload :DataLakeStoreAccountListResult,                     '2016-11-01/generated/azure_mgmt_datalake_store/models/data_lake_store_account_list_result.rb'
    autoload :ErrorDetails,                                       '2016-11-01/generated/azure_mgmt_datalake_store/models/error_details.rb'
    autoload :FirewallRule,                                       '2016-11-01/generated/azure_mgmt_datalake_store/models/firewall_rule.rb'
    autoload :TrustedIdProvider,                                  '2016-11-01/generated/azure_mgmt_datalake_store/models/trusted_id_provider.rb'
    autoload :DataLakeStoreAccount,                               '2016-11-01/generated/azure_mgmt_datalake_store/models/data_lake_store_account.rb'
    autoload :DataLakeStoreAccountBasic,                          '2016-11-01/generated/azure_mgmt_datalake_store/models/data_lake_store_account_basic.rb'
    autoload :EncryptionConfigType,                               '2016-11-01/generated/azure_mgmt_datalake_store/models/encryption_config_type.rb'
    autoload :EncryptionState,                                    '2016-11-01/generated/azure_mgmt_datalake_store/models/encryption_state.rb'
    autoload :EncryptionProvisioningState,                        '2016-11-01/generated/azure_mgmt_datalake_store/models/encryption_provisioning_state.rb'
    autoload :FirewallState,                                      '2016-11-01/generated/azure_mgmt_datalake_store/models/firewall_state.rb'
    autoload :TrustedIdProviderState,                             '2016-11-01/generated/azure_mgmt_datalake_store/models/trusted_id_provider_state.rb'
    autoload :TierType,                                           '2016-11-01/generated/azure_mgmt_datalake_store/models/tier_type.rb'
    autoload :FirewallAllowAzureIpsState,                         '2016-11-01/generated/azure_mgmt_datalake_store/models/firewall_allow_azure_ips_state.rb'
    autoload :DataLakeStoreAccountStatus,                         '2016-11-01/generated/azure_mgmt_datalake_store/models/data_lake_store_account_status.rb'
    autoload :DataLakeStoreAccountState,                          '2016-11-01/generated/azure_mgmt_datalake_store/models/data_lake_store_account_state.rb'
  end
end
