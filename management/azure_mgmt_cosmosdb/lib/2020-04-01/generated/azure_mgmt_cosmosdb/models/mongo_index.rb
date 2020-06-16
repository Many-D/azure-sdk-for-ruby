# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_04_01
  module Models
    #
    # Cosmos DB MongoDB collection index key
    #
    class MongoIndex

      include MsRestAzure

      # @return [MongoIndexKeys] Cosmos DB MongoDB collection index keys
      attr_accessor :key

      # @return [MongoIndexOptions] Cosmos DB MongoDB collection index key
      # options
      attr_accessor :options


      #
      # Mapper for MongoIndex class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MongoIndex',
          type: {
            name: 'Composite',
            class_name: 'MongoIndex',
            model_properties: {
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key',
                type: {
                  name: 'Composite',
                  class_name: 'MongoIndexKeys'
                }
              },
              options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'options',
                type: {
                  name: 'Composite',
                  class_name: 'MongoIndexOptions'
                }
              }
            }
          }
        }
      end
    end
  end
end
