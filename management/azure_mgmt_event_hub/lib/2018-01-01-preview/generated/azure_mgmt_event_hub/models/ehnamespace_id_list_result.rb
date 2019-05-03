# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2018_01_01_preview
  module Models
    #
    # The response of the List Namespace IDs operation
    #
    class EHNamespaceIdListResult

      include MsRestAzure

      # @return [Array<EHNamespaceIdContainer>] Result of the List Namespace
      # IDs operation
      attr_accessor :value


      #
      # Mapper for EHNamespaceIdListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EHNamespaceIdListResult',
          type: {
            name: 'Composite',
            class_name: 'EHNamespaceIdListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EHNamespaceIdContainerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EHNamespaceIdContainer'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
