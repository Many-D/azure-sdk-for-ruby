# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_04_01
  module Models
    #
    # The List operation response, that contains the Gremlin databases and
    # their properties.
    #
    class GremlinDatabaseListResult

      include MsRestAzure

      # @return [Array<GremlinDatabaseGetResults>] List of Gremlin databases
      # and their properties.
      attr_accessor :value


      #
      # Mapper for GremlinDatabaseListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GremlinDatabaseListResult',
          type: {
            name: 'Composite',
            class_name: 'GremlinDatabaseListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GremlinDatabaseGetResultsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GremlinDatabaseGetResults'
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
