# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::EventHub
  module Models
    #
    # Parameters supplied to the CreateOrUpdate EventHub operation.
    #
    class EventHubCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] Location of the resource.
      attr_accessor :location

      # @return [String] ARM type of the namespace.
      attr_accessor :type

      # @return [String] Name of the Event Hub.
      attr_accessor :name

      # @return [EventHubProperties]
      attr_accessor :properties


      #
      # Mapper for EventHubCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventHubCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'EventHubCreateOrUpdateParameters',
            model_properties: {
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'EventHubProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
