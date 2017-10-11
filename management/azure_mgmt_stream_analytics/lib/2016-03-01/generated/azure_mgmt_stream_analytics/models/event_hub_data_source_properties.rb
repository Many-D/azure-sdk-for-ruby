# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics::Api_2016_03_01
  module Models
    #
    # The common properties that are associated with Event Hub data sources.
    #
    class EventHubDataSourceProperties < ServiceBusDataSourceProperties

      include MsRestAzure

      # @return [String] The name of the Event Hub. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :event_hub_name


      #
      # Mapper for EventHubDataSourceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventHubDataSourceProperties',
          type: {
            name: 'Composite',
            class_name: 'EventHubDataSourceProperties',
            model_properties: {
              service_bus_namespace: {
                required: false,
                serialized_name: 'serviceBusNamespace',
                type: {
                  name: 'String'
                }
              },
              shared_access_policy_name: {
                required: false,
                serialized_name: 'sharedAccessPolicyName',
                type: {
                  name: 'String'
                }
              },
              shared_access_policy_key: {
                required: false,
                serialized_name: 'sharedAccessPolicyKey',
                type: {
                  name: 'String'
                }
              },
              event_hub_name: {
                required: false,
                serialized_name: 'eventHubName',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
