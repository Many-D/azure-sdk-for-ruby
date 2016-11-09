# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
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
require 'generated/azure_mgmt_commerce/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Commerce
  autoload :UsageAggregates,                                    'generated/azure_mgmt_commerce/usage_aggregates.rb'
  autoload :RateCard,                                           'generated/azure_mgmt_commerce/rate_card.rb'
  autoload :UsageManagementClient,                              'generated/azure_mgmt_commerce/usage_management_client.rb'

  module Models
    autoload :OfferTermInfo,                                      'generated/azure_mgmt_commerce/models/offer_term_info.rb'
    autoload :MeterInfo,                                          'generated/azure_mgmt_commerce/models/meter_info.rb'
    autoload :UsageAggregation,                                   'generated/azure_mgmt_commerce/models/usage_aggregation.rb'
    autoload :InfoField,                                          'generated/azure_mgmt_commerce/models/info_field.rb'
    autoload :UsageAggregationListResult,                         'generated/azure_mgmt_commerce/models/usage_aggregation_list_result.rb'
    autoload :ResourceRateCardInfo,                               'generated/azure_mgmt_commerce/models/resource_rate_card_info.rb'
    autoload :RateCardQueryParameters,                            'generated/azure_mgmt_commerce/models/rate_card_query_parameters.rb'
    autoload :ErrorResponse,                                      'generated/azure_mgmt_commerce/models/error_response.rb'
    autoload :MonetaryCredit,                                     'generated/azure_mgmt_commerce/models/monetary_credit.rb'
    autoload :MonetaryCommitment,                                 'generated/azure_mgmt_commerce/models/monetary_commitment.rb'
    autoload :RecurringCharge,                                    'generated/azure_mgmt_commerce/models/recurring_charge.rb'
    autoload :AggregationGranularity,                             'generated/azure_mgmt_commerce/models/aggregation_granularity.rb'
  end
end
