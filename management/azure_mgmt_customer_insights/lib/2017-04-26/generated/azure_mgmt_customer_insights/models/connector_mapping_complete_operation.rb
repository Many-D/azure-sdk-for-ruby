# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_04_26
  module Models
    #
    # The complete operation.
    #
    class ConnectorMappingCompleteOperation

      include MsRestAzure

      # @return [CompletionOperationTypes] The type of completion operation.
      # Possible values include: 'DoNothing', 'DeleteFile', 'MoveFile'
      attr_accessor :completion_operation_type

      # @return [String] The destination folder where files will be moved to
      # once the import is done.
      attr_accessor :destination_folder


      #
      # Mapper for ConnectorMappingCompleteOperation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectorMappingCompleteOperation',
          type: {
            name: 'Composite',
            class_name: 'ConnectorMappingCompleteOperation',
            model_properties: {
              completion_operation_type: {
                required: false,
                serialized_name: 'completionOperationType',
                type: {
                  name: 'Enum',
                  module: 'CompletionOperationTypes'
                }
              },
              destination_folder: {
                required: false,
                serialized_name: 'destinationFolder',
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
