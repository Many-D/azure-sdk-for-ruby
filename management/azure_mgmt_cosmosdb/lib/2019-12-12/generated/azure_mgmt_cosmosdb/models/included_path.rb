# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_12_12
  module Models
    #
    # The paths that are included in indexing
    #
    class IncludedPath

      include MsRestAzure

      # @return [String] The path for which the indexing behavior applies to.
      # Index paths typically start with root and end with wildcard (/path/*)
      attr_accessor :path

      # @return [Array<Indexes>] List of indexes for this path
      attr_accessor :indexes


      #
      # Mapper for IncludedPath class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IncludedPath',
          type: {
            name: 'Composite',
            class_name: 'IncludedPath',
            model_properties: {
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              indexes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'indexes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IndexesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Indexes'
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
