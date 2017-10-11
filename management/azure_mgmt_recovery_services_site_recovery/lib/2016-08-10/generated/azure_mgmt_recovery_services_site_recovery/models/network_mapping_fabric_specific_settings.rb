# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Network Mapping fabric specific settings.
    #
    class NetworkMappingFabricSpecificSettings

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureToAzure"] = "AzureToAzureNetworkMappingSettings"
      @@discriminatorMap["VmmToAzure"] = "VmmToAzureNetworkMappingSettings"
      @@discriminatorMap["VmmToVmm"] = "VmmToVmmNetworkMappingSettings"

      def initialize
        @instanceType = "NetworkMappingFabricSpecificSettings"
      end

      attr_accessor :instanceType


      #
      # Mapper for NetworkMappingFabricSpecificSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NetworkMappingFabricSpecificSettings',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'NetworkMappingFabricSpecificSettings',
            class_name: 'NetworkMappingFabricSpecificSettings',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
