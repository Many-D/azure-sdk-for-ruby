# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Base class for operation result info.
    #
    class OperationResultInfoBase

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["OperationResultInfo"] = "OperationResultInfo"
      @@discriminatorMap["ExportJobsOperationResultInfo"] = "ExportJobsOperationResultInfo"

      def initialize
        @objectType = "OperationResultInfoBase"
      end

      attr_accessor :objectType


      #
      # Mapper for OperationResultInfoBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationResultInfoBase',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'objectType',
            uber_parent: 'OperationResultInfoBase',
            class_name: 'OperationResultInfoBase',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
