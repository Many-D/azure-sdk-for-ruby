# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Reverse replication input.
    #
    class ReverseReplicationInput

      include MsRestAzure

      # @return [ReverseReplicationInputProperties] Reverse replication
      # properties
      attr_accessor :properties


      #
      # Mapper for ReverseReplicationInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ReverseReplicationInput',
          type: {
            name: 'Composite',
            class_name: 'ReverseReplicationInput',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'ReverseReplicationInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
