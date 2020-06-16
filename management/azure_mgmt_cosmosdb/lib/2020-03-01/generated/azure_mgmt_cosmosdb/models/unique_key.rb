# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_03_01
  module Models
    #
    # The unique key on that enforces uniqueness constraint on documents in the
    # collection in the Azure Cosmos DB service.
    #
    class UniqueKey

      include MsRestAzure

      # @return [Array<String>] List of paths must be unique for each document
      # in the Azure Cosmos DB service
      attr_accessor :paths


      #
      # Mapper for UniqueKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UniqueKey',
          type: {
            name: 'Composite',
            class_name: 'UniqueKey',
            model_properties: {
              paths: {
                client_side_validation: true,
                required: false,
                serialized_name: 'paths',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
