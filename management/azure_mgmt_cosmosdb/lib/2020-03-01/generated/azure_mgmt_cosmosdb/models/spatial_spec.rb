# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_03_01
  module Models
    #
    # Model object.
    #
    #
    class SpatialSpec

      include MsRestAzure

      # @return [String] The path for which the indexing behavior applies to.
      # Index paths typically start with root and end with wildcard (/path/*)
      attr_accessor :path

      # @return [Array<SpatialType>] List of path's spatial type
      attr_accessor :types


      #
      # Mapper for SpatialSpec class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SpatialSpec',
          type: {
            name: 'Composite',
            class_name: 'SpatialSpec',
            model_properties: {
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'types',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SpatialTypeElementType',
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
