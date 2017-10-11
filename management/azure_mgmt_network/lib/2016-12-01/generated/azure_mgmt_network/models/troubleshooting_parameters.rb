# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_12_01
  module Models
    #
    # Parameters that define the resource to troubleshoot.
    #
    class TroubleshootingParameters

      include MsRestAzure

      # @return [String] The target resource to troubleshoot.
      attr_accessor :target_resource_id

      # @return [String] The ID for the storage account to save the
      # troubleshoot result.
      attr_accessor :storage_id

      # @return [String] The path to the blob to save the troubleshoot result
      # in.
      attr_accessor :storage_path


      #
      # Mapper for TroubleshootingParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TroubleshootingParameters',
          type: {
            name: 'Composite',
            class_name: 'TroubleshootingParameters',
            model_properties: {
              target_resource_id: {
                required: true,
                serialized_name: 'targetResourceId',
                type: {
                  name: 'String'
                }
              },
              storage_id: {
                required: true,
                serialized_name: 'properties.storageId',
                type: {
                  name: 'String'
                }
              },
              storage_path: {
                required: true,
                serialized_name: 'properties.storagePath',
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
