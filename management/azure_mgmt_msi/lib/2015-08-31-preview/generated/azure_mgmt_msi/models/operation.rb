# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview
  module Models
    #
    # Microsoft.ManagedIdentity Operation.

    # Operation supported by the Microsoft.ManagedIdentity REST API.
    #
    class Operation

      include MsRestAzure

      # @return [String] Operation Name. The name of the REST Operation. This
      # is of the format {provider}/{resource}/{operation}.
      attr_accessor :name

      # @return [OperationDisplay] Operation Display. The object that describes
      # the operation.
      attr_accessor :display


      #
      # Mapper for Operation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Operation',
          type: {
            name: 'Composite',
            class_name: 'Operation',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                client_side_validation: true,
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'OperationDisplay'
                }
              }
            }
          }
        }
      end
    end
  end
end
