# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_03_01
  module Models
    #
    # The connection strings for the given database account.
    #
    class DatabaseAccountListConnectionStringsResult

      include MsRestAzure

      # @return [Array<DatabaseAccountConnectionString>] An array that contains
      # the connection strings for the Cosmos DB account.
      attr_accessor :connection_strings


      #
      # Mapper for DatabaseAccountListConnectionStringsResult class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseAccountListConnectionStringsResult',
          type: {
            name: 'Composite',
            class_name: 'DatabaseAccountListConnectionStringsResult',
            model_properties: {
              connection_strings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectionStrings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DatabaseAccountConnectionStringElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DatabaseAccountConnectionString'
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
